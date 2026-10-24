# IsLocallyFiniteMeasure.withDensity_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b84d969-171d-a66c-c395-705655e88589",
  "kind": "lemma",
  "lexical_name": "IsLocallyFiniteMeasure.withDensity_coe",
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
  "slug": "islocallyfinitemeasure-withdensity-coe--a2d212efbdba9b86a0e5ed26",
  "source": {
    "blob": "0f51eb0c740e3d8b909bd0983612432b488f8639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 752,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d212efbdba9b86a0e5ed262387e958ad612ffce3bc3c28135e88bdbd6bb1c6",
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

Occurrence: `result:0b84d969-171d-a66c-c395-705655e88589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocallyFiniteMeasure.withDensity_coe {f : α → ℝ≥0} (hf : Continuous f) :
    IsLocallyFiniteMeasure (μ.withDensity fun x ↦ f x) := by
  refine ⟨fun x ↦ ?_⟩
  rcases (μ.finiteAt_nhds x).exists_mem_basis ((nhds_basis_opens' x).restrict_subset
    ((hf.tendsto x).eventually_le_const (lt_add_one _))) with ⟨U, ⟨⟨hUx, hUo⟩, hUf⟩, hμU⟩
  refine ⟨U, hUx, ?_⟩
  rw [withDensity_apply _ hUo.measurableSet]
  exact setLIntegral_lt_top_of_bddAbove hμU.ne ⟨f x + 1, forall_mem_image.2 hUf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f51eb0c740e3d8b909bd0983612432b488f8639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
