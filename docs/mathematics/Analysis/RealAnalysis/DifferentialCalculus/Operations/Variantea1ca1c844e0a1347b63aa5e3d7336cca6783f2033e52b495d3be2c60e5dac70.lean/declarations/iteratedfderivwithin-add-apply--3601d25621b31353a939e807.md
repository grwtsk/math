# iteratedFDerivWithin_add_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10aa158f-8f6e-a326-df35-821675b28729",
  "kind": "theorem",
  "lexical_name": "iteratedFDerivWithin_add_apply",
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
  "slug": "iteratedfderivwithin-add-apply--3601d25621b31353a939e807",
  "source": {
    "blob": "8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3601d25621b31353a939e8075251af1605692a2febbfd9ede7f94ff8af06d55a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10aa158f-8f6e-a326-df35-821675b28729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDerivWithin_add_apply {f g : E → F} (hf : ContDiffWithinAt 𝕜 i f s x)
    (hg : ContDiffWithinAt 𝕜 i g s x) (hu : UniqueDiffOn 𝕜 s) (hx : x ∈ s) :
    iteratedFDerivWithin 𝕜 i (f + g) s x =
      iteratedFDerivWithin 𝕜 i f s x + iteratedFDerivWithin 𝕜 i g s x := by
  have := (hf.eventually (by simp)).and (hg.eventually (by simp))
  obtain ⟨t, ht, hxt, h⟩ := mem_nhdsWithin.mp this
  have hft : ContDiffOn 𝕜 i f (s ∩ t) := fun a ha ↦ (h (by simp_all)).1.mono inter_subset_left
  have hgt : ContDiffOn 𝕜 i g (s ∩ t) := fun a ha ↦ (h (by simp_all)).2.mono inter_subset_left
  have hut : UniqueDiffOn 𝕜 (s ∩ t) := hu.inter ht
  have H : ↑(s ∩ t) =ᶠ[𝓝 x] s :=
    inter_eventuallyEq_left.mpr (eventually_of_mem (ht.mem_nhds hxt) (fun _ h _ ↦ h))
  rw [← iteratedFDerivWithin_congr_set H, ← iteratedFDerivWithin_congr_set H,
    ← iteratedFDerivWithin_congr_set H]
  exact .symm (((hft.ftaylorSeriesWithin hut).add
      (hgt.ftaylorSeriesWithin hut)).eq_iteratedFDerivWithin_of_uniqueDiffOn le_rfl hut ⟨hx, hxt⟩)

/-- The iterated derivative of the sum of two functions is the sum of the iterated derivatives.
This is the same as `iteratedFDerivWithin_add_apply`, but using the spelling `(fun x ↦ f x + g x)`
instead of `f + g`, which can be handy for some rewrites.
TODO: use one form consistently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
