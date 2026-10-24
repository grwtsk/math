# window_successor_of_uniform_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:973e0a09-1266-4a4d-7df4-a43902a1762f",
  "kind": "theorem",
  "lexical_name": "window_successor_of_uniform_margin",
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
  "slug": "window-successor-of-uniform-margin--5b312da44690cb5f84576416",
  "source": {
    "blob": "59bb7e8bf16418be5f177784f38ac718bc4cd3a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 150,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b312da44690cb5f84576416d511b71a6d55a29976a4371ba9ccb50c55a08dd0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:973e0a09-1266-4a4d-7df4-a43902a1762f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem window_successor_of_uniform_margin {K : ℕ} {C : Config}
    (hbase : WindowRH K) (hc : C.Guard)
    (hsize : (((K+1 : ℕ) : ℝ)+1) ≤ (C.size : ℝ))
    (hgap : ∀ z ∈ HeightFiber.successorBox K, MirrorApproximation.Eligible z →
      totalBudget C ((K+1 : ℕ) : ℝ) (MirrorChannels.offset z) <
        energy C.polynomial (MirrorChannels.center z) (MirrorChannels.offset z)) :
    WindowRH (K+1) := by
  apply HeightFiber.window_successor_of_fibers hbase
  apply HeightFiber.targetCapacity_of_rhOn
  intro z hz hz0
  by_contra hoff
  have hel : MirrorApproximation.Eligible z := ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  have hb := HeightFiber.mem_successorBox.mp hz
  have hT0 : (0 : ℝ) ≤ ((K+1 : ℕ) : ℝ) := Nat.cast_nonneg _
  have hi0 : 0 ≤ z.im := (Nat.cast_nonneg K).trans hb.2.2.1
  have hp : MirrorChannels.center z+MirrorChannels.offset z ∈ band ((K+1 : ℕ) : ℝ) := by
    rw [MirrorChannels.center_plus_offset]
    exact ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,by linarith,hb.2.2.2⟩
  have hm : MirrorChannels.center z-MirrorChannels.offset z ∈ band ((K+1 : ℕ) : ℝ) := by
    rw [MirrorChannels.center_minus_offset]
    have hzm := hz0.critical_reflection.mem_critical_strip
    have he : (criticalReflection z).im=z.im := by simp [criticalReflection]
    exact ⟨hzm.1,hzm.2,by rw [he]; linarith,by rwa [he]⟩
  let E := sourceEnclosure hc hT0 hsize (MirrorChannels.offset_ne_zero hoff) hp hm
  apply E.excludes_pair (hgap z hz hel)
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hz0,poleNormalizedZeta_zero_of_target hz0.critical_reflection⟩

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.UniformPairEvaluation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59bb7e8bf16418be5f177784f38ac718bc4cd3a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
