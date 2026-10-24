# mobius_lemma_2_sub_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0469e52a1dea229b348e0e5d72172ba91f8a1022",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8ada2f2-a59a-8cf3-8586-b6bb47e7672a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58e7f8af-835c-ae74-27df-24462e3ae204",
  "kind": "theorem",
  "lexical_name": "mobius_lemma_2_sub_1",
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
  "slug": "mobius-lemma-2-sub-1--649ec0e80ce82f2282b6e001",
  "source": {
    "blob": "0469e52a1dea229b348e0e5d72172ba91f8a1022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 415,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:649ec0e80ce82f2282b6e001fe1d30f7df76b20cb3b60d50ee7c9c4104ee705b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58e7f8af-835c-ae74-27df-24462e3ae204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_lemma_2_sub_1 (x : ℝ) (hx : x > 0) (K : ℕ) (hK : (K : ℝ) ≤ x) :
    ∑ k ∈ Ioc 0 ⌊x⌋₊, M (sqrt (x / k)) = ∑ k ∈ range (K + 1), M (sqrt (x / k)) +
      ∑ k ∈ Ico (K + 1) (⌊x⌋₊ + 2), ∫ _ in (k - 0.5)..(k + 0.5), (M (sqrt (x / k)) : ℝ) := by
  norm_num [sum_Ico_eq_sub]
  rw [sum_range_add_sum_Ico]
  · erw [← Icc_succ_left_eq_Ioc, sum_Ico_eq_sub _]
    · norm_num [Finset.sum_range_succ, M]
      rw [Nat.floor_eq_zero.mpr]
      · norm_num
      · rw [div_lt_one (by positivity), sqrt_lt_sqrt_iff] <;> linarith [Nat.lt_floor_add_one x]
    · simp
  · linarith [Nat.le_floor hK]

@[blueprint
  "mobius-lemma-2-sub-2"
  (title := "Mobius Lemma 2 - second step")
  (statement := /--
    For any $K \leq x$, for $f(u) = M(\sqrt{x/u})$,
    \[\sum_{K < k\leq x+1} \int_{k-\frac{1}{2}}^{k+\frac{1}{2}} f(u) du =
      \int_{K+\frac{1}{2}}^{\lfloor x\rfloor + \frac{3}{2}} f(u) du =
      \int_{K+\frac{1}{2}}^x f(u) du,\]
  -/)
  (proof := /--
    This is just splitting the integral at $K$, since $f(u) = M(\sqrt{x/u}) = 0$ for $x>u$.
  -/)
  (latexEnv := "sublemma")
  (discussion := 529)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0469e52a1dea229b348e0e5d72172ba91f8a1022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
