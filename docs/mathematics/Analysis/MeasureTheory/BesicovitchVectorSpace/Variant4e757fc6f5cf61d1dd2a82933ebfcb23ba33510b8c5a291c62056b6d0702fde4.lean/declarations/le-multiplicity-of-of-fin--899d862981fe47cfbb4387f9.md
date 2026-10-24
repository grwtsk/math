# le_multiplicity_of_δ_of_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0addb87793aa4a4b608addf8c967e86dc8cd00d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4115b34-c2b0-abeb-bc4a-fcea9f6e5fd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c388bba-0a3b-00d9-3e18-ef84766e0112",
  "kind": "theorem",
  "lexical_name": "le_multiplicity_of_δ_of_fin",
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
  "slug": "le-multiplicity-of-of-fin--899d862981fe47cfbb4387f9",
  "source": {
    "blob": "c0addb87793aa4a4b608addf8c967e86dc8cd00d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 310,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:899d862981fe47cfbb4387f97067b4a6aeda07e6fadc4c40735b87c97c12572a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c388bba-0a3b-00d9-3e18-ef84766e0112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_multiplicity_of_δ_of_fin {n : ℕ} (f : Fin n → E) (h : ∀ i, ‖f i‖ ≤ 2)
    (h' : ∀ i j, i ≠ j → 1 - goodδ E ≤ ‖f i - f j‖) : n ≤ multiplicity E := by
  classical
  have finj : Function.Injective f := by
    intro i j hij
    by_contra h
    have : 1 - goodδ E ≤ ‖f i - f j‖ := h' i j h
    simp only [hij, norm_zero, sub_self] at this
    linarith [goodδ_lt_one E]
  let s := Finset.image f Finset.univ
  have s_card : s.card = n := by rw [Finset.card_image_of_injective _ finj]; exact Finset.card_fin n
  have hs : ∀ c ∈ s, ‖c‖ ≤ 2 := by
    simp only [h, forall_apply_eq_imp_iff', forall_const, forall_exists_index, Finset.mem_univ,
      Finset.mem_image, imp_true_iff, true_and]
  have h's : ∀ c ∈ s, ∀ d ∈ s, c ≠ d → 1 - goodδ E ≤ ‖c - d‖ := by
    simp only [forall_apply_eq_imp_iff', forall_exists_index, Finset.mem_univ, Finset.mem_image,
      Ne.def, exists_true_left, forall_apply_eq_imp_iff', forall_true_left, true_and]
    intro i j hij
    have : i ≠ j := fun h => by rw [h] at hij; exact hij rfl
    exact h' i j this
  have : s.card ≤ multiplicity E := card_le_multiplicity_of_δ hs h's
  rwa [s_card] at this
#align besicovitch.le_multiplicity_of_δ_of_fin Besicovitch.le_multiplicity_of_δ_of_fin

end

namespace SatelliteConfig

/-!
### Relating satellite configurations to separated points in the ball of radius `2`.

We prove that the number of points in a satellite configuration is bounded by the maximal number
of `1`-separated points in the ball of radius `2`. For this, start from a satellite configuration
`c`. Without loss of generality, one can assume that the last ball is centered at `0` and of
radius `1`. Define `c' i = c i` if `‖c i‖ ≤ 2`, and `c' i = (2/‖c i‖) • c i` if `‖c i‖ > 2`.
It turns out that these points are `1 - δ`-separated, where `δ` is arbitrarily small if `τ` is
close enough to `1`. The number of such configurations is bounded by `multiplicity E` if `δ` is
suitably small.

To check that the points `c' i` are `1 - δ`-separated, one treats separately the cases where
both `‖c i‖` and `‖c j‖` are `≤ 2`, where one of them is `≤ 2` and the other one is `> 2`, and
where both of them are `> 2`.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0addb87793aa4a4b608addf8c967e86dc8cd00d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
