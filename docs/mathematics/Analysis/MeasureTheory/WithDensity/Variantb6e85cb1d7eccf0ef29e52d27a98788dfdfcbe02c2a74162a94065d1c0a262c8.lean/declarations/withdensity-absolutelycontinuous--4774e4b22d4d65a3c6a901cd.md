# withDensity_absolutelyContinuous'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71291004-85da-e4ee-ed02-115c5098af1e",
  "kind": "lemma",
  "lexical_name": "withDensity_absolutelyContinuous'",
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
  "slug": "withdensity-absolutelycontinuous--4774e4b22d4d65a3c6a901cd",
  "source": {
    "blob": "0f51eb0c740e3d8b909bd0983612432b488f8639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 584,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4774e4b22d4d65a3c6a901cdec88d63ff39d229cbd76aacc6cbabd8a64fe52c5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71291004-85da-e4ee-ed02-115c5098af1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withDensity_absolutelyContinuous' {μ : Measure α} {f : α → ℝ≥0∞}
    (hf : AEMeasurable f μ) (hf_ne_zero : ∀ᵐ x ∂μ, f x ≠ 0) :
    μ ≪ μ.withDensity f := by
  refine Measure.AbsolutelyContinuous.mk (fun s hs hμs ↦ ?_)
  rw [withDensity_apply _ hs, lintegral_eq_zero_iff' hf.restrict,
    ae_eq_restrict_iff_indicator_ae_eq hs, Set.indicator_zero', Filter.EventuallyEq, ae_iff] at hμs
  simp only [ae_iff, ne_eq, not_not] at hf_ne_zero
  simp only [Pi.zero_apply, Set.indicator_apply_eq_zero, not_forall, exists_prop] at hμs
  have hle : s ⊆ {a | a ∈ s ∧ ¬f a = 0} ∪ {a | f a = 0} :=
    fun x hx ↦ or_iff_not_imp_right.mpr <| fun hnx ↦ ⟨hx, hnx⟩
  exact measure_mono_null hle <| nonpos_iff_eq_zero.1 <| le_trans (measure_union_le _ _)
    <| hμs.symm ▸ zero_add _ |>.symm ▸ hf_ne_zero.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f51eb0c740e3d8b909bd0983612432b488f8639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
