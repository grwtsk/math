# tangentConeAt_nonempty_of_properSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa690637-de89-120a-f6b2-7fe1b5b8c81d",
  "kind": "theorem",
  "lexical_name": "tangentConeAt_nonempty_of_properSpace",
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
  "slug": "tangentconeat-nonempty-of-properspace--8d90977effd0130feed415cc",
  "source": {
    "blob": "436a5d48de9efca576d6634dfd119783b8d43a04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/ProperSpace/Variant0657c5ae0373743ee8986aade5ec61ca04e8d8ced28c79155af79c7a184407e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d90977effd0130feed415cc43a2c211993a05ad68cc24d1ac5400398a64f9b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperSpace/Variant0657c5ae0373743ee8986aade5ec61ca04e8d8ced28c79155af79c7a184407e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa690637-de89-120a-f6b2-7fe1b5b8c81d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentConeAt_nonempty_of_properSpace [ProperSpace E]
    {s : Set E} {x : E} (hx : AccPt x (𝓟 s)) :
    (tangentConeAt 𝕜 s x ∩ {0}ᶜ).Nonempty := by
  /- Take a sequence `d n` tending to `0` such that `x + d n ∈ s`. Taking `c n` of the order
  of `1 / d n`. Then `c n • d n` belongs to a fixed annulus. By compactness, one can extract
  a subsequence converging to a limit `l`. Then `l` is nonzero, and by definition it belongs to
  the tangent cone. -/
  obtain ⟨u, -, u_pos, u_lim⟩ :
      ∃ u, StrictAnti u ∧ (∀ (n : ℕ), 0 < u n) ∧ Tendsto u atTop (𝓝 (0 : ℝ)) :=
    exists_seq_strictAnti_tendsto (0 : ℝ)
  have A n : ∃ y ∈ closedBall x (u n) ∩ s, y ≠ x :=
    accPt_iff_nhds.mp hx _ (closedBall_mem_nhds _ (u_pos n))
  choose v hv hvx using A
  choose hvu hvs using hv
  let d := fun n ↦ v n - x
  have M n : x + d n ∈ s \ {x} := by simp [d, hvs, hvx]
  let ⟨r, hr⟩ := exists_one_lt_norm 𝕜
  have W n := rescale_to_shell hr zero_lt_one (x := d n) (by simpa using (M n).2)
  choose c c_ne c_le le_c hc using W
  obtain ⟨l, l_mem, φ, φ_strict, hφ⟩ :
      ∃ l ∈ Metric.closedBall (0 : E) 1 \ Metric.ball (0 : E) (1 / ‖r‖),
      ∃ (φ : ℕ → ℕ), StrictMono φ ∧ Tendsto ((fun n ↦ c n • d n) ∘ φ) atTop (𝓝 l) := by
    apply IsCompact.tendsto_subseq _ (fun n ↦ ?_)
    · exact (isCompact_closedBall 0 1).diff Metric.isOpen_ball
    simp only [Set.mem_sdiff, Metric.mem_closedBall, dist_zero_right, (c_le n).le,
      Metric.mem_ball, not_lt, true_and, le_c n]
  refine ⟨l, ?_, ?_⟩; swap
  · push _ ∈ _
    contrapose l_mem
    simp only [one_div, l_mem, Set.mem_sdiff, Metric.mem_closedBall, dist_self, zero_le_one,
      Metric.mem_ball, inv_pos, norm_pos_iff, ne_eq, not_not, true_and]
    contrapose! hr
    simp [hr]
  apply mem_tangentConeAt_of_seq atTop (c ∘ φ) (d ∘ φ)
  · refine Tendsto.comp ?_ φ_strict.tendsto_atTop
    exact squeeze_zero_norm (by simpa [dist_eq_norm] using hvu) u_lim
  · exact .of_forall fun n ↦ (M _).1
  · exact hφ
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperSpace/Variant0657c5ae0373743ee8986aade5ec61ca04e8d8ced28c79155af79c7a184407e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperSpace/Variant0657c5ae0373743ee8986aade5ec61ca04e8d8ced28c79155af79c7a184407e6.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `436a5d48de9efca576d6634dfd119783b8d43a04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
