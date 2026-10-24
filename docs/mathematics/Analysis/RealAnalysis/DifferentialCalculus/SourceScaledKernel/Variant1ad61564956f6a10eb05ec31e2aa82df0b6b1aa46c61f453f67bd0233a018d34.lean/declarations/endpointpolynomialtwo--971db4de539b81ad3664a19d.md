# endpointPolynomialTwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5b6b342ce90a66ff0269faec543cf70d9e77a59ea53ea8448b6e534acb91d9f",
  "kind": "def",
  "lexical_name": "endpointPolynomialTwo",
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
  "slug": "endpointpolynomialtwo--971db4de539b81ad3664a19d",
  "source": {
    "blob": "bb0b7ef84b33409cc223654932e967b0cf502fe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:971db4de539b81ad3664a19dee907425a5335a5642bb2674cbaae805944bb479",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5b6b342ce90a66ff0269faec543cf70d9e77a59ea53ea8448b6e534acb91d9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointPolynomialTwo (s : ℝ) : ℝ :=
    (6144 / 5 : ℝ) +
    (-4096 / 1 : ℝ) * s ^ 1 +
    (38912 / 7 : ℝ) * s ^ 2 +
    (-28416 / 7 : ℝ) * s ^ 3 +
    (36992 / 21 : ℝ) * s ^ 4 +
    (-1408 / 3 : ℝ) * s ^ 5 +
    (832 / 11 : ℝ) * s ^ 6 +
    (-224 / 33 : ℝ) * s ^ 7 +
    (112 / 429 : ℝ) * s ^ 8

/-- All three endpoint residuals have their exact nonzero rational leading coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb0b7ef84b33409cc223654932e967b0cf502fe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
