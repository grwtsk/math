# residualPrimeSquareCoeff_twenty_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7256a7a-f4f1-8a51-5aab-9a1434129dd4",
  "kind": "theorem",
  "lexical_name": "residualPrimeSquareCoeff_twenty_five",
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
  "slug": "residualprimesquarecoeff-twenty-five--fdc7efd8e3d7b1e79564fcc1",
  "source": {
    "blob": "ac2fd8b1576607026201be6fcb2fbd630cf6fa9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 252,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaResidualCoefficient/Variant9692e5189fb52e7ad26a5d4fdf332da49b4993f5c317d479ed652bc5c5632e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc7efd8e3d7b1e79564fcc190203cb33a0d84dcf78dc0a31c393eee665bd144",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaResidualCoefficient/Variant9692e5189fb52e7ad26a5d4fdf332da49b4993f5c317d479ed652bc5c5632e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7256a7a-f4f1-8a51-5aab-9a1434129dd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residualPrimeSquareCoeff_twenty_five :
    residualPrimeSquareCoeff 25 = Real.log 5 := by
  rw [residualPrimeSquareCoeff, residualPrimeSquareInventory_twenty_five,
    Finset.sum_singleton]
  rw [ArithmeticFunction.vonMangoldt_apply_prime (by decide : Nat.Prime 5)]
  norm_num

/-- The first product is positive, so the improved onset is attained exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaResidualCoefficient/Variant9692e5189fb52e7ad26a5d4fdf332da49b4993f5c317d479ed652bc5c5632e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaResidualCoefficient/Variant9692e5189fb52e7ad26a5d4fdf332da49b4993f5c317d479ed652bc5c5632e5d.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac2fd8b1576607026201be6fcb2fbd630cf6fa9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
