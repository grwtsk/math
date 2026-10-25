# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variant6245ed0a0bce8742d5e21d178b522ede9bb09ff03c1eadb43532541dbd51b2eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dc9c9000735524a2d2c95920c54268207c066ed` · SHA-256 `227315dc8b6b3318cd946f4ff728d0557f0e029bbc54e5a490355412626d2c40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant569cff2b4a9a88d3b3094a8ba868af73246667ccfcbee306634b3b41a5962f6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"569cff2b4a9a88d3b3094a8ba868af73246667ccfcbee306634b3b41a5962f6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attr.Variant569cff2b4a9a88d3b3094a8ba868af73246667ccfcbee306634b3b41a5962f6f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"569cff2b4a9a88d3b3094a8ba868af73246667ccfcbee306634b3b41a5962f6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Attr
public import Lean.Meta.Tactic.Grind.MarkAccessible
public import Lean.Meta.Tactic.Grind.Types
public import Lean.Meta.Tactic.Grind.Util
public import Lean.Meta.Tactic.Grind.Cases
public import Lean.Meta.Tactic.Grind.Injection
public import Lean.Meta.Tactic.Grind.Core
public import Lean.Meta.Tactic.Grind.MarkNestedSubsingletons
public import Lean.Meta.Tactic.Grind.Inv
public import Lean.Meta.Tactic.Grind.Proof
public import Lean.Meta.Tactic.Grind.Propagate
public import Lean.Meta.Tactic.Grind.BitVec
public import Lean.Meta.Tactic.Grind.PP
public import Lean.Meta.Tactic.Grind.Simp
public import Lean.Meta.Tactic.Grind.Ctor
public import Lean.Meta.Tactic.Grind.Parser
public import Lean.Meta.Tactic.Grind.EMatchTheorem
public import Lean.Meta.Tactic.Grind.EMatch
public import Lean.Meta.Tactic.Grind.Main
public import Lean.Meta.Tactic.Grind.CasesMatch
public import Lean.Meta.Tactic.Grind.Arith
public import Lean.Meta.Tactic.Grind.Ext
public import Lean.Meta.Tactic.Grind.MatchCond
public import Lean.Meta.Tactic.Grind.MatchDiscrOnly
public import Lean.Meta.Tactic.Grind.Diseq
public import Lean.Meta.Tactic.Grind.MBTC
public import Lean.Meta.Tactic.Grind.Lookahead
public import Lean.Meta.Tactic.Grind.LawfulEqCmp
public import Lean.Meta.Tactic.Grind.ReflCmp
public import Lean.Meta.Tactic.Grind.SynthInstance
public import Lean.Meta.Tactic.Grind.AC
public import Lean.Meta.Tactic.Grind.VarRename
public import Lean.Meta.Tactic.Grind.ProofUtil
public import Lean.Meta.Tactic.Grind.PropagateInj
public import Lean.Meta.Tactic.Grind.Order
public import Lean.Meta.Tactic.Grind.Anchor
public import Lean.Meta.Tactic.Grind.Action
public import Lean.Meta.Tactic.Grind.EMatchTheoremParam
public import Lean.Meta.Tactic.Grind.EMatchAction
public import Lean.Meta.Tactic.Grind.Filter
public import Lean.Meta.Tactic.Grind.CollectParams
public import Lean.Meta.Tactic.Grind.Finish
public import Lean.Meta.Tactic.Grind.RegisterCommand

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant569cff2b4a9a88d3b3094a8ba868af73246667ccfcbee306634b3b41a5962f6f

public section
namespace Lean

/-! Trace options for `grind` users -/
builtin_initialize registerTraceClass `grind
builtin_initialize registerTraceClass `grind.trace
builtin_initialize registerTraceClass `grind.assert
builtin_initialize registerTraceClass `grind.eqc
builtin_initialize registerTraceClass `grind.internalize
builtin_initialize registerTraceClass `grind.ematch
builtin_initialize registerTraceClass `grind.ematch.pattern
builtin_initialize registerTraceClass `grind.ematch.instance
builtin_initialize registerTraceClass `grind.ematch.instance.assignment
builtin_initialize registerTraceClass `grind.ematch.instance.delayed
builtin_initialize registerTraceClass `grind.eqResolution
builtin_initialize registerTraceClass `grind.simp
builtin_initialize registerTraceClass `grind.split
builtin_initialize registerTraceClass `grind.split.candidate
builtin_initialize registerTraceClass `grind.split.resolved
builtin_initialize registerTraceClass `grind.beta
builtin_initialize registerTraceClass `grind.mbtc
builtin_initialize registerTraceClass `grind.ext
builtin_initialize registerTraceClass `grind.ext.candidate
builtin_initialize registerTraceClass `grind.lookahead
builtin_initialize registerTraceClass `grind.lookahead.add (inherited := true)
builtin_initialize registerTraceClass `grind.lookahead.try (inherited := true)
builtin_initialize registerTraceClass `grind.lookahead.assert (inherited := true)
builtin_initialize registerTraceClass `grind.ematch.diagnostics.compact

/-! Trace options for `grind` developers -/
builtin_initialize registerTraceClass `grind.debug
builtin_initialize registerTraceClass `grind.debug.proofs
builtin_initialize registerTraceClass `grind.debug.congr
builtin_initialize registerTraceClass `grind.debug.proof
builtin_initialize registerTraceClass `grind.debug.proj
builtin_initialize registerTraceClass `grind.debug.parent
builtin_initialize registerTraceClass `grind.debug.final
builtin_initialize registerTraceClass `grind.debug.forallPropagator
builtin_initialize registerTraceClass `grind.debug.split
builtin_initialize registerTraceClass `grind.debug.canon
builtin_initialize registerTraceClass `grind.debug.theorem.activate
builtin_initialize registerTraceClass `grind.debug.ematch.pattern
builtin_initialize registerTraceClass `grind.debug.beta
builtin_initialize registerTraceClass `grind.debug.internalize
builtin_initialize registerTraceClass `grind.debug.matchCond
builtin_initialize registerTraceClass `grind.debug.matchCond.lambda
builtin_initialize registerTraceClass `grind.debug.matchCond.proveFalse
builtin_initialize registerTraceClass `grind.debug.mbtc
builtin_initialize registerTraceClass `grind.debug.ematch
builtin_initialize registerTraceClass `grind.debug.proveEq
builtin_initialize registerTraceClass `grind.debug.pushNewFact
builtin_initialize registerTraceClass `grind.debug.appMap
builtin_initialize registerTraceClass `grind.debug.ext
builtin_initialize registerTraceClass `grind.debug.suggestions
builtin_initialize registerTraceClass `grind.debug.locals

end Lean
```
