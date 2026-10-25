# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargerAsTactic.Varianta31d2639ce3d8fcf966fe0dc665a6f82653d19805e6ffc17864866ca3160b34f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `824cb9e878cc3c7568792cac019cf9ac08dcc839` · SHA-256 `3acafc8c740288dd1e6a336a9de926534f3449e5d2f43f33200a3f5390dcd970`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WrapSimpDischarger.Variante9364a9d6f138d1f27faa48b484415aa1d3fc7890390d7af52bb20e941d9c983","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9364a9d6f138d1f27faa48b484415aa1d3fc7890390d7af52bb20e941d9c983","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.WrapSimpDischarger.Variante9364a9d6f138d1f27faa48b484415aa1d3fc7890390d7af52bb20e941d9c983","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e9364a9d6f138d1f27faa48b484415aa1d3fc7890390d7af52bb20e941d9c983","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Util/DischargerAsTactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
module

public import Mathlib.Init
public import Batteries.Tactic.Exact
public import Lean.Meta.Tactic.Simp

/-!
# Dischargers for `simp` to tactics

This file defines a wrapper for `Simp.Discharger`s as regular tactics, that allows them to be
used via the tactic frontend of `simp` via `simp (discharger := wrapSimpDischarger my_discharger)`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WrapSimpDischarger.Variante9364a9d6f138d1f27faa48b484415aa1d3fc7890390d7af52bb20e941d9c983

public meta section

open Lean Meta Elab Tactic

/-- Wrap a simp discharger (a function `Expr → SimpM (Option Expr)`) as a tactic,
so that it can be passed as an argument to `simp (discharger := foo)`.
This is inverse to `mkDischargeWrapper`. -/
def wrapSimpDischarger (dis : Simp.Discharge) : TacticM Unit := do
  let eS : Lean.Meta.Simp.State := {}
  let eC : Lean.Meta.Simp.Context ← Simp.mkContext {}
  let eM : Lean.Meta.Simp.Methods := {}
  let (some a, _) ← liftM <| StateRefT'.run (ReaderT.run (ReaderT.run (dis <| ← getMainTarget)
    eM.toMethodsRef) eC) eS | failure
  (← getMainGoal).assignIfDefEq a
```
