# expectationNumerator_eq_projection_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cb29320-c9f1-48ae-ba24-c255976d7d4f",
  "kind": "theorem",
  "lexical_name": "expectationNumerator_eq_projection_zero",
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
  "slug": "expectationnumerator-eq-projection-zero--1cd8abe3feddf416a70949c7",
  "source": {
    "blob": "39514dcafb5d2813e22094f733fbbe1b118f3ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 257,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cd8abe3feddf416a70949c7f15e7e9a65c67ca33d770ced3eb676a0ed9d9474",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cb29320-c9f1-48ae-ba24-c255976d7d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expectationNumerator_eq_projection_zero {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.expectationNumerator f =
      WalshFourier.projectionNumerator f
        (WalshFourier.zeroFrequency n) := by
  unfold WalshFourier.expectationNumerator
    WalshFourier.projectionNumerator WalshFourier.innerProduct
    WalshFourier.characterFunction
  apply ListTools.sumInt_map_congr
  intro x
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39514dcafb5d2813e22094f733fbbe1b118f3ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
