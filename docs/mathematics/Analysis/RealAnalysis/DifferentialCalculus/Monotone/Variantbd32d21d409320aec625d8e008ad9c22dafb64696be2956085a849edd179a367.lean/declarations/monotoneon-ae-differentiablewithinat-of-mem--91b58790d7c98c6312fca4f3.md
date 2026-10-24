# MonotoneOn.ae_differentiableWithinAt_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a02d6ab1-68a7-a7ee-0143-03605729eec5",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.ae_differentiableWithinAt_of_mem",
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
  "slug": "monotoneon-ae-differentiablewithinat-of-mem--91b58790d7c98c6312fca4f3",
  "source": {
    "blob": "24c365318095fc0db4ac8e2134d06732b47a1f36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 235,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91b58790d7c98c6312fca4f370e5db2ddb18b9bbc5641392874adbdb92d6afd6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a02d6ab1-68a7-a7ee-0143-03605729eec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.ae_differentiableWithinAt_of_mem {f : ℝ → ℝ} {s : Set ℝ} (hf : MonotoneOn f s) :
    ∀ᵐ x, x ∈ s → DifferentiableWithinAt ℝ f s x := by
  /- We use a global monotone extension of `f`, and argue that this extension is differentiable
    almost everywhere. Such an extension need not exist (think of `1/x` on `(0, +∞)`), but it exists
    if one restricts first the function to a compact interval `[a, b]`. -/
  apply ae_of_mem_of_ae_of_mem_inter_Ioo
  intro a b as bs _
  obtain ⟨g, hg, gf⟩ : ∃ g : ℝ → ℝ, Monotone g ∧ EqOn f g (s ∩ Icc a b) :=
    (hf.mono (inter_subset_left s (Icc a b))).exists_monotone_extension
      (hf.map_bddBelow (inter_subset_left _ _) ⟨a, fun x hx => hx.2.1, as⟩)
      (hf.map_bddAbove (inter_subset_left _ _) ⟨b, fun x hx => hx.2.2, bs⟩)
  filter_upwards [hg.ae_differentiableAt] with x hx
  intro h'x
  apply hx.differentiableWithinAt.congr_of_eventuallyEq _ (gf ⟨h'x.1, h'x.2.1.le, h'x.2.2.le⟩)
  have : Ioo a b ∈ 𝓝[s] x := nhdsWithin_le_nhds (Ioo_mem_nhds h'x.2.1 h'x.2.2)
  filter_upwards [self_mem_nhdsWithin, this] with y hy h'y
  exact gf ⟨hy, h'y.1.le, h'y.2.le⟩
#align monotone_on.ae_differentiable_within_at_of_mem MonotoneOn.ae_differentiableWithinAt_of_mem

/-- A real function which is monotone on a set is differentiable Lebesgue-almost everywhere on
this set. This version assumes that `s` is measurable and uses `volume.restrict s`.
For a formulation without measurability assumption,
see `MonotoneOn.ae_differentiableWithinAt_of_mem`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24c365318095fc0db4ac8e2134d06732b47a1f36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
