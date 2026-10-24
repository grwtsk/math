# haarScalarFactor_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dff41377-6fe6-209e-8006-d3a81340a892",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9259fc6e-6cf7-a910-947d-5977065477ed",
  "kind": "lemma",
  "lexical_name": "haarScalarFactor_self",
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
  "slug": "haarscalarfactor-self--faec848259e4b2433a209a18",
  "source": {
    "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 347,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faec848259e4b2433a209a18ab2607872b2c57d7726644bdf18a8e2c2ed42bba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9259fc6e-6cf7-a910-947d-5977065477ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma haarScalarFactor_self (μ : Measure G) [IsHaarMeasure μ] :
    haarScalarFactor μ μ = 1 := by
  by_cases hG : LocallyCompactSpace G; swap
  · simp [haarScalarFactor, hG]
  obtain ⟨⟨g, g_cont⟩, g_comp, g_nonneg, g_one⟩ :
    ∃ g : C(G, ℝ), HasCompactSupport g ∧ 0 ≤ g ∧ g 1 ≠ 0 := exists_continuous_nonneg_pos 1
  have int_g_ne_zero : ∫ x, g x ∂μ ≠ 0 :=
    ne_of_gt (g_cont.integral_pos_of_hasCompactSupport_nonneg_nonzero g_comp g_nonneg g_one)
  apply NNReal.coe_injective
  calc
    haarScalarFactor μ μ = (∫ x, g x ∂μ) / ∫ x, g x ∂μ :=
      haarScalarFactor_eq_integral_div _ _ g_cont g_comp int_g_ne_zero
    _ = 1 := div_self int_g_ne_zero

@[to_additive addHaarScalarFactor_eq_mul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
