# realSourceGram_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0254ee0-17d3-c4e7-b033-bdff163801d1",
  "kind": "theorem",
  "lexical_name": "realSourceGram_residual",
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
  "slug": "realsourcegram-residual--670035ee4a9c64f3b8431595",
  "source": {
    "blob": "8bbcd6a90ee4163fe19e21c4c25af389785817b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantca4ce52c8b3d698e1ad3c7e22886c40f3e9111331e4300fc35f5aa4e8ac0c82c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:670035ee4a9c64f3b84315952ee9e49e0df264b0a0232b08ff1e1dad0e02480f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantca4ce52c8b3d698e1ad3c7e22886c40f3e9111331e4300fc35f5aa4e8ac0c82c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0254ee0-17d3-c4e7-b033-bdff163801d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realSourceGram_residual :
    realSourceGram - actualSourceSharpGap • (1 : Matrix Two Two ℝ) =
      realSourceFactor.transpose * realSourceFactor := by
  ext i j
  cases i <;> cases j <;> rename_i i j <;> fin_cases i <;> fin_cases j
  all_goals
    simp [realSourceGram, twoSourceGram_eq_block, actualSourceCross,
      actualSourceSharpGap, realSourceFactor, Matrix.mul_apply, Matrix.fromBlocks,
      smul_eq_mul, Real.mul_self_sqrt actualSourceCoupling_pos.le]

/-- The actual homogeneous quadratic target has no additional constraints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantca4ce52c8b3d698e1ad3c7e22886c40f3e9111331e4300fc35f5aa4e8ac0c82c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantca4ce52c8b3d698e1ad3c7e22886c40f3e9111331e4300fc35f5aa4e8ac0c82c.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbcd6a90ee4163fe19e21c4c25af389785817b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
