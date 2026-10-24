# complexPrimitiveDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe3a8e6932581b9177e7582466ef4e640b1e623e02d9294e122640ba7b5d88f3",
  "kind": "def",
  "lexical_name": "complexPrimitiveDerivative",
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
  "slug": "complexprimitivederivative--43e668dd187c4da8906f2b72",
  "source": {
    "blob": "7be58b36f8c061f1491e2493e95b60f8afcbd9a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43e668dd187c4da8906f2b72179a6b73958a91908180b1a8f50dc407aa301f69",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe3a8e6932581b9177e7582466ef4e640b1e623e02d9294e122640ba7b5d88f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def complexPrimitiveDerivative (A : ℝ) (z : ℂ) (x : ℝ) : ℂ :=
    ((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8))) * 1 * (x : ℂ) ^ 0 +
    ((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7))) * 2 * (x : ℂ) ^ 1 +
    ((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6))) * 3 * (x : ℂ) ^ 2 +
    ((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5))) * 4 * (x : ℂ) ^ 3 +
    ((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4))) * 5 * (x : ℂ) ^ 4 +
    ((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3))) * 6 * (x : ℂ) ^ 5 +
    ((-8 / ((A : ℂ) ^ 8 * z ^ 2))) * 7 * (x : ℂ) ^ 6 +
    ((1 / ((A : ℂ) ^ 8 * z ^ 1))) * 8 * (x : ℂ) ^ 7

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7be58b36f8c061f1491e2493e95b60f8afcbd9a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
