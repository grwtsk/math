# tendstoInDistribution_of_ae_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f8e5e8f-2726-3c79-73c6-6373bb3f264e",
  "kind": "theorem",
  "lexical_name": "tendstoInDistribution_of_ae_tendsto",
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
  "slug": "tendstoindistribution-of-ae-tendsto--4d6bfd82616da4398398f75c",
  "source": {
    "blob": "a1d2e9c667e753dfbcc5ade3cb0276aa30808ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d6bfd82616da4398398f75c6278ef5ddc2461c1978aa67abef1f503e91176cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f8e5e8f-2726-3c79-73c6-6373bb3f264e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInDistribution_of_ae_tendsto [l.IsCountablyGenerated]
    [OpensMeasurableSpace E] {X : ι → Ω' → E}
    (hX₁ : ∀ i, AEMeasurable (X i) μ') (hZ : AEMeasurable Z μ')
    (hX₂ : ∀ᵐ ω ∂μ', Tendsto (fun i ↦ X i ω) l (𝓝 (Z ω))) :
    TendstoInDistribution X l Z (fun _ ↦ μ') μ' where
  forall_aemeasurable := hX₁
  aemeasurable_limit := hZ
  tendsto := by
    simp_rw [ProbabilityMeasure.tendsto_iff_forall_lintegral_tendsto, ProbabilityMeasure.coe_mk]
    intro f
    rw [lintegral_map' (by fun_prop) hZ]
    conv in ∫⁻ _, _ ∂_ => rw [lintegral_map' (by fun_prop) (hX₁ i)]
    apply tendsto_lintegral_filter_of_dominated_convergence' (bound := fun _ ↦ edist 0 f)
    · exact .of_forall (by fun_prop)
    · simp [f.apply_le_edist_zero]
    · simp
    filter_upwards [hX₂] with ω hω
    simpa [Function.comp_def] using f.continuous.tendsto (Z ω) |>.comp hω

end TendstoInDistribution

/-- Convergence in probability (`TendstoInMeasure`) implies convergence in distribution
(`TendstoInDistribution`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d2e9c667e753dfbcc5ade3cb0276aa30808ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
