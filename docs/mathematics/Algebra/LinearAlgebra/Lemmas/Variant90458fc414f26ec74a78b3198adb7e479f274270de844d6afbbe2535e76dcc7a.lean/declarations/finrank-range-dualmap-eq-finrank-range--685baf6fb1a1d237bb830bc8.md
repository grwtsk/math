# finrank_range_dualMap_eq_finrank_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e612587d-5935-453c-f1e2-aaf9628f31d1",
  "kind": "theorem",
  "lexical_name": "finrank_range_dualMap_eq_finrank_range",
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
  "slug": "finrank-range-dualmap-eq-finrank-range--685baf6fb1a1d237bb830bc8",
  "source": {
    "blob": "8aa2c24ddd90e87628e34d8f74d6ed1f8bcf3cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 954,
    "line": 945,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:685baf6fb1a1d237bb830bc8c50952aff21c198d71a991aafc0e71f14b9ce998",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e612587d-5935-453c-f1e2-aaf9628f31d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 945–954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_range_dualMap_eq_finrank_range (f : V₁ →ₗ[K] V₂) :
    finrank K (LinearMap.range f.dualMap) = finrank K (LinearMap.range f) := by
  rw [congr_arg dualMap (show f = (range f).subtype.comp f.rangeRestrict by rfl),
    ← dualMap_comp_dualMap, range_comp,
    range_eq_top.mpr (dualMap_surjective_of_injective (range f).injective_subtype),
    Submodule.map_top, finrank_range_of_inj, Subspace.dual_finrank_eq]
  exact dualMap_injective_of_surjective (range_eq_top.mp f.range_rangeRestrict)

/-- `f.dualMap` is injective if and only if `f` is surjective -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean#L945).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa2c24ddd90e87628e34d8f74d6ed1f8bcf3cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
