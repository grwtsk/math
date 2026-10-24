# HasFDerivWithinAt.lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e55deb2d-45b6-c808-d208-69da7478c0f0",
  "kind": "theorem",
  "lexical_name": "HasFDerivWithinAt.lim",
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
  "slug": "hasfderivwithinat-lim--357bb0e374b1c7553a1df742",
  "source": {
    "blob": "90e409f079997ddf30bb47f0624a2706b03a034f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 267,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8399dfd0a3327b7aab0f648ef37fd2e0580cb637f79f0437be6962f86e43ade0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:357bb0e374b1c7553a1df742c8e27d91e5c2ffa6cab66c251f2065c0ff3ffb84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8399dfd0a3327b7aab0f648ef37fd2e0580cb637f79f0437be6962f86e43ade0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e55deb2d-45b6-c808-d208-69da7478c0f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivWithinAt.lim (h : HasFDerivWithinAt f f' s x) {α : Type*} (l : Filter α)
    {c : α → 𝕜} {d : α → E} {v : E} (dtop : ∀ᶠ n in l, x + d n ∈ s)
    (clim : Tendsto (fun n => ‖c n‖) l atTop) (cdlim : Tendsto (fun n => c n • d n) l (𝓝 v)) :
    Tendsto (fun n => c n • (f (x + d n) - f x)) l (𝓝 (f' v)) := by
  have tendsto_arg : Tendsto (fun n => x + d n) l (𝓝[s] x) := by
    conv in 𝓝[s] x => rw [← add_zero x]
    rw [nhdsWithin, tendsto_inf]
    constructor
    · apply tendsto_const_nhds.add (tangentConeAt.lim_zero l clim cdlim)
    · rwa [tendsto_principal]
  have : (fun y => f y - f x - f' (y - x)) =o[𝓝[s] x] fun y => y - x := h.isLittleO
  have : (fun n => f (x + d n) - f x - f' (x + d n - x)) =o[l] fun n => x + d n - x :=
    this.comp_tendsto tendsto_arg
  have : (fun n => f (x + d n) - f x - f' (d n)) =o[l] d := by simpa only [add_sub_cancel_left]
  have : (fun n => c n • (f (x + d n) - f x - f' (d n))) =o[l] fun n => c n • d n :=
    (isBigO_refl c l).smul_isLittleO this
  have : (fun n => c n • (f (x + d n) - f x - f' (d n))) =o[l] fun _ => (1 : ℝ) :=
    this.trans_isBigO (cdlim.isBigO_one ℝ)
  have L1 : Tendsto (fun n => c n • (f (x + d n) - f x - f' (d n))) l (𝓝 0) :=
    (isLittleO_one_iff ℝ).1 this
  have L2 : Tendsto (fun n => f' (c n • d n)) l (𝓝 (f' v)) :=
    Tendsto.comp f'.cont.continuousAt cdlim
  have L3 :
    Tendsto (fun n => c n • (f (x + d n) - f x - f' (d n)) + f' (c n • d n)) l (𝓝 (0 + f' v)) :=
    L1.add L2
  have :
    (fun n => c n • (f (x + d n) - f x - f' (d n)) + f' (c n • d n)) = fun n =>
      c n • (f (x + d n) - f x) := by
    ext n
    simp [smul_add, smul_sub]
  rwa [this, zero_add] at L3

/-- If `f'` and `f₁'` are two derivatives of `f` within `s` at `x`, then they are equal on the
tangent cone to `s` at `x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8399dfd0a3327b7aab0f648ef37fd2e0580cb637f79f0437be6962f86e43ade0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8399dfd0a3327b7aab0f648ef37fd2e0580cb637f79f0437be6962f86e43ade0.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90e409f079997ddf30bb47f0624a2706b03a034f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
