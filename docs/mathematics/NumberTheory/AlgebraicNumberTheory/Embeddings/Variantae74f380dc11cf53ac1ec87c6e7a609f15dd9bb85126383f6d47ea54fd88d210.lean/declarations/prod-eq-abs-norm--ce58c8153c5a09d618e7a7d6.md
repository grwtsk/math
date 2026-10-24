# prod_eq_abs_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13e260f5-7620-62a6-251d-ee6d76c9f00b",
  "kind": "theorem",
  "lexical_name": "prod_eq_abs_norm",
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
  "slug": "prod-eq-abs-norm--ce58c8153c5a09d618e7a7d6",
  "source": {
    "blob": "450de2dcff5f661cf876af47b9f13f72c6a045e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 449,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce58c8153c5a09d618e7a7d68be38654d7f0aa2dd18ea0565db09cf503eaea71",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13e260f5-7620-62a6-251d-ee6d76c9f00b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_eq_abs_norm (x : K) :
    ∏ w : InfinitePlace K, w x ^ mult w = abs (Algebra.norm ℚ x) := by
  convert (congr_arg Complex.abs (@Algebra.norm_eq_prod_embeddings ℚ _ _ _ _ ℂ _ _ _ _ _ x)).symm
  · rw [map_prod, ← Equiv.prod_comp' RingHom.equivRatAlgHom (fun f => Complex.abs (f x))
      (fun φ => Complex.abs (φ x)) fun _ => by simp [RingHom.equivRatAlgHom_apply]; rfl]
    rw [← Finset.prod_fiberwise Finset.univ (fun φ => mk φ) (fun φ => Complex.abs (φ x))]
    have : ∀ w : InfinitePlace K, ∀ φ ∈ Finset.filter (fun a ↦ mk a = w) Finset.univ,
        Complex.abs (φ x) = w x := by
      intro _ _ hφ
      rw [← (Finset.mem_filter.mp hφ).2]
      rfl
    simp_rw [Finset.prod_congr rfl (this _), Finset.prod_const, card_filter_mk_eq]
  · rw [eq_ratCast, Rat.cast_abs, ← Complex.abs_ofReal, Complex.ofReal_rat_cast]
#align number_field.infinite_place.prod_eq_abs_norm NumberField.InfinitePlace.prod_eq_abs_norm

open Fintype FiniteDimensional

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450de2dcff5f661cf876af47b9f13f72c6a045e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
