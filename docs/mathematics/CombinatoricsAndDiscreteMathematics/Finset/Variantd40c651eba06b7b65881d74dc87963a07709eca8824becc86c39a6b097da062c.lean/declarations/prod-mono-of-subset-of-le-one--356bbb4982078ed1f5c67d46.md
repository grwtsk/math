# prod_mono_of_subset_of_le_one₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eedc22f1-661c-460e-d867-462c5798fe19",
  "kind": "lemma",
  "lexical_name": "prod_mono_of_subset_of_le_one₀",
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
  "slug": "prod-mono-of-subset-of-le-one--356bbb4982078ed1f5c67d46",
  "source": {
    "blob": "662349e5e1aa516774c55f09e96ef80187a257ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:356bbb4982078ed1f5c67d46104fd588fd2e51dbcc977343392f5b0039964f1a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eedc22f1-661c-460e-d867-462c5798fe19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_mono_of_subset_of_le_one₀ (h : s ⊆ t) (hg₀ : ∀ i ∈ t, 0 ≤ g i) (hgf : ∀ i ∈ s, g i ≤ f i)
    (hf : ∀ i ∈ t, i ∉ s → g i ≤ 1) :
    ∏ i ∈ t, g i ≤ ∏ i ∈ s, f i := by
  have := posMulMono_iff_mulPosMono.1 ‹PosMulMono R›
  classical
  calc
    ∏ i ∈ t, g i
    _ = ∏ i ∈ t \ s ∪ s, g i := by rw [sdiff_union_of_subset h]
    _ = (∏ i ∈ t \ s, g i) * ∏ i ∈ s, g i := prod_union sdiff_disjoint
    _ ≤ ∏ i ∈ s, g i :=
      mul_le_of_le_one_left (prod_nonneg (by grind)) (prod_le_one₀ (by grind) (by grind))
    _ ≤ ∏ i ∈ s, f i := by gcongr with i hi; exacts [fun i hi ↦ hg₀ _ <| h hi, hgf i hi]

@[gcongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662349e5e1aa516774c55f09e96ef80187a257ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
