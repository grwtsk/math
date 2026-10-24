# IntegralDeterminantApplicability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d797b0205483887e09d1f23cc89e9cbee10f2c8c271d1d856f77dad95ebf95e",
  "kind": "structure",
  "lexical_name": "IntegralDeterminantApplicability",
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
  "slug": "integraldeterminantapplicability--7b648dbb86ab3c7a7fac95bd",
  "source": {
    "blob": "7d34aae4cdf56d1a55a99b4808780c762ec8661c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b648dbb86ab3c7a7fac95bd30be2af4be6c47c3a10a247bfd8ae8b20aead8d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d797b0205483887e09d1f23cc89e9cbee10f2c8c271d1d856f77dad95ebf95e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntegralDeterminantApplicability
    {X : Type uV} [Fintype X] [DecidableEq X]
    (matrix : BitMatrix.Algebra.InvolutionProjection X) where
  coefficientContext : DAF.Comparison.CoefficientContext
  coefficient_is_integral :
    coefficientContext = DAF.Comparison.CoefficientContext.integral
  expectedDeterminant : ℤ
  determinant_eq : matrix.integralMatrix.det = expectedDeterminant
  determinant_unit : expectedDeterminant = 1 ∨ expectedDeterminant = -1
  interpretation : IntegralDeterminantInterpretation
  appliesTo : String

/--
One globally located terrain move backed by a certified finite involution and
an explicit arithmetic source change.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d34aae4cdf56d1a55a99b4808780c762ec8661c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
