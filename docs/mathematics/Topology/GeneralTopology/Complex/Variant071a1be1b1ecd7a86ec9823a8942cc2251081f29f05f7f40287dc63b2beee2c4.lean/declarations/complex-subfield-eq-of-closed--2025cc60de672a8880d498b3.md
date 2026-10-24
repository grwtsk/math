# Complex.subfield_eq_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01a34171b55081bfd0a21ac3439cf704b610db40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2a76df7-3de9-6f4c-cae8-403308ab0591",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6a753fb-dbe8-2d00-7aa4-cd9af0c35fde",
  "kind": "theorem",
  "lexical_name": "Complex.subfield_eq_of_closed",
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
  "slug": "complex-subfield-eq-of-closed--2025cc60de672a8880d498b3",
  "source": {
    "blob": "01a34171b55081bfd0a21ac3439cf704b610db40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2025cc60de672a8880d498b3895acf6f870c615b46672aa49185c89badabfe16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6a753fb-dbe8-2d00-7aa4-cd9af0c35fde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.subfield_eq_of_closed {K : Subfield ℂ} (hc : IsClosed (K : Set ℂ)) :
    K = ofRealHom.fieldRange ∨ K = ⊤ := by
  suffices range (ofReal : ℝ → ℂ) ⊆ K by
    rw [range_subset_iff, ← coe_algebraMap] at this
    have :=
      (Subalgebra.isSimpleOrder_of_finrank finrank_real_complex).eq_bot_or_eq_top
        (Subfield.toIntermediateField K this).toSubalgebra
    simp_rw [← SetLike.coe_set_eq, IntermediateField.coe_toSubalgebra] at this ⊢
    exact this
  suffices range (ofReal : ℝ → ℂ) ⊆ closure (Set.range ((ofReal : ℝ → ℂ) ∘ ((↑) : ℚ → ℝ))) by
    refine subset_trans this ?_
    rw [← IsClosed.closure_eq hc]
    apply closure_mono
    rintro _ ⟨_, rfl⟩
    simp only [Function.comp_apply, ofReal_ratCast, SetLike.mem_coe, SubfieldClass.ratCast_mem]
  nth_rw 1 [range_comp]
  refine subset_trans ?_ (image_closure_subset_closure_image continuous_ofReal)
  rw [DenseRange.closure_range Rat.isDenseEmbedding_coe_real.dense]
  simp only [image_univ]
  rfl

/-- Let `K` a subfield of `ℂ` and let `ψ : K →+* ℂ` a ring homomorphism. Assume that `ψ` is uniform
continuous, then `ψ` is either the inclusion map or the composition of the inclusion map with the
complex conjugation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a34171b55081bfd0a21ac3439cf704b610db40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
