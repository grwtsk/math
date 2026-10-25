# prod_subset_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13a420b7-7c4d-1192-c651-0d0a953d214a",
  "kind": "theorem",
  "lexical_name": "prod_subset_prod_iff",
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
  "slug": "prod-subset-prod-iff--43e72468503e9e7702621cb1",
  "source": {
    "blob": "c39088ed5447a088939edfa8a34a1a43284d6676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 407,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43e72468503e9e7702621cb114839fd26ad9cfa2e903f97609da26ebc8d2f35c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13a420b7-7c4d-1192-c651-0d0a953d214a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_subset_prod_iff : s ×ˢ t ⊆ s₁ ×ˢ t₁ ↔ s ⊆ s₁ ∧ t ⊆ t₁ ∨ s = ∅ ∨ t = ∅ := by
  cases' (s ×ˢ t).eq_empty_or_nonempty with h h
  · simp [h, prod_eq_empty_iff.1 h]
  have st : s.Nonempty ∧ t.Nonempty := by rwa [prod_nonempty_iff] at h
  refine' ⟨fun H => Or.inl ⟨_, _⟩, _⟩
  · have := image_subset (Prod.fst : α × β → α) H
    rwa [fst_image_prod _ st.2, fst_image_prod _ (h.mono H).snd] at this
  · have := image_subset (Prod.snd : α × β → β) H
    rwa [snd_image_prod st.1, snd_image_prod (h.mono H).fst] at this
  · intro H
    simp only [st.1.ne_empty, st.2.ne_empty, or_false_iff] at H
    exact prod_mono H.1 H.2
#align set.prod_subset_prod_iff Set.prod_subset_prod_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39088ed5447a088939edfa8a34a1a43284d6676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
