# integral_Iic_sub_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7059a108-d41b-8e61-1c6d-9d9c50bb2150",
  "kind": "theorem",
  "lexical_name": "integral_Iic_sub_Iic",
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
  "slug": "integral-iic-sub-iic--4cc7d56ad99bb187c14a7c48",
  "source": {
    "blob": "160793feb553315fd52e83dfb3607576ea7abd4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 977,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantc67e9a159fb6b0f3808ff1ce0b3447a6d1783b211502d6662154b196dcc937cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cc7d56ad99bb187c14a7c488752310f6e1aa928ec310325ae884ef3c94a7074",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantc67e9a159fb6b0f3808ff1ce0b3447a6d1783b211502d6662154b196dcc937cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7059a108-d41b-8e61-1c6d-9d9c50bb2150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 977–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_Iic_sub_Iic (ha : IntegrableOn f (Iic a) μ) (hb : IntegrableOn f (Iic b) μ) :
    ((∫ x in Iic b, f x ∂μ) - ∫ x in Iic a, f x ∂μ) = ∫ x in a..b, f x ∂μ := by
  wlog hab : a ≤ b generalizing a b
  · rw [integral_symm, ← this hb ha (le_of_not_le hab), neg_sub]
  rw [sub_eq_iff_eq_add', integral_of_le hab, ← setIntegral_union (Iic_disjoint_Ioc le_rfl),
    Iic_union_Ioc_eq_Iic hab]
  exacts [measurableSet_Ioc, ha, hb.mono_set fun _ => And.right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantc67e9a159fb6b0f3808ff1ce0b3447a6d1783b211502d6662154b196dcc937cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantc67e9a159fb6b0f3808ff1ce0b3447a6d1783b211502d6662154b196dcc937cd.lean#L977).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `160793feb553315fd52e83dfb3607576ea7abd4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
