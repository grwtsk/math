# cauchySeq_prod_of_tendsto_cofinite_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb44e7cbd8f51aacfc0ffe4180dfa71c2f1b6ce9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70de7c9e-3a5e-850d-21bf-2e7c869f5ec5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:932d9666-cf51-8afd-a622-8755851bffd1",
  "kind": "theorem",
  "lexical_name": "cauchySeq_prod_of_tendsto_cofinite_one",
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
  "slug": "cauchyseq-prod-of-tendsto-cofinite-one--5da36fa0f1f5b05f2715bf6a",
  "source": {
    "blob": "bb44e7cbd8f51aacfc0ffe4180dfa71c2f1b6ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5da36fa0f1f5b05f2715bf6aaed0633044b71a04e4b31463b790b7d3ca205a51",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:932d9666-cf51-8afd-a622-8755851bffd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_prod_of_tendsto_cofinite_one {f : α → G} (hf : Tendsto f cofinite (𝓝 1)) :
    CauchySeq (fun s ↦ ∏ i ∈ s, f i) := by
  /- Let `U` be a neighborhood of `1`. It suffices to show that there exists `s : Finset α` such
  that for any `t : Finset α` disjoint from `s`, we have `∏ i ∈ t, f i ∈ U`. -/
  apply cauchySeq_finset_iff_prod_vanishing.mpr
  intro U hU
  -- Since `G` is nonarchimedean, `U` contains an open subgroup `V`.
  rcases is_nonarchimedean U hU with ⟨V, hV⟩
  /- Let `s` be the set of all indices `i : α` such that `f i ∉ V`. By our assumption `hf`, this is
  finite. -/
  use (tendsto_def.mp hf V V.mem_nhds_one).toFinset
  /- For any `t : Finset α` disjoint from `s`, the product `∏ i ∈ t, f i` is a product of elements
  of `V`, so it is an element of `V` too. Thus, `∏ i ∈ t, f i ∈ U`, as desired. -/
  intro t ht
  apply hV
  apply Subgroup.prod_mem
  intro i hi
  simpa using Finset.disjoint_left.mp ht hi

/-- Let `G` be a nonarchimedean abelian group, and let `f : ℕ → G` be a function
such that the quotients `f (n + 1) / f n` tend to one. Then the function is a Cauchy sequence. -/
@[to_additive /-- Let `G` be a nonarchimedean additive abelian group, and let `f : ℕ → G` be a
function such that the differences `f (n + 1) - f n` tend to zero.
Then the function is a Cauchy sequence. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb44e7cbd8f51aacfc0ffe4180dfa71c2f1b6ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
