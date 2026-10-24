# actualFixedCenteredRieszLaplace_positive_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2556b9f7-ebea-3823-a681-333eba80f70b",
  "kind": "theorem",
  "lexical_name": "actualFixedCenteredRieszLaplace_positive_norm_le",
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
  "slug": "actualfixedcenteredrieszlaplace-positive-norm-le--8d8f4df662563ab1c7d8a2b5",
  "source": {
    "blob": "df0ddce18d1d4567bdd8b3bc836bb84ba6587fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 306,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d8f4df662563ab1c7d8a2b5e7417df374e6cdc42f90fda74d2b0a264cefdc10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2556b9f7-ebea-3823-a681-333eba80f70b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFixedCenteredRieszLaplace_positive_norm_le {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {z : ℂ} (hz : 0 < z.re) :
    ‖actualFixedCenteredRieszLaplace z‖ ≤ actualRieszQuadraticLaplaceBudget M R z.re :=
  (norm_integral_le_integral_norm _).trans
    (actualFixedCenteredRieszLaplace_absolute_budget hM hR harea hz)

end FormalResearch.RiemannHypothesis.SourceActualRieszQuadraticLaplace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0ddce18d1d4567bdd8b3bc836bb84ba6587fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
