# wholeCubicMainTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2221cc694c6c2d3b1c1f9219e9a88e30d5d575821a0c9f6355863c60165d261a",
  "kind": "def",
  "lexical_name": "wholeCubicMainTerm",
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
  "slug": "wholecubicmainterm--a5c6e030972e4853233a5eff",
  "source": {
    "blob": "5369ebb03a9609c30086e0147eb8d2f52f34e12d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5c6e030972e4853233a5eff1e12d615f46c5fd1c01d0a200a08d8f746ab83e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2221cc694c6c2d3b1c1f9219e9a88e30d5d575821a0c9f6355863c60165d261a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wholeCubicMainTerm (A k : ℝ) : ℝ :=
  1 / Real.sqrt k *
    (fullPositiveKappa 1 * sourceCorrelation explicitSecondDerivative A (Real.log k) +
      fullPositiveKappa 2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) +
      fullPositiveKappa 3 / 2 *
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) +
      fullPositiveKappa 4 / 6 *
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5369ebb03a9609c30086e0147eb8d2f52f34e12d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
