# centeredBeta_interval_eq_discrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0175448d-962e-6460-a85f-db0e937e049b",
  "kind": "theorem",
  "lexical_name": "centeredBeta_interval_eq_discrepancy",
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
  "slug": "centeredbeta-interval-eq-discrepancy--799c8563135d763fae70b5a1",
  "source": {
    "blob": "6a5b6bf1acf71aab6b954df80405b5e5dc661820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:799c8563135d763fae70b5a154fb945d29344c5ccfa334abbe7949dd842b3217",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0175448d-962e-6460-a85f-db0e937e049b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredBeta_interval_eq_discrepancy (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L)
    (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d := by
  have hc : (∑ n ∈ Finset.Ioc L H, (1 : ℝ)) = (H : ℝ)-(L : ℝ) := by
    simpa using multiples_interval_sum L H 1 hLH
  have ha : (∑ n ∈ Finset.Ioc L H, alpha U) = alpha U * ((H : ℝ)-(L : ℝ)) := by
    rw [← hc, Finset.mul_sum]
    simp
  simp only [centeredBeta, Finset.sum_add_distrib]
  rw [ha, beta_interval_eq_mean_discrepancy U L H hU hUL hLH]
  ring

/-- Elementary unit floor-error bound, independent of any weighted covariance estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a5b6bf1acf71aab6b954df80405b5e5dc661820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
