# prod_mono_of_subset_of_one_le₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2856e97d-17de-f270-60eb-6e99559c0dc4",
  "kind": "lemma",
  "lexical_name": "prod_mono_of_subset_of_one_le₀",
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
  "slug": "prod-mono-of-subset-of-one-le--cfbd970949b0101c78e893a9",
  "source": {
    "blob": "662349e5e1aa516774c55f09e96ef80187a257ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfbd970949b0101c78e893a9c8457a00d13b0772377ec249751e34108a8b6079",
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

Occurrence: `result:2856e97d-17de-f270-60eb-6e99559c0dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_mono_of_subset_of_one_le₀ (h : s ⊆ t) (hf₀ : ∀ i ∈ s, 0 ≤ f i) (hfg : ∀ i ∈ s, f i ≤ g i)
    (hf : ∀ i ∈ t, i ∉ s → 1 ≤ g i) : ∏ i ∈ s, f i ≤ ∏ i ∈ t, g i := by
  have := posMulMono_iff_mulPosMono.1 ‹PosMulMono R›
  classical
  calc
      ∏ i ∈ s, f i
    _ ≤ ∏ i ∈ s, g i := by gcongr with i hi; exacts [hf₀, hfg i hi]
    _ ≤ (∏ i ∈ t \ s, g i) * ∏ i ∈ s, g i :=
      le_mul_of_one_le_left (prod_nonneg fun i hi ↦ (hf₀ i hi).trans (hfg i hi)) <|
        one_le_prod₀ <| by simpa only [mem_sdiff, and_imp]
    _ = ∏ i ∈ t \ s ∪ s, g i := (prod_union sdiff_disjoint).symm
    _ = ∏ i ∈ t, g i := by rw [sdiff_union_of_subset h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662349e5e1aa516774c55f09e96ef80187a257ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
