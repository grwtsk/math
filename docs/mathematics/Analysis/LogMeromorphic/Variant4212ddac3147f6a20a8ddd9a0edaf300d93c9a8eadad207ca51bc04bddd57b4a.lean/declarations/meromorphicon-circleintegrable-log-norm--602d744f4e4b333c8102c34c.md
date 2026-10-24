# MeromorphicOn.circleIntegrable_log_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10428425-cf50-b7ac-46b9-369d9de6e1cc",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.circleIntegrable_log_norm",
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
  "slug": "meromorphicon-circleintegrable-log-norm--602d744f4e4b333c8102c34c",
  "source": {
    "blob": "fafe191204e54d6cb1317536e05416b2747721b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 142,
    "path": "GRWTSK/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:602d744f4e4b333c8102c34c704e76be444e6bc882756b187daac56adc89275f",
  "verification": {
    "reference": "docs/verification/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10428425-cf50-b7ac-46b9-369d9de6e1cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.circleIntegrable_log_norm (hf : MeromorphicOn f (sphere c |R|)) :
    CircleIntegrable (log ‖f ·‖) c R := by
  by_cases t₀ : ∀ u : (sphere c |R|), meromorphicOrderAt f u ≠ ⊤
  · obtain ⟨g, h₁g, h₂g, h₃g⟩ := hf.extract_zeros_poles t₀
      ((divisor f (sphere c |R|)).finiteSupport (isCompact_sphere c |R|))
    have h₄g := MeromorphicOn.extract_zeros_poles_log h₂g h₃g
    apply CircleIntegrable.congr_codiscreteWithin h₄g.symm
    apply CircleIntegrable.add
    · apply CircleIntegrable.finsum
      intro i
      apply IntervalIntegrable.const_mul
      apply MeromorphicOn.intervalIntegrable_log_norm
      fun_prop
    · apply ContinuousOn.intervalIntegrable
      apply ContinuousOn.log
      · apply ContinuousOn.norm
        apply h₁g.continuousOn.comp (t := sphere c |R|) (continuous_circleMap c R).continuousOn
        intro x hx
        simp
      · intro x hx
        rw [ne_eq, norm_eq_zero]
        apply h₂g ⟨circleMap c R x, circleMap_mem_sphere' c R x⟩
  · rw [← hf.exists_meromorphicOrderAt_ne_top_iff_forall (isConnected_sphere (by simp) c
      (abs_nonneg R))] at t₀
    push Not at t₀
    have : (log ‖f ·‖) =ᶠ[codiscreteWithin (sphere c |R|)] 0 := by
      filter_upwards [hf.meromorphicNFAt_mem_codiscreteWithin,
        self_mem_codiscreteWithin (sphere c |R|)] with x h₁x h₂x
      simp only [Pi.zero_apply, log_eq_zero, norm_eq_zero]
      left
      by_contra hCon
      simp_all [← h₁x.meromorphicOrderAt_eq_zero_iff, t₀ ⟨x, h₂x⟩]
    apply CircleIntegrable.congr_codiscreteWithin this.symm (circleIntegrable_const 0 c R)

@[deprecated (since := "2026-03-28")]
alias circleIntegrable_log_norm_meromorphicOn := MeromorphicOn.circleIntegrable_log_norm

/--
Variant of `MeromorphicOn.circleIntegrable_log_norm` for non-negative radii.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fafe191204e54d6cb1317536e05416b2747721b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
