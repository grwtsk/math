# TotallyBounded.isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a6009b2-5ffd-3f4b-40de-2baaf6bf25b3",
  "kind": "lemma",
  "lexical_name": "TotallyBounded.isSeparable",
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
  "slug": "totallybounded-isseparable--cbd0de8c1720e7121415d5dd",
  "source": {
    "blob": "4d07d51a5ccc3e482bdf6e96949ccb19930adeb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd0de8c1720e7121415d5ddcf1805b27ca5b575c00ba80a0f3a6a466c5c71e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a6009b2-5ffd-3f4b-40de-2baaf6bf25b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TotallyBounded.isSeparable [UniformSpace X] [i : IsCountablyGenerated (𝓤 X)]
    {s : Set X} (h : TotallyBounded s) : TopologicalSpace.IsSeparable s := by
  letI := (UniformSpace.pseudoMetricSpace (X := X)).toPseudoEMetricSpace
  rw [EMetric.totallyBounded_iff] at h
  have h' : ∀ ε > 0, ∃ t, Set.Countable t ∧ s ⊆ ⋃ y ∈ t, EMetric.closedBall y ε := by
    intro ε hε
    obtain ⟨t, ht⟩ := h ε hε
    refine ⟨t, ht.1.countable, subset_trans ht.2 ?_⟩
    gcongr
    exact EMetric.ball_subset_closedBall
  obtain ⟨t, _, htc, hts⟩ := EMetric.subset_countable_closure_of_almost_dense_set s h'
  exact ⟨t, htc, hts⟩

variable {α : Type*}
open TopologicalSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d07d51a5ccc3e482bdf6e96949ccb19930adeb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
