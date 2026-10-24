# twoSourceGram_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97e21576-63d2-e9ab-77c1-aa8efe5450e1",
  "kind": "theorem",
  "lexical_name": "twoSourceGram_residual",
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
  "slug": "twosourcegram-residual--7744ff1c0dc4f5492de4e22e",
  "source": {
    "blob": "5127da06105e6326b0860bfc2825aefc008ea8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7744ff1c0dc4f5492de4e22e5a77bbb5ca4e5fefd2fded225418609939e19b94",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97e21576-63d2-e9ab-77c1-aa8efe5450e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoSourceGram_residual :
    twoSourceGram - actualSourceSharpGap • (1 : Matrix Two Two ℂ) =
      complexSourceFactorᴴ * complexSourceFactor := by
  ext i j
  cases i <;> cases j <;> rename_i i j <;> fin_cases i <;> fin_cases j
  all_goals
    simp [twoSourceGram_eq_block, actualSourceCross, actualSourceSharpGap,
      complexSourceFactor, Matrix.mul_apply, Matrix.fromBlocks, Complex.real_smul,
      ← Complex.ofReal_mul, Real.mul_self_sqrt actualSourceCoupling_pos.le]

/-- Conjugate Gram positivity gives the same bound on every complex coefficient vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5127da06105e6326b0860bfc2825aefc008ea8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
