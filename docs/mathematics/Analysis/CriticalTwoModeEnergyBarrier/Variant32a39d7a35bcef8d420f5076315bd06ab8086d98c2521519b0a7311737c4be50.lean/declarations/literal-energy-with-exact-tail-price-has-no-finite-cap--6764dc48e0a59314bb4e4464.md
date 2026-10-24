# literal_energy_with_exact_tail_price_has_no_finite_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da2ef2c9-9e55-7f1b-3045-33cdfbb596ff",
  "kind": "theorem",
  "lexical_name": "literal_energy_with_exact_tail_price_has_no_finite_cap",
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
  "slug": "literal-energy-with-exact-tail-price-has-no-finite-cap--6764dc48e0a59314bb4e4464",
  "source": {
    "blob": "51b44a93ddba2d97e6b5b57d702b9de2ccb33089",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/Analysis/CriticalTwoModeEnergyBarrier/Variant32a39d7a35bcef8d420f5076315bd06ab8086d98c2521519b0a7311737c4be50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6764dc48e0a59314bb4e446477cbdacf9ec4d57ada0f64cfb5caf51157c3d786",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeEnergyBarrier/Variant32a39d7a35bcef8d420f5076315bd06ab8086d98c2521519b0a7311737c4be50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da2ef2c9-9e55-7f1b-3045-33cdfbb596ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_energy_with_exact_tail_price_has_no_finite_cap {α t₀ p : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (hp : 1 < p) (E : ℝ → ℝ)
    (hE : ∀ T : ℝ, 1 ≤ T → t₀ ≤ T → nativeTailPrice α t₀ p T ≤ E T) :
    ¬ ∃ B R : ℝ, ∀ T : ℝ, R ≤ T → E T ≤ B := by
  rintro ⟨B,R,hcap⟩
  have hlarge := (literal_energy_with_exact_tail_price_diverges hα ht₀ hp E hE).eventually
    (eventually_gt_atTop B)
  obtain ⟨S,hS⟩ := eventually_atTop.mp hlarge
  exact (not_lt_of_ge (hcap (max S R) (le_max_right _ _)))
    (hS (max S R) (le_max_left _ _))

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeEnergyBarrier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeEnergyBarrier/Variant32a39d7a35bcef8d420f5076315bd06ab8086d98c2521519b0a7311737c4be50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeEnergyBarrier/Variant32a39d7a35bcef8d420f5076315bd06ab8086d98c2521519b0a7311737c4be50.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b44a93ddba2d97e6b5b57d702b9de2ccb33089` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
