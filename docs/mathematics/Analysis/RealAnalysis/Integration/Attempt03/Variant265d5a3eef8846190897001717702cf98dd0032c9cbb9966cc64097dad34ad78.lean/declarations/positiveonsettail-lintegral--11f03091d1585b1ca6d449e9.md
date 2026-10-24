# positiveOnsetTail_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c94ee152-7288-a087-2dd7-462435083de5",
  "kind": "theorem",
  "lexical_name": "positiveOnsetTail_lintegral",
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
  "slug": "positiveonsettail-lintegral--11f03091d1585b1ca6d449e9",
  "source": {
    "blob": "a24adc6181012c5a3b882c298f8c66708b42cb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f03091d1585b1ca6d449e9da8bea88de16212e0b78eea3b84f3405169edd7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c94ee152-7288-a087-2dd7-462435083de5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveOnsetTail_lintegral :
    (∫⁻ t : ℝ, ENNReal.ofReal (positiveOnsetTail t)) = ENNReal.ofReal properPowerB1 := by
  calc
    _ = ∫⁻ t : ℝ, ∑' pk : Nat.Primes×ℕ,
        ENNReal.ofReal (positiveOnsetAtom pk.1 pk.2 t) := by
      apply lintegral_congr
      intro t
      exact ENNReal.ofReal_tsum_of_nonneg
        (fun pk => positiveOnsetAtom_nonneg pk.1 pk.2 t) (positiveOnsetTail_summable t)
    _ = ∑' pk : Nat.Primes×ℕ, ∫⁻ t : ℝ,
        ENNReal.ofReal (positiveOnsetAtom pk.1 pk.2 t) :=
      lintegral_tsum (fun pk => (positiveOnsetAtom_measurable pk.1 pk.2).ennreal_ofReal.aemeasurable)
    _ = ∑' pk : Nat.Primes×ℕ, ENNReal.ofReal (primeMomentAtom 1 pk.1 pk.2) := by
      apply tsum_congr
      intro pk
      rw [← ofReal_integral_eq_lintegral_ofReal (positiveOnsetAtom_integrable pk.1 pk.2)
        (Eventually.of_forall (positiveOnsetAtom_nonneg pk.1 pk.2)),positiveOnsetAtom_integral]
    _ = ENNReal.ofReal properPowerB1 := by
      rw [← ENNReal.ofReal_tsum_of_nonneg
        (fun pk : Nat.Primes×ℕ => momentAtom_nonneg 1 pk.1.val pk.2) (primeMomentAtom_summable 1),
        ← properPowerMoment_eq_joint_sum]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24adc6181012c5a3b882c298f8c66708b42cb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
