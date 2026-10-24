# map_le_lineMap_iff_slope_le_slope_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e33f5c3-3f2c-5ae0-1f3b-7c6eb8ab3727",
  "kind": "theorem",
  "lexical_name": "map_le_lineMap_iff_slope_le_slope_right",
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
  "slug": "map-le-linemap-iff-slope-le-slope-right--5d512a5764062e7c3cf71e2e",
  "source": {
    "blob": "7ae9be6d754a619ef4015705b1987b47ccfe8cb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 266,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ordered/Variant826e61269321fe00527cb096d4df30251ce131e6c8b74a595c5bc97b1038a3d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d512a5764062e7c3cf71e2e296451f3b93e7d45e5ed23fef5c8225c67496c0b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ordered/Variant826e61269321fe00527cb096d4df30251ce131e6c8b74a595c5bc97b1038a3d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e33f5c3-3f2c-5ae0-1f3b-7c6eb8ab3727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_le_lineMap_iff_slope_le_slope_right (h : 0 < (1 - r) * (b - a)) :
    f c ≤ lineMap (f a) (f b) r ↔ slope f a b ≤ slope f c b := by
  rw [← lineMap_apply_one_sub, ← lineMap_apply_one_sub _ _ r]
  revert h; generalize 1 - r = r'; clear! r; intro h
  simp_rw [lineMap_apply, slope, vsub_eq_sub, vadd_eq_add, smul_eq_mul]
  rw [sub_add_eq_sub_sub_swap, sub_self, zero_sub, neg_mul_eq_mul_neg, neg_sub,
    le_inv_smul_iff_of_pos h, smul_smul, mul_inv_cancel_right₀, le_sub_comm, ← neg_sub (f b),
    smul_neg, neg_add_eq_sub]
  · exact right_ne_zero_of_mul h.ne'

/-- Given `c = lineMap a b r`, `c < b`, the point `(c, f c)` is non-strictly above the
segment `[(a, f a), (b, f b)]` if and only if `slope f c b ≤ slope f a b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ordered/Variant826e61269321fe00527cb096d4df30251ce131e6c8b74a595c5bc97b1038a3d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ordered/Variant826e61269321fe00527cb096d4df30251ce131e6c8b74a595c5bc97b1038a3d1.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae9be6d754a619ef4015705b1987b47ccfe8cb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
