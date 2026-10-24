# HasFDerivWithinAt.lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bca43932a1e7dd677061301e397f29e3f4e9c26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/231c1c18fb0cad14258f6841adf878323b00471eca55fa08d6faf805a40f1239.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:344a210c-028b-a88a-e6b0-1f3fb077284a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3feaab42-c72a-a68d-3870-d6616485b23e",
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
  "slug": "hasfderivwithinat-lim--c64629a5f04235e06719b479",
  "source": {
    "blob": "3bca43932a1e7dd677061301e397f29e3f4e9c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 259,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant231c1c18fb0cad14258f6841adf878323b00471eca55fa08d6faf805a40f1239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c64629a5f04235e06719b4791a836456ddf13ef7bae0491c5a49c36f73244dc2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant231c1c18fb0cad14258f6841adf878323b00471eca55fa08d6faf805a40f1239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3feaab42-c72a-a68d-3870-d6616485b23e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–292.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant231c1c18fb0cad14258f6841adf878323b00471eca55fa08d6faf805a40f1239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant231c1c18fb0cad14258f6841adf878323b00471eca55fa08d6faf805a40f1239.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bca43932a1e7dd677061301e397f29e3f4e9c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
