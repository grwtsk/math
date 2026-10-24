# conductorThreeTheta_eq_residueDifference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0adc1dbd-fa81-3602-2990-f43fe992ccc1",
  "kind": "theorem",
  "lexical_name": "conductorThreeTheta_eq_residueDifference",
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
  "slug": "conductorthreetheta-eq-residuedifference--23247a7590dd0279151b3a8c",
  "source": {
    "blob": "303de9690965476f743375042031b28375645ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 241,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23247a7590dd0279151b3a8c140505404a3f35074ea6e4c106b986b646f3cab4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0adc1dbd-fa81-3602-2990-f43fe992ccc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeTheta_eq_residueDifference (x : ℕ) :
    conductorThreeTheta x =
      residueOneThetaSix x - residueFiveThetaSix x -
        (if 2 ≤ x then Real.log 2 else 0) := by
  unfold conductorThreeTheta
  calc
    (∑ p ∈ Nat.primesLE x,
        (conductorThreeIntegerValue p : ℝ) * Real.log p) =
      ∑ p ∈ Nat.primesLE x,
        ((if IsResidueOnePrime p then Real.log p else 0) -
          (if IsResidueFivePrime p then Real.log p else 0) -
          (if p = 2 then Real.log p else 0)) := by
      apply Finset.sum_congr rfl
      intro p hpMem
      exact weighted_prime_decomposition (Nat.prime_of_mem_primesLE hpMem)
    _ = residueOneThetaSix x - residueFiveThetaSix x -
        (∑ p ∈ Nat.primesLE x,
          if p = 2 then Real.log p else 0) := by
      simp only [residueOneThetaSix, residueFiveThetaSix,
        Finset.sum_sub_distrib]
    _ = _ := by
      rw [primeTwo_log_sum]

/-! ## Removing the higher prime powers -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `303de9690965476f743375042031b28375645ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
