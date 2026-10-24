# quarticHermite_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bf51303-7c52-bc3c-ba0a-459b39270484",
  "kind": "theorem",
  "lexical_name": "quarticHermite_eq",
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
  "slug": "quartichermite-eq--80aec82514b719ae1a86e946",
  "source": {
    "blob": "eec0902b9103c08d96cdc684af02bad71bdd1e3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80aec82514b719ae1a86e9467a0e7664c2025d99ffcc58348466a0135c26e571",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bf51303-7c52-bc3c-ba0a-459b39270484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarticHermite_eq (b c : ℝ) :
    quarticHermite b c =
      !![4, 0, 2*b, 0;
        0, 2*b, 0, 2*b^2-4*c;
        2*b, 0, 2*b^2-4*c, 0;
        0, 2*b^2-4*c, 0, 2*b^3-6*b*c] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [quarticHermite, quarticCompanion, Matrix.trace, Matrix.mul_apply,
      Fin.sum_univ_succ, pow_succ] <;> ring

/-- A verified square decomposition, with the discriminant coefficient exposed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eec0902b9103c08d96cdc684af02bad71bdd1e3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
