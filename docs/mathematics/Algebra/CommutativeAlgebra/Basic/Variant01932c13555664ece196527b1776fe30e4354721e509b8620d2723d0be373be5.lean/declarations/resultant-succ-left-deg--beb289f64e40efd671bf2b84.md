# resultant_succ_left_deg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38877f46-28ed-4119-d07f-f57002976cd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc8d584a-b7a5-7b16-cb41-45829814b55d",
  "kind": "lemma",
  "lexical_name": "resultant_succ_left_deg",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "resultant-succ-left-deg--beb289f64e40efd671bf2b84",
  "source": {
    "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 295,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beb289f64e40efd671bf2b8475108d8ff33378e673ce3dd3c8c726d1a0588720",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc8d584a-b7a5-7b16-cb41-45829814b55d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma resultant_succ_left_deg (hf : f.natDegree ≤ m) :
    resultant f g (m + 1) n = (-1) ^ n * g.coeff n * resultant f g m n := by
  obtain _ | n := n
  · simp [pow_succ']
  rw [resultant, Matrix.det_succ_row (i := .last _),
      Finset.sum_eq_single (by exact ((Fin.last m).castAdd (n + 1))) _ (by simp)]
  · rw [resultant, ← Matrix.det_reindex_self (finCongr (show (m + 1).add n = m + (n + 1) by grind))]
    simp only [Nat.add_eq, Nat.succ_eq_add_one, Fin.val_last, Fin.val_castAdd, Fin.succAbove_last,
      Matrix.reindex_apply, finCongr_symm, Matrix.submatrix_submatrix]
    congr 2
    · trans (-1) ^ (2 * m + (n + 1))
      · congr 1; lia
      · simp [pow_add]
    · simp only [sylvester, Set.mem_Icc, Matrix.of_apply, Fin.val_last, Fin.addCases_left]
      rw [ite_eq_left (by lia)]
      simp [add_assoc, add_comm 1]
    · ext i j
      simp only [sylvester, Set.mem_Icc, Matrix.submatrix_apply, Function.comp_apply,
        finCongr_apply, Matrix.of_apply, Fin.val_castSucc, Fin.val_cast]
      induction j using Fin.addCases with
      | left j =>
        have : ((Fin.last m).castAdd (n + 1)).succAbove ((j.castAdd (n + 1)).cast (by grind)) =
          j.castSucc.castAdd (n + 1) := by ext; simp [Fin.succAbove, Fin.lt_def]
        simp [this]
      | right j =>
        have : ((Fin.last m).castAdd (n + 1)).succAbove ((j.natAdd m).cast (by grind)) =
          j.natAdd _ := by ext; simp [Fin.succAbove, Fin.lt_def, add_right_comm]
        simp only [ite_and, this, Fin.addCases_right]
        split_ifs with h₁ h₂ h₃ h₃ <;> try lia
        exact coeff_eq_zero_of_natDegree_lt (by lia)
  · rintro (b : Fin ((m + 1) + (n + 1))) - hb
    suffices f.sylvester g (m + 1) (n + 1) (.last (m + 1 + n)) b = 0 by simp [this]
    induction b using Fin.addCases with
    | left b =>
      simp only [Nat.add_eq, Nat.succ_eq_add_one, ne_eq, Fin.ext_iff, Fin.val_castAdd,
        Fin.val_last] at hb
      simp only [sylvester, Set.mem_Icc, Matrix.of_apply, Fin.val_last, Fin.addCases_left,
        ite_eq_right_iff, and_imp]
      intros
      lia
    | right i => simpa [sylvester] using fun _ _ ↦ coeff_eq_zero_of_natDegree_lt (by lia)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af96ec828f2fbad992039b9ff6e5febc791c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
