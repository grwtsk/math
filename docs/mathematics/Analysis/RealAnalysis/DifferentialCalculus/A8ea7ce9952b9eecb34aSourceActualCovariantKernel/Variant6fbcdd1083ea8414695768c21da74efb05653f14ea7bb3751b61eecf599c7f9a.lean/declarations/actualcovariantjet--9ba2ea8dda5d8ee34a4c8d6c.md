# actualCovariantJet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83298d6790bb5b1b77527b18e807b095b351077aecdf049e07d9f0c500648657",
  "kind": "def",
  "lexical_name": "actualCovariantJet",
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
  "slug": "actualcovariantjet--9ba2ea8dda5d8ee34a4c8d6c",
  "source": {
    "blob": "67566b7a8c07083f36dab1b3274e2c6b7ce0afe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variant6fbcdd1083ea8414695768c21da74efb05653f14ea7bb3751b61eecf599c7f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ba2ea8dda5d8ee34a4c8d6c7755177d3cb4edae7a7c24521e10a32ee5e9f27c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variant6fbcdd1083ea8414695768c21da74efb05653f14ea7bb3751b61eecf599c7f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83298d6790bb5b1b77527b18e807b095b351077aecdf049e07d9f0c500648657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCovariantJet (A : ℝ) (n : ℕ) (t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) (t + s)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variant6fbcdd1083ea8414695768c21da74efb05653f14ea7bb3751b61eecf599c7f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variant6fbcdd1083ea8414695768c21da74efb05653f14ea7bb3751b61eecf599c7f9a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67566b7a8c07083f36dab1b3274e2c6b7ce0afe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
