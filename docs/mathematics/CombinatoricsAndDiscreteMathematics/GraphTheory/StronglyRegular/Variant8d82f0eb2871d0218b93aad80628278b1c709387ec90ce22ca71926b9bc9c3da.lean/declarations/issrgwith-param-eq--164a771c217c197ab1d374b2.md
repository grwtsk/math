# IsSRGWith.param_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b20a6dc-10ae-9a34-b974-77a417899d08",
  "kind": "theorem",
  "lexical_name": "IsSRGWith.param_eq",
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
  "slug": "issrgwith-param-eq--164a771c217c197ab1d374b2",
  "source": {
    "blob": "b220eab8502d09f7538ddffb81ecb6d23e74f44c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:164a771c217c197ab1d374b2fb1d401801de33364a4999ec9ea0ecf4566b2b89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b20a6dc-10ae-9a34-b974-77a417899d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSRGWith.param_eq (h : G.IsSRGWith n k ℓ μ) (hn : 0 < n) :
    k * (k - ℓ - 1) = (n - k - 1) * μ := by
  rw [← h.card, Fintype.card_pos_iff] at hn
  obtain ⟨v⟩ := hn
  convert card_mul_eq_card_mul G.Adj (s := G.neighborFinset v) (t := Gᶜ.neighborFinset v) _ _
  · simp [h.regular v]
  · simp [h.compl.regular v]
  · intro w hw
    rw [mem_neighborFinset] at hw
    simp_rw [bipartiteAbove, show G.Adj w = fun a => G.Adj w a by rfl, ← mem_neighborFinset,
      filter_mem_eq_inter]
    have s : {v} ⊆ G.neighborFinset w \ G.neighborFinset v := by
      rw [singleton_subset_iff, mem_sdiff, mem_neighborFinset]
      exact ⟨hw.symm, G.not_mem_neighborFinset_self v⟩
    rw [inter_comm, neighborFinset_compl, inter_sdiff, ← sdiff_eq_inter_compl, card_sdiff s,
      card_singleton, ← sdiff_inter_self_left, card_sdiff (by apply inter_subset_left)]
    congr
    · simp [h.regular w]
    · simp_rw [inter_comm, neighborFinset_def, ← Set.toFinset_inter, ← h.of_adj v w hw,
        ← Set.toFinset_card]
      congr!
  · intro w hw
    simp_rw [neighborFinset_compl, mem_sdiff, mem_compl, mem_singleton, mem_neighborFinset,
      ← Ne.def] at hw
    simp_rw [bipartiteBelow, adj_comm, ← mem_neighborFinset, filter_mem_eq_inter,
      neighborFinset_def, ← Set.toFinset_inter, ← h.of_not_adj v w hw.2.symm hw.1,
      ← Set.toFinset_card]
    congr!

/-- Let `A` and `C` be the adjacency matrices of a strongly regular graph with parameters `n k ℓ μ`
and its complement respectively and `I` be the identity matrix,
then `A ^ 2 = k • I + ℓ • A + μ • C`. `C` is equivalent to the expression `J - I - A`
more often found in the literature, where `J` is the all-ones matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b220eab8502d09f7538ddffb81ecb6d23e74f44c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
