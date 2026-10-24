# IsSRGWith.card_commonNeighbors_eq_of_adj_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca8a2220-4a6b-c896-d388-dc3b6ec167f2",
  "kind": "theorem",
  "lexical_name": "IsSRGWith.card_commonNeighbors_eq_of_adj_compl",
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
  "slug": "issrgwith-card-commonneighbors-eq-of-adj-compl--b023d9826226a0d20a13cdff",
  "source": {
    "blob": "ba6718795cc77b500fee8eb959c9fd00b92743f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b023d9826226a0d20a13cdff3b88edd2d157b16d93a778b78f7b256ea20cf771",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8a2220-4a6b-c896-d388-dc3b6ec167f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSRGWith.card_commonNeighbors_eq_of_adj_compl (h : G.IsSRGWith n k ℓ μ) {v w : V}
    (ha : Gᶜ.Adj v w) : Fintype.card (Gᶜ.commonNeighbors v w) = n - (2 * k - μ) - 2 := by
  simp only [← Set.toFinset_card, commonNeighbors, Set.toFinset_inter, neighborSet_compl,
    Set.toFinset_sdiff, Set.toFinset_singleton, Set.toFinset_compl, ← neighborFinset_def]
  simp_rw [compl_neighborFinset_sdiff_inter_eq]
  have hne : v ≠ w := ne_of_adj _ ha
  rw [compl_adj] at ha
  rw [card_sdiff_of_subset, ← insert_eq, card_insert_of_notMem, card_singleton,
    ← Finset.compl_union]
  · rw [card_compl, h.card_neighborFinset_union_of_not_adj hne ha.2, ← h.card]
  · simp only [hne.symm, not_false_iff, mem_singleton]
  · intro u
    simp only [mem_union, mem_compl, mem_neighborFinset, mem_inter, mem_singleton]
    rintro (rfl | rfl) <;> simpa [adj_comm] using ha.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba6718795cc77b500fee8eb959c9fd00b92743f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
