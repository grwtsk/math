# canonicalFourFamilyOtherShiftDivisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f4077e796afe4fa65ff5202de74ed7802259e340914edfc3ecd3b4543d1b673",
  "kind": "def",
  "lexical_name": "canonicalFourFamilyOtherShiftDivisor",
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
  "slug": "canonicalfourfamilyothershiftdivisor--0a8f6eb26dcaf9d3266c6f51",
  "source": {
    "blob": "f71dbe475e99bce6b8ea8c633f320b118d69b6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 259,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a8f6eb26dcaf9d3266c6f5113f645fb263199d64d31e376c9cb9e43ef28775b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f4077e796afe4fa65ff5202de74ed7802259e340914edfc3ecd3b4543d1b673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalFourFamilyOtherShiftDivisor
    (X n : ℕ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ anchoredDyadicSourceIndices X ∧
        0 < (anchoredMobiusPair p.1).h then
      (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) *
        anchoredAuthenticOtherShiftDefect (2 * X) p.1
          (canonicalFourFamilyShiftSet (2 * X) (canonicalFourFamilyOfAnchor p.1))
    else 0

set_option linter.unusedVariables false in
/-- Exactly correct the finite matrix on its TRUE arithmetic data.
No absolute values or independent Cauchy bounds are introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71dbe475e99bce6b8ea8c633f320b118d69b6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
