# span_repr_eq_range_applyₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49d19f9f5cf468e57cd08601fec23e8288816c1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc508b52-eb98-49c2-e312-0ce97cb29bb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34edc4b4-b4ce-cb1a-18b7-68ce5dff610e",
  "kind": "theorem",
  "lexical_name": "span_repr_eq_range_applyₗ",
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
  "slug": "span-repr-eq-range-apply--487141c1805971af8971ddd5",
  "source": {
    "blob": "49d19f9f5cf468e57cd08601fec23e8288816c1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:487141c1805971af8971ddd5db9766373e2674b88c6a8caa254e610aa137fa02",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34edc4b4-b4ce-cb1a-18b7-68ce5dff610e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_repr_eq_range_applyₗ {ι : Type*} (b : Basis ι R M) (v : M) :
    Ideal.span (Set.range (b.repr v)) = LinearMap.range (LinearMap.applyₗ v) := by
  refine le_antisymm (Ideal.span_le.mpr ?_) ?_
  · rintro _ ⟨i, rfl⟩
    exact ⟨b.coord i, rfl⟩
  · rintro _ ⟨f, rfl⟩
    simp only [LinearMap.applyₗ_apply_apply, ← congr_arg f (b.linearCombination_repr v),
      Finsupp.linearCombination_apply, map_finsuppSum, map_smul, smul_eq_mul]
    exact Submodule.finsuppSum_mem R _ _ _ fun i _ ↦
      Ideal.mul_mem_right _ _ Ideal.mem_span_range_self

/-- Coordinate characterisation of unimodularity in the free case: given a basis `b`, the
coordinates of `v` generate the unit ideal iff `v` is unimodular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d19f9f5cf468e57cd08601fec23e8288816c1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
