# mobius_lemma_1

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
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5aee09e2-45e4-bef7-d2e4-f0d593abb2e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b098452-62d8-62a5-e0fc-70e3ac0a7e24",
  "kind": "theorem",
  "lexical_name": "mobius_lemma_1",
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
  "slug": "mobius-lemma-1--e8683eeb7035c89e4a99b612",
  "source": {
    "blob": "0469e52a1dea229b348e0e5d72172ba91f8a1022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 389,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8683eeb7035c89e4a99b61298a7a0a0d5acf3e21d28ea1ac980f4b3f5c3ff96",
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

Occurrence: `result:1b098452-62d8-62a5-e0fc-70e3ac0a7e24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_lemma_1 (x : ℝ) (hx : x > 0) :
    R x = ∑ k ∈ Ioc 0 ⌊x⌋₊, M (sqrt (x / k)) - ∫ u in 0..x, (M (sqrt (x / u)) : ℝ) := by
  unfold R
  congr 1
  · exact mod_cast mobius_lemma_1_sub x hx ▸ rfl
  · rw [integral_M_sqrt_div x hx, div_eq_mul_inv, mul_eq_mul_left_iff]
    exact Or.inl <| by simpa using sum_moebius_div_sq.symm

blueprint_comment /--
Since our sums start from $1$, the sum $\sum_{k\leq K}$ is empty for $K=0$.
-/

@[blueprint
  "mobius-lemma-2-sub-1"
  (title := "Mobius Lemma 2 - first step")
  (statement := /--
    For any $K \leq x$,
    $$
    \sum_{k\leq x} M\left(\sqrt{\frac{x}{k}}\right) = \sum_{k\leq K} M\left(\sqrt{\frac{x}{k}}\right)
    + \sum_{K < k\leq x+1} \int_{k-\frac{1}{2}}^{k+\frac{1}{2}}
      M\left(\sqrt{\frac{x}{k}}\right) du.
    $$
  -/)
  (proof := /-- This is just splitting the sum at $K$. -/)
  (latexEnv := "sublemma")
  (discussion := 528)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0469e52a1dea229b348e0e5d72172ba91f8a1022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
