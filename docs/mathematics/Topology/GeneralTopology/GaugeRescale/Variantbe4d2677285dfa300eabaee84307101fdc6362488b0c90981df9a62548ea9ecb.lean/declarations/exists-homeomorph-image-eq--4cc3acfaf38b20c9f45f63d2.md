# exists_homeomorph_image_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fb395a2-db66-0a03-52ca-284113ec7a1d",
  "kind": "theorem",
  "lexical_name": "exists_homeomorph_image_eq",
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
  "slug": "exists-homeomorph-image-eq--4cc3acfaf38b20c9f45f63d2",
  "source": {
    "blob": "7af1ff2d5adf1fd5feff9d2ddac67c6ea3d86b3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cc3acfaf38b20c9f45f63d2bb964cec669862bf239663a8fe8c5980fd579251",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fb395a2-db66-0a03-52ca-284113ec7a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_homeomorph_image_eq {s t : Set E}
    (hsc : Convex ℝ s) (hsne : (interior s).Nonempty) (hsb : IsVonNBounded ℝ s)
    (hst : Convex ℝ t) (htne : (interior t).Nonempty) (htb : IsVonNBounded ℝ t) :
    ∃ e : E ≃ₜ E, e '' interior s = interior t ∧ e '' closure s = closure t ∧
      e '' frontier s = frontier t := by
  rsuffices ⟨e, h₁, h₂⟩ : ∃ e : E ≃ₜ E, e '' interior s = interior t ∧ e '' closure s = closure t
  · refine ⟨e, h₁, h₂, ?_⟩
    simp_rw [← closure_diff_interior, image_diff e.injective, h₁, h₂]
  rcases hsne with ⟨x, hx⟩
  rcases htne with ⟨y, hy⟩
  set h : E ≃ₜ E := by
    apply gaugeRescaleHomeomorph (-x +ᵥ s) (-y +ᵥ t) <;>
      simp [← mem_interior_iff_mem_nhds, interior_vadd, mem_vadd_set_iff_neg_vadd_mem, *]
  refine ⟨.trans (.addLeft (-x)) <| h.trans <| .addLeft y, ?_, ?_⟩
  · calc
      (fun a ↦ y + h (-x + a)) '' interior s = y +ᵥ h '' interior (-x +ᵥ s) := by
        simp_rw [interior_vadd, ← image_vadd, image_image, vadd_eq_add]
      _ = _ := by rw [image_gaugeRescaleHomeomorph_interior, interior_vadd, vadd_neg_vadd]
  · calc
      (fun a ↦ y + h (-x + a)) '' closure s = y +ᵥ h '' closure (-x +ᵥ s) := by
        simp_rw [closure_vadd, ← image_vadd, image_image, vadd_eq_add]
      _ = _ := by rw [image_gaugeRescaleHomeomorph_closure, closure_vadd, vadd_neg_vadd]

end Module

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- If `s` is a convex bounded set with a nonempty interior in a real normed space,
then there is a homeomorphism of the ambient space to itself
that sends the interior of `s` to the unit open ball
and the closure of `s` to the unit closed ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7af1ff2d5adf1fd5feff9d2ddac67c6ea3d86b3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
