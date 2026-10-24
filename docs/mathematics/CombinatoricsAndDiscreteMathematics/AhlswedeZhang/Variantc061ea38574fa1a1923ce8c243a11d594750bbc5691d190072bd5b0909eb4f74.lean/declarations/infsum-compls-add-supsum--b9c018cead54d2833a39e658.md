# infSum_compls_add_supSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0c56030-16e1-3cf3-562b-caaee14713b8",
  "kind": "lemma",
  "lexical_name": "infSum_compls_add_supSum",
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
  "slug": "infsum-compls-add-supsum--b9c018cead54d2833a39e658",
  "source": {
    "blob": "75df52912d641f12fc6ec94023ddbbf69f56672b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantc061ea38574fa1a1923ce8c243a11d594750bbc5691d190072bd5b0909eb4f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c018cead54d2833a39e658e24c3bdd4d0d33b82f52321686bf7d9e94fd1bff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantc061ea38574fa1a1923ce8c243a11d594750bbc5691d190072bd5b0909eb4f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0c56030-16e1-3cf3-562b-caaee14713b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma infSum_compls_add_supSum (𝒜 : Finset (Finset α)) :
    infSum 𝒜ᶜˢ + supSum 𝒜 = card α * ∑ k ∈ range (card α), (k : ℚ)⁻¹ + 1 := by
  unfold infSum supSum
  rw [← @map_univ_of_surjective (Finset α) _ _ _ ⟨compl, compl_injective⟩ compl_surjective, sum_map]
  simp only [Function.Embedding.coeFn_mk, univ_map_embedding, ← compl_truncatedSup,
    ← sum_add_distrib, card_compl, cast_sub (card_le_univ _), choose_symm (card_le_univ _),
    ← add_div, sub_add_cancel, Fintype.sum_div_mul_card_choose_card]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantc061ea38574fa1a1923ce8c243a11d594750bbc5691d190072bd5b0909eb4f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantc061ea38574fa1a1923ce8c243a11d594750bbc5691d190072bd5b0909eb4f74.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75df52912d641f12fc6ec94023ddbbf69f56672b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
