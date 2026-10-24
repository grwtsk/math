# exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f35805b-07b6-7e14-d5d2-f23957717eab",
  "kind": "theorem",
  "lexical_name": "exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self",
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
  "slug": "exists-mem-cutmap-mul-self-of-lt-inducedmap-mul-self--dd50f3abfe1071950bb1e489",
  "source": {
    "blob": "23c9f80a6cc53ef2243a1b103a73413a7f6e05d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 278,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd50f3abfe1071950bb1e489c173d0c57bc854d5c2785a264757ef54b3481735",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f35805b-07b6-7e14-d5d2-f23957717eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self (ha : 0 < a) (b : β)
    (hba : b < inducedMap α β a * inducedMap α β a) : ∃ c ∈ cutMap β (a * a), b < c := by
  obtain hb | hb := lt_or_le b 0
  · refine ⟨0, ?_, hb⟩
    rw [← Rat.cast_zero, coe_mem_cutMap_iff, Rat.cast_zero]
    exact mul_self_pos.2 ha.ne'
  obtain ⟨q, hq, hbq, hqa⟩ := exists_rat_pow_btwn two_ne_zero hba (hb.trans_lt hba)
  rw [← cast_pow] at hbq
  refine ⟨(q ^ 2 : ℚ), coe_mem_cutMap_iff.2 ?_, hbq⟩
  rw [pow_two] at hqa ⊢
  push_cast
  obtain ⟨q', hq', hqa'⟩ := lt_inducedMap_iff.1 (lt_of_mul_self_lt_mul_self
    (inducedMap_nonneg ha.le) hqa)
  exact mul_self_lt_mul_self (by exact_mod_cast hq.le) (hqa'.trans' <| by assumption_mod_cast)
#align linear_ordered_field.exists_mem_cut_map_mul_self_of_lt_induced_map_mul_self LinearOrderedField.exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self

variable (α β)

/-- `inducedMap` as an additive homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c9f80a6cc53ef2243a1b103a73413a7f6e05d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
