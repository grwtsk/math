# _root_.MonoidHom.exists_nhds_isBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0196db245a689af1ea0980815b816b17bfcbd643",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7505cdc-8dd3-9dac-9694-c468a94b8dc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:381f16bb-0467-1881-8725-2d14ce02ac94",
  "kind": "lemma",
  "lexical_name": "_root_.MonoidHom.exists_nhds_isBounded",
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
  "slug": "root-monoidhom-exists-nhds-isbounded--54c29b9af7b0b8f728eb4ea8",
  "source": {
    "blob": "0196db245a689af1ea0980815b816b17bfcbd643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c29b9af7b0b8f728eb4ea889f035a1b4f30b5301ebd810efcf43371acf864a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:381f16bb-0467-1881-8725-2d14ce02ac94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.MonoidHom.exists_nhds_isBounded (f : G →* H) (hf : Measurable f) (x : G) :
    ∃ s ∈ 𝓝 x, IsBounded (f '' s) := by
  let K : PositiveCompacts G := Classical.arbitrary _
  obtain ⟨n, hn⟩ : ∃ n : ℕ, 0 < haar (interior K ∩ f ⁻¹' ball 1 n) := by
    by_contra!
    simp_rw [nonpos_iff_eq_zero, ← measure_iUnion_null_iff, ← inter_iUnion, ← preimage_iUnion,
      iUnion_ball_nat, preimage_univ, inter_univ] at this
    exact this.not_gt <| isOpen_interior.measure_pos _ K.interior_nonempty
  rw [← one_mul x, ← op_smul_eq_mul]
  refine ⟨_, smul_mem_nhds_smul _ <| div_mem_nhds_one_of_haar_pos_ne_top haar _
    (isOpen_interior.measurableSet.inter <| hf measurableSet_ball) hn <|
      mt (measure_mono_top <| inter_subset_left.trans interior_subset) K.isCompact.measure_ne_top,
    ?_⟩
  have : Bornology.IsBounded (f '' (interior K ∩ f ⁻¹' ball 1 n)) :=
    isBounded_ball.subset <| (image_mono inter_subset_right).trans <| image_preimage_subset _ _
  rw [image_op_smul_distrib, image_div]
  exact (this.div this).smul _

end SeminormedGroup

/-- A Borel-measurable group hom from a locally compact normed group to a real normed space is
continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0196db245a689af1ea0980815b816b17bfcbd643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
