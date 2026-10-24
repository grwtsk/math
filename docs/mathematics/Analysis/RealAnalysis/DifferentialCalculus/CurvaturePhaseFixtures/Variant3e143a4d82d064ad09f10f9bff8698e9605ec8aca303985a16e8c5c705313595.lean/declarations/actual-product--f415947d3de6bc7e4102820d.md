# actual_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bfe43f7-e4fb-98aa-b160-43fb9efeca76",
  "kind": "theorem",
  "lexical_name": "actual_product",
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
  "slug": "actual-product--f415947d3de6bc7e4102820d",
  "source": {
    "blob": "a40ee220d55a5242a19dee9635da0c9426e50b21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CurvaturePhaseFixtures/Variant3e143a4d82d064ad09f10f9bff8698e9605ec8aca303985a16e8c5c705313595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f415947d3de6bc7e4102820de6e1ddc2aeae8ba6da4c0c3f1fc2e80b01abed52",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CurvaturePhaseFixtures/Variant3e143a4d82d064ad09f10f9bff8698e9605ec8aca303985a16e8c5c705313595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bfe43f7-e4fb-98aa-b160-43fb9efeca76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_product {A u : ℝ} (hA : 0 < A) :
    deriv (deriv (criticalPrimeTest A)) u = Real.exp (u / 2) *
      (SourcePairing.sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) u +
        deriv (deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A)) u) :=
  criticalPrimeTest_second_deriv_eq_correlation hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CurvaturePhaseFixtures/Variant3e143a4d82d064ad09f10f9bff8698e9605ec8aca303985a16e8c5c705313595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CurvaturePhaseFixtures/Variant3e143a4d82d064ad09f10f9bff8698e9605ec8aca303985a16e8c5c705313595.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40ee220d55a5242a19dee9635da0c9426e50b21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
