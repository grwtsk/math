# lhopital_zero_right_on_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed5037cd0c85e279b7e8da3ec04e11b7258aaa77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b14b1d4c-9eb3-ba79-1713-35efaa60dd2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48962abe-c5ab-2ca6-88f7-b9ed81907a15",
  "kind": "theorem",
  "lexical_name": "lhopital_zero_right_on_Ioo",
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
  "slug": "lhopital-zero-right-on-ioo--0ed4e278eb8c93e986d41ecb",
  "source": {
    "blob": "ed5037cd0c85e279b7e8da3ec04e11b7258aaa77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ed4e278eb8c93e986d41ecbfc094bd2ddd0fef287cd0964d0b41a860dac303e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48962abe-c5ab-2ca6-88f7-b9ed81907a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lhopital_zero_right_on_Ioo (hab : a < b) (hff' : ∀ x ∈ Ioo a b, HasDerivAt f (f' x) x)
    (hgg' : ∀ x ∈ Ioo a b, HasDerivAt g (g' x) x) (hg' : ∀ x ∈ Ioo a b, g' x ≠ 0)
    (hfa : Tendsto f (𝓝[>] a) (𝓝 0)) (hga : Tendsto g (𝓝[>] a) (𝓝 0))
    (hdiv : Tendsto (fun x => f' x / g' x) (𝓝[>] a) l) :
    Tendsto (fun x => f x / g x) (𝓝[>] a) l := by
  have sub : ∀ x ∈ Ioo a b, Ioo a x ⊆ Ioo a b := fun x hx =>
    Ioo_subset_Ioo (le_refl a) (le_of_lt hx.2)
  have hg : ∀ x ∈ Ioo a b, g x ≠ 0 := by
    intro x hx h
    have : Tendsto g (𝓝[<] x) (𝓝 0) := by
      rw [← h, ← nhdsWithin_Ioo_eq_nhdsLT hx.1]
      exact ((hgg' x hx).continuousAt.continuousWithinAt.mono <| sub x hx).tendsto
    obtain ⟨y, hyx, hy⟩ : ∃ c ∈ Ioo a x, g' c = 0 :=
      exists_hasDerivAt_eq_zero' hx.1 hga this fun y hy => hgg' y <| sub x hx hy
    exact hg' y (sub x hx hyx) hy
  have : ∀ x ∈ Ioo a b, ∃ c ∈ Ioo a x, f x * g' c = g x * f' c := by
    intro x hx
    rw [← sub_zero (f x), ← sub_zero (g x)]
    exact exists_ratio_hasDerivAt_eq_ratio_slope' g g' hx.1 f f' (fun y hy => hgg' y <| sub x hx hy)
      (fun y hy => hff' y <| sub x hx hy) hga hfa
      (tendsto_nhdsWithin_of_tendsto_nhds (hgg' x hx).continuousAt.tendsto)
      (tendsto_nhdsWithin_of_tendsto_nhds (hff' x hx).continuousAt.tendsto)
  choose! c hc using this
  have : ∀ x ∈ Ioo a b, ((fun x' => f' x' / g' x') ∘ c) x = f x / g x := by
    intro x hx
    rcases hc x hx with ⟨h₁, h₂⟩
    field_simp [hg x hx, hg' (c x) ((sub x hx) h₁)]
    simp only [h₂]
    rw [mul_comm]
  have cmp : ∀ x ∈ Ioo a b, a < c x ∧ c x < x := fun x hx => (hc x hx).1
  rw [← nhdsWithin_Ioo_eq_nhdsGT hab]
  apply tendsto_nhdsWithin_congr this
  apply hdiv.comp
  refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
    (tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds
      (tendsto_nhdsWithin_of_tendsto_nhds tendsto_id) ?_ ?_) ?_
  all_goals
    apply eventually_nhdsWithin_of_forall
    intro x hx
    have := cmp x hx
    try simp
    linarith [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5037cd0c85e279b7e8da3ec04e11b7258aaa77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
