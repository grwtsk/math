# blimsup_thickening_mul_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c99739beb2be7817e5c6856f1179b913e699bc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc998bfd-5be6-fc4f-076c-999226a7cba2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b390575-d18e-0ef4-814a-0de10c4b6075",
  "kind": "theorem",
  "lexical_name": "blimsup_thickening_mul_ae_eq",
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
  "slug": "blimsup-thickening-mul-ae-eq--b60f733ec4124c8c071ccb9c",
  "source": {
    "blob": "6c99739beb2be7817e5c6856f1179b913e699bc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b60f733ec4124c8c071ccb9ca256e46be944e27ff0eaeacdafc441d9b9c349ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b390575-d18e-0ef4-814a-0de10c4b6075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blimsup_thickening_mul_ae_eq (p : ℕ → Prop) (s : ℕ → Set α) {M : ℝ} (hM : 0 < M) (r : ℕ → ℝ)
    (hr : Tendsto r atTop (𝓝 0)) :
    (blimsup (fun i => thickening (M * r i) (s i)) atTop p : Set α) =ᵐ[μ]
      (blimsup (fun i => thickening (r i) (s i)) atTop p : Set α) := by
  let q : ℕ → Prop := fun i => p i ∧ 0 < r i
  have h₁ : blimsup (fun i => thickening (r i) (s i)) atTop p =
      blimsup (fun i => thickening (r i) (s i)) atTop q := by
    refine blimsup_congr' (Eventually.of_forall fun i h => ?_)
    replace hi : 0 < r i := by contrapose! h; apply thickening_of_nonpos h
    simp only [q, hi, iff_self_and, imp_true_iff]
  have h₂ : blimsup (fun i => thickening (M * r i) (s i)) atTop p =
      blimsup (fun i => thickening (M * r i) (s i)) atTop q := by
    refine blimsup_congr' (Eventually.of_forall fun i h ↦ ?_)
    replace h : 0 < r i := by
      rw [← mul_pos_iff_of_pos_left hM]; contrapose! h; apply thickening_of_nonpos h
    simp only [q, h, iff_self_and, imp_true_iff]
  rw [h₁, h₂]
  exact blimsup_thickening_mul_ae_eq_aux μ q s hM r hr (Eventually.of_forall fun i hi => hi.2)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c99739beb2be7817e5c6856f1179b913e699bc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
