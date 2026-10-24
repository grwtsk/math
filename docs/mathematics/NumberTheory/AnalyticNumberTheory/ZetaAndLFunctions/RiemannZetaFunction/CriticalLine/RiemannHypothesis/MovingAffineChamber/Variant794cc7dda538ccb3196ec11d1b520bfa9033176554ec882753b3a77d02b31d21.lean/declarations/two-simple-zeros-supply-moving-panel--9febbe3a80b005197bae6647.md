# two_simple_zeros_supply_moving_panel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b63fa78a-b62a-afa0-b86f-3b92dfff4c1f",
  "kind": "theorem",
  "lexical_name": "two_simple_zeros_supply_moving_panel",
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
  "slug": "two-simple-zeros-supply-moving-panel--9febbe3a80b005197bae6647",
  "source": {
    "blob": "13ffa211927c4d09c2728e3b4f13d81b186cec8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variant794cc7dda538ccb3196ec11d1b520bfa9033176554ec882753b3a77d02b31d21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9febbe3a80b005197bae66472064e7475c6caf67b3c75b1256bfb90b48993f79",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variant794cc7dda538ccb3196ec11d1b520bfa9033176554ec882753b3a77d02b31d21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b63fa78a-b62a-afa0-b86f-3b92dfff4c1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_simple_zeros_supply_moving_panel {g : ℝ × ℝ → ℝ} {l₀ a₀ b₀ x₀ : ℝ}
    (ha : ContDiffAt ℝ 1 g (l₀,a₀)) (hb : ContDiffAt ℝ 1 g (l₀,b₀))
    (hza : g (l₀,a₀) = 0) (hzb : g (l₀,b₀) = 0)
    (hsa : spatialSlope g (l₀,a₀) ≠ 0) (hsb : spatialSlope g (l₀,b₀) ≠ 0)
    (hab : a₀ < b₀) :
    ∃ a b : ℝ → ℝ, a l₀ = a₀ ∧ b l₀ = b₀ ∧
      ContDiffAt ℝ 1 a l₀ ∧ ContDiffAt ℝ 1 b l₀ ∧
      ContDiffAt ℝ 1 (center a b) l₀ ∧ ContDiffAt ℝ 1 (radius a b) l₀ ∧
      ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
        AffineAccordionWeld.fold (a u.1) (b u.1) u.2) (l₀,x₀) ∧
      (∀ᶠ l in 𝓝 l₀, g (l,a l) = 0 ∧ g (l,b l) = 0 ∧
        a l < b l ∧ 0 < radius a b l) := by
  obtain ⟨a,ha0,hac,haz,_haunique⟩ := simple_zero_local_c1_graph ha hza hsa
  obtain ⟨b,hb0,hbc,hbz,_hbunique⟩ := simple_zero_local_c1_graph hb hzb hsb
  have hab' : a l₀ < b l₀ := by simpa only [ha0,hb0] using hab
  refine ⟨a,b,ha0,hb0,hac,hbc,moving_center_c1 hac hbc,
    moving_radius_c1 hac hbc,moving_fold_joint_c1 hac hbc hab',?_⟩
  filter_upwards [haz,hbz,ordered_seams_stay_ordered hac hbc hab'] with l hal hbl horder
  exact ⟨hal,hbl,horder⟩

end
end GRWTSK.RiemannHypothesis.Conversation.MovingAffineChamber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variant794cc7dda538ccb3196ec11d1b520bfa9033176554ec882753b3a77d02b31d21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variant794cc7dda538ccb3196ec11d1b520bfa9033176554ec882753b3a77d02b31d21.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ffa211927c4d09c2728e3b4f13d81b186cec8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
