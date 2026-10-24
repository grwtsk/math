# det_ne_zero_of_independent_columns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeef8e1f-7275-ee64-b9e0-b7657a5ab0b8",
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
  "slug": "det-ne-zero-of-independent-columns--675b2c30e618cf619f4b3860",
  "source": {
    "blob": "adf3edbd6fd3f1bdd6ef017d7b952795ca9a265b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:675b2c30e618cf619f4b386046d89e766e016655ef61ec415ffb7f383a1bdf71",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeef8e1f-7275-ee64-b9e0-b7657a5ab0b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–46.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adf3edbd6fd3f1bdd6ef017d7b952795ca9a265b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
