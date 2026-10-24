# finiteCountingMass_high_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aff6993-ed28-5ae7-2fa8-6abd19df6d72",
  "kind": "theorem",
  "lexical_name": "finiteCountingMass_high_le",
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
  "slug": "finitecountingmass-high-le--fc576006b2aa74b3c5a49cee",
  "source": {
    "blob": "dd4a7447fa9441839b2e76e0a0023d4e33249228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc576006b2aa74b3c5a49cee47dcf14342bc0f6c283c1288ed21dc18c140200e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aff6993-ed28-5ae7-2fa8-6abd19df6d72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCountingMass_high_le (S : Finset ZeroPoint) (t : ℝ) (ht : 2 ≤ t)
    (hS : ∀ z ∈ S, 2 < height z) :
    finiteCountingMass S height (fun z => (multiplicity z : ℝ)) t ≤
      countingCoefficient * (t * Real.log t) := by
  classical
  have hsub : S.filter (fun z => height z ≤ t) ⊆ heightHead t \ heightHead 2 := by
    intro z hz
    obtain ⟨hzS, hzt⟩ := Finset.mem_filter.mp hz
    refine Finset.mem_sdiff.mpr ⟨(mem_heightHead t z).mpr hzt, ?_⟩
    intro hz2
    exact (not_le_of_gt (hS z hzS)) ((mem_heightHead 2 z).mp hz2)
  have hb : (∑ z ∈ S.filter (fun z => height z ≤ t), (multiplicity z : ℝ)) ≤
      ∑ z ∈ heightHead t \ heightHead 2, (multiplicity z : ℝ) :=
    Finset.sum_le_sum_of_subset_of_nonneg hsub (fun z _ _ => Nat.cast_nonneg _)
  have he : (∑ z ∈ heightHead t \ heightHead 2, (multiplicity z : ℝ)) +
      (heightCount 2 : ℝ) = (heightCount t : ℝ) := by
    exact_mod_cast heightHead_difference_mass ht
  rw [finiteCountingMass, ← Finset.sum_filter]
  linarith [heightCount_le_low_add t ht]

end
end GRWTSK.RiemannHypothesis.CanonicalHighCounting
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4a7447fa9441839b2e76e0a0023d4e33249228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
