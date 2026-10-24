# functorMap_commSq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8d0f182a0a19da6c6205b3d9ebf7856d1ec41b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7cb1d09-ac98-54e3-ce51-82277b86af2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddb05d18-e6a2-003c-2bd8-b02faa3cb073",
  "kind": "lemma",
  "lexical_name": "functorMap_commSq_aux",
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
  "slug": "functormap-commsq-aux--76007897e8859d380ad2ee4f",
  "source": {
    "blob": "e8d0f182a0a19da6c6205b3d9ebf7856d1ec41b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76007897e8859d380ad2ee4f75634db966dbfb5386e9c99916c5eb9ce6b23be4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb05d18-e6a2-003c-2bd8-b02faa3cb073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functorMap_commSq_aux {n m k : ℕ} (h : n ≤ m) (hh : ¬(k < m)) :
    (Functor.ofOpSequence (functorMap f)).map (homOfLE h).op ≫ Pi.π _ k ≫
      eqToHom (functorObj_eq_neg (by omega : ¬(k < n))) =
        (Pi.π (fun i ↦ if _ : i < m then M i else N i) k) ≫
          eqToHom (functorObj_eq_neg hh) := by
  induction' h using Nat.leRec with m h ih
  · simp
  · specialize ih (by omega)
    have : homOfLE (by omega : n ≤ m + 1) =
        homOfLE (by omega : n ≤ m) ≫ homOfLE (by omega : m ≤ m + 1) := by simp
    rw [this, op_comp, Functor.map_comp]
    slice_lhs 2 4 => rw [ih]
    simp only [Functor.ofOpSequence_obj, homOfLE_leOfHom, Functor.ofOpSequence_map_homOfLE_succ,
      functorMap, dite_eq_ite, limMap_π_assoc, Discrete.functor_obj_eq_as, Discrete.natTrans_app]
    split_ifs
    simp [dif_neg (by omega : ¬(k < m))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d0f182a0a19da6c6205b3d9ebf7856d1ec41b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
