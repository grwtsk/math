# blimsup_cthickening_ae_le_of_eventually_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40e2d6f9d7c860630ff6f56d3d8d59910debae71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b61da858-c930-1cab-c715-5e344c00eeee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b36ef82-cf34-11a2-633f-e974d56f29f1",
  "kind": "theorem",
  "lexical_name": "blimsup_cthickening_ae_le_of_eventually_mul_le",
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
  "slug": "blimsup-cthickening-ae-le-of-eventually-mul-le--8088ead2fc3666a4356cd1c9",
  "source": {
    "blob": "40e2d6f9d7c860630ff6f56d3d8d59910debae71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8088ead2fc3666a4356cd1c99858e3c2527e2f599285a168a0c9f7fd24abc38f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b36ef82-cf34-11a2-633f-e974d56f29f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blimsup_cthickening_ae_le_of_eventually_mul_le (p : ℕ → Prop) {s : ℕ → Set α} {M : ℝ}
    (hM : 0 < M) {r₁ r₂ : ℕ → ℝ} (hr : Tendsto r₁ atTop (𝓝[>] 0))
    (hMr : ∀ᶠ i in atTop, M * r₁ i ≤ r₂ i) :
    (blimsup (fun i => cthickening (r₁ i) (s i)) atTop p : Set α) ≤ᵐ[μ]
      (blimsup (fun i => cthickening (r₂ i) (s i)) atTop p : Set α) := by
  let R₁ i := max 0 (r₁ i)
  let R₂ i := max 0 (r₂ i)
  have hRp : 0 ≤ R₁ := fun i => le_max_left 0 (r₁ i)
  replace hMr : ∀ᶠ i in atTop, M * R₁ i ≤ R₂ i := by
    refine hMr.mono fun i hi ↦ ?_
    rw [mul_max_of_nonneg _ _ hM.le, mul_zero]
    exact max_le_max (le_refl 0) hi
  simp_rw [← cthickening_max_zero (r₁ _), ← cthickening_max_zero (r₂ _)]
  rcases le_or_gt 1 M with hM' | hM'
  · refine .of_subset <| mono_blimsup' <| hMr.mono fun i hi _ => cthickening_mono ?_ (s i)
    exact (le_mul_of_one_le_left (hRp i) hM').trans hi
  · simp only [← @cthickening_closure _ _ _ (s _)]
    have hs : ∀ i, IsClosed (closure (s i)) := fun i => isClosed_closure
    exact blimsup_cthickening_ae_le_of_eventually_mul_le_aux μ p hs
      (tendsto_nhds_max_right hr) hRp hM hM' hMr

/-- Given a sequence of subsets `sᵢ` of a metric space, together with a sequence of radii `rᵢ`
such that `rᵢ → 0`, the set of points which belong to infinitely many of the closed
`rᵢ`-thickenings of `sᵢ` is unchanged almost everywhere for a uniformly locally doubling measure if
the `rᵢ` are all scaled by a positive constant.

This lemma is a generalisation of Lemma 9 appearing on page 217 of
[J.W.S. Cassels, *Some metrical theorems in Diophantine approximation. I*](cassels1950).

See also `blimsup_thickening_mul_ae_eq`.

NB: The `: Set α` type ascription is present because of
https://github.com/leanprover-community/mathlib/issues/16932. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e2d6f9d7c860630ff6f56d3d8d59910debae71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
