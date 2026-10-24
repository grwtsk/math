# actualPsiComplexMellin_mul_eq_neg_zeta_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7921be7-0487-eaf4-2c25-7a61f68ff607",
  "kind": "theorem",
  "lexical_name": "actualPsiComplexMellin_mul_eq_neg_zeta_deriv",
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
  "slug": "actualpsicomplexmellin-mul-eq-neg-zeta-deriv--e9a02efa5d270742edb3835f",
  "source": {
    "blob": "9d667dbdb108d94582cd08445f3ecafd38eb8b9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a02efa5d270742edb3835f24e401f3b849765c93615b3295de9d08cbeae0e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7921be7-0487-eaf4-2c25-7a61f68ff607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiComplexMellin_mul_eq_neg_zeta_deriv {s : ℂ} (hs : 1 < s.re) :
    s * actualPsiComplexMellin s = -deriv riemannZeta s / riemannZeta s := by
  rw [actualPsiComplexMellin_mul_eq_LSeries hs]
  exact ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs

end
end FormalResearch.RiemannHypothesis.SourceActualPsiComplexMellin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d667dbdb108d94582cd08445f3ecafd38eb8b9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
