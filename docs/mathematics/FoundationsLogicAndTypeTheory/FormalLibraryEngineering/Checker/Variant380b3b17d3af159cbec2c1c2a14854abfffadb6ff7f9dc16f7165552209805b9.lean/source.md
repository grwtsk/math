# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Checker.Variant380b3b17d3af159cbec2c1c2a14854abfffadb6ff7f9dc16f7165552209805b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f03ccf95aa0e56466aecc8f26281c1712c294c62` · SHA-256 `bd61bed814a378557e3e98205986a48f6c2c6a3bf2db7d239113a661c20a3d0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variant60f639df2cef44af474e85887857fd9ececac652cbfd8eed493ce08a72e9693d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60f639df2cef44af474e85887857fd9ececac652cbfd8eed493ce08a72e9693d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Check.Variant60f639df2cef44af474e85887857fd9ececac652cbfd8eed493ce08a72e9693d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"60f639df2cef44af474e85887857fd9ececac652cbfd8eed493ce08a72e9693d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Checker.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.Convert
public import Std.Tactic.BVDecide.LRAT.Internal.LRATCheckerSound
public import Std.Tactic.BVDecide.LRAT.Internal.CompactLRATChecker
import Std.Tactic.BVDecide.LRAT.Internal.CompactLRATCheckerSound


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variant60f639df2cef44af474e85887857fd9ececac652cbfd8eed493ce08a72e9693d

@[expose] public section

/-!
This module contains the implementation of the LRAT checker as well as a proof that the given
CNF is unsat if the checker succeeds.
-/

open Std.Sat

namespace Std.Tactic.BVDecide
namespace LRAT

open Std.Tactic.BVDecide.LRAT.Internal
/--
Check whether `lratProof` is a valid LRAT certificate for the unsatisfiability of `cnf`.
-/
def check (lratProof : Array IntAction) (cnf : CNF Nat) : Bool :=
  let internalFormula := CNF.convertLRAT cnf
  let checkerResult := compactLratChecker internalFormula lratProof
  checkerResult = .success

open Std.Tactic.BVDecide.LRAT.Internal in
/--
If the `check` functions succeeds on `lratProof` and `cnf` then the `cnf` is unsatisfiable.
-/
theorem check_sound (lratProof : Array IntAction) (cnf : CNF Nat) :
    check lratProof cnf → cnf.Unsat := by
  intro h1
  apply CNF.unsat_of_convertLRAT_unsat
  unfold check at h1
  simp at h1
  apply compactLratChecker_sound (proof := lratProof)
  · apply CNF.convertLRAT_readyForRupAdd
  · apply CNF.convertLRAT_readyForRatAdd
  · assumption

end LRAT
end Std.Tactic.BVDecide
```
