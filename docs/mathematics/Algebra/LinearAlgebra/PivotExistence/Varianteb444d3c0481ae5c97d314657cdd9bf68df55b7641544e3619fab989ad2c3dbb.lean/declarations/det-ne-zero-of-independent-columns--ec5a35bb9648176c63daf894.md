# det_ne_zero_of_independent_columns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7455b7eb-4124-0468-19b1-d0d07bdaf55e",
  "kind": "theorem",
  "lexical_name": "det_ne_zero_of_independent_columns",
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
  "slug": "det-ne-zero-of-independent-columns--ec5a35bb9648176c63daf894",
  "source": {
    "blob": "6aace9f2684c1bf4f57419d9827903cd23c67c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec5a35bb9648176c63daf89413b252db58db5fc8e7aafbe224055d4778a6f872",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7455b7eb-4124-0468-19b1-d0d07bdaf55e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_ne_zero_of_independent_columns (M : Matrix (Fin k) (Fin k) ℝ)
    (hM : LinearIndependent ℝ M.col) : Matrix.det M ≠ 0 := by
  have hi : Function.Injective M.transpose.vecMul := by
    apply Matrix.vecMul_injective_iff.mpr
    exact hM
  intro hz
  have hzt : Matrix.det M.transpose = 0 := by
    simpa only [Matrix.det_transpose] using hz
  obtain ⟨v, hv, hzero⟩ :=
    (Matrix.exists_vecMul_eq_zero_iff (M := M.transpose)).mpr hzt
  apply hv
  apply hi
  exact hzero.trans (Matrix.zero_vecMul M.transpose).symm

/-- Repeated column selections have zero determinant, including all rank-deficient cases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aace9f2684c1bf4f57419d9827903cd23c67c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
