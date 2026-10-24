# actual_shifted_plus_quarter_pairing_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a01b1d2-2614-e379-1109-74f21191a672",
  "kind": "theorem",
  "lexical_name": "actual_shifted_plus_quarter_pairing_neg",
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
  "slug": "actual-shifted-plus-quarter-pairing-neg--615fc3e597991fdc8b85ed28",
  "source": {
    "blob": "7510c241007f0d14ac7a0ad27e6c9fb14b2dbaf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variante39a2110ec5872380586be8fc6f66abd805cd3dd812b044e7f38ae5fc9228d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615fc3e597991fdc8b85ed283313f00f276fd3b56236a04f4cf5c5c418e3f959",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variante39a2110ec5872380586be8fc6f66abd805cd3dd812b044e7f38ae5fc9228d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a01b1d2-2614-e379-1109-74f21191a672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_shifted_plus_quarter_pairing_neg :
    (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative 10) x *
      deriv (normalizedTest explicitSecondDerivative 10) (x - 19)) +
    (∫ x : ℝ, normalizedTest explicitSecondDerivative 10 x *
      normalizedTest explicitSecondDerivative 10 (x - 19)) / 4 < 0 := by
  have h := actual_mixed_kernel_ten_nineteen_neg
  rw [sourceCorrelation_second_deriv_eq_integral (by norm_num : 0 < (10 : ℝ))] at h
  simpa only [neg_neg, sourceCorrelation] using h

/-- A universal source mixed-atom positivity premise is contradicted by this actual lag. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variante39a2110ec5872380586be8fc6f66abd805cd3dd812b044e7f38ae5fc9228d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variante39a2110ec5872380586be8fc6f66abd805cd3dd812b044e7f38ae5fc9228d82.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7510c241007f0d14ac7a0ad27e6c9fb14b2dbaf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
