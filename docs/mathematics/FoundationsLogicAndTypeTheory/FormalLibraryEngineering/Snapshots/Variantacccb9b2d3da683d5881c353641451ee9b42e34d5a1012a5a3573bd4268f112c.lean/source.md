# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Snapshots.Variantacccb9b2d3da683d5881c353641451ee9b42e34d5a1012a5a3573bd4268f112c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3b0fe5a8b3cb5d3b6d3f8eb9025f97515f741d3` · SHA-256 `acccb9b2d3da683d5881c353641451ee9b42e34d5a1012a5a3573bd4268f112c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Wojciech Nawrocki. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Wojciech Nawrocki
-/
module

prelude

public import Lean.Elab.Import
public import Lean.Elab.Command

public import Lean.Widget.InteractiveDiagnostic

public section

/-! One can think of this module as being a partial reimplementation
of Lean.Elab.Frontend which also stores a snapshot of the world after
each command. Importantly, we allow (re)starting compilation from any
snapshot/position in the file for interactive editing purposes. -/

namespace Lean.Server.Snapshots

open Elab

/-- What Lean knows about the world after the header and each command. -/
structure Snapshot where
  stx : Syntax
  mpState : Parser.ModuleParserState
  cmdState : Command.State

namespace Snapshot

def endPos (s : Snapshot) : String.Pos.Raw :=
  s.mpState.pos

def env (s : Snapshot) : Environment :=
  s.cmdState.env

def msgLog (s : Snapshot) : MessageLog :=
  s.cmdState.messages

def infoTree (s : Snapshot) : InfoTree :=
  -- TODO: we should not block here!
  let infoState := s.cmdState.infoState.substituteLazy.get
  -- the parser returns exactly one command per snapshot, and the elaborator creates exactly one node per command
  assert! infoState.trees.size == 1
  infoState.trees[0]!

def isAtEnd (s : Snapshot) : Bool :=
  Parser.isTerminalCommand s.stx

open Command in
/-- Use the command state in the given snapshot to run a `CommandElabM`.-/
def runCommandElabM (snap : Snapshot) (doc : DocumentMeta) (c : CommandElabM α) : EIO Exception α := do
  let ctx : Command.Context := {
    cmdPos := snap.stx.getPos? |>.getD 0,
    fileName := doc.uri,
    fileMap := doc.text,
    snap? := none
    cancelTk? := none
  }
  c.run ctx |>.run' snap.cmdState

/-- Run a `CoreM` computation using the data in the given snapshot.-/
def runCoreM (snap : Snapshot) (doc : DocumentMeta) (c : CoreM α) : EIO Exception α :=
  snap.runCommandElabM doc <| Command.liftCoreM c

/-- Run a `TermElabM` computation using the data in the given snapshot.-/
def runTermElabM (snap : Snapshot) (doc : DocumentMeta) (c : TermElabM α) : EIO Exception α :=
  snap.runCommandElabM doc <| Command.liftTermElabM c

end Snapshot

end Lean.Server.Snapshots
```
