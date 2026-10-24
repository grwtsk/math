# greenEnergy_le_of_prefix_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c607b6d-1622-f1a7-1529-f052afed4330",
  "kind": "theorem",
  "lexical_name": "greenEnergy_le_of_prefix_bound",
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
  "slug": "greenenergy-le-of-prefix-bound--9de7a18f443fd7dddacbe722",
  "source": {
    "blob": "7a07ba4dac6de74a96ee2f64ee3561122e7c41e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de7a18f443fd7dddacbe7229815c824b7e7ad8021da83a3b55d73ff6e522428",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c607b6d-1622-f1a7-1529-f052afed4330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenEnergy_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    greenEnergy X ≤ ((4 * A + 4) / (X : ℝ))^2 := by
  unfold greenEnergy
  have hpoint : ∀ t ∈ Set.Icc (0 : ℝ) 1,
      (cumulative X t - center X)^2 ≤
        ((4 * A + 4) / (X : ℝ))^2 := by
    intro t ht
    have habs := abs_greenResidual_le_of_prefix_bound
      hX ht.1 ht.2 hA
    nlinarith [sq_abs (cumulative X t - center X)]
  calc
    _ ≤ ∫ _t in Set.Icc (0 : ℝ) 1,
        ((4 * A + 4) / (X : ℝ))^2 := by
      exact integral_mono_ae
        (by positivity)
        (Filter.Eventually.of_forall (fun t => by
          by_cases ht : t ∈ Set.Icc (0 : ℝ) 1
          · exact hpoint t ht
          · simp [ht]))
    _ = ((4 * A + 4) / (X : ℝ))^2 := by
      simp

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a07ba4dac6de74a96ee2f64ee3561122e7c41e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
