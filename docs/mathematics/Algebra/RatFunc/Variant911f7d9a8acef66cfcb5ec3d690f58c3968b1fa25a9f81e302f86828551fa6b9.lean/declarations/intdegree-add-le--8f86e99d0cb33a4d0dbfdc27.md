# intDegree_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24341472-5a09-34b7-fb42-52cb135a330e",
  "kind": "theorem",
  "lexical_name": "intDegree_add_le",
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
  "slug": "intdegree-add-le--8f86e99d0cb33a4d0dbfdc27",
  "source": {
    "blob": "8d13c6afd04fada6eb5221b3c4e8041d1403e570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1673,
    "line": 1651,
    "path": "GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f86e99d0cb33a4d0dbfdc27466d87a41c7719668b0085a1a9a49853882e0e4a",
  "verification": {
    "reference": "docs/verification/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24341472-5a09-34b7-fb42-52cb135a330e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1651–1673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intDegree_add_le {x y : RatFunc K} (hy : y ≠ 0) (hxy : x + y ≠ 0) :
    intDegree (x + y) ≤ max (intDegree x) (intDegree y) := by
  by_cases hx : x = 0
  · simp [hx] at hxy
    simp [hx, hxy]
  rw [intDegree_add hxy, ←
    natDegree_num_mul_right_sub_natDegree_denom_mul_left_eq_intDegree hx y.denom_ne_zero,
    mul_comm y.denom, ←
    natDegree_num_mul_right_sub_natDegree_denom_mul_left_eq_intDegree hy x.denom_ne_zero,
    le_max_iff, sub_le_sub_iff_right, Int.ofNat_le, sub_le_sub_iff_right, Int.ofNat_le, ←
    le_max_iff, mul_comm y.num]
  exact natDegree_add_le _ _
#align ratfunc.int_degree_add_le RatFunc.intDegree_add_le

end IntDegree

section LaurentSeries

open PowerSeries LaurentSeries HahnSeries

variable {F : Type u} [Field F] (p q : F[X]) (f g : RatFunc F)

/-- The coercion `RatFunc F → LaurentSeries F` as bundled alg hom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean#L1651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d13c6afd04fada6eb5221b3c4e8041d1403e570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
