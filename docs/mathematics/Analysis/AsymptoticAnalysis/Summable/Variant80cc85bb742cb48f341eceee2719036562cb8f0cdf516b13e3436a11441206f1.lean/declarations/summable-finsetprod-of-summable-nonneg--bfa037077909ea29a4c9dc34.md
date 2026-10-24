# summable_finsetProd_of_summable_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdf9889b15210e4f35e1ab32406362acc5e54d85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9e4c7ba-d6c7-cf26-c4d4-dfb6f4efb96b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e092d86a-c200-6fd8-8540-829910b8a83d",
  "kind": "lemma",
  "lexical_name": "summable_finsetProd_of_summable_nonneg",
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
  "slug": "summable-finsetprod-of-summable-nonneg--bfa037077909ea29a4c9dc34",
  "source": {
    "blob": "cdf9889b15210e4f35e1ab32406362acc5e54d85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa037077909ea29a4c9dc34249631eddf9045f470f2b4b3026ef0a1d01b67fc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e092d86a-c200-6fd8-8540-829910b8a83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_finsetProd_of_summable_nonneg {f : ι → ℝ} (hf : ∀ i, 0 ≤ f i)
    (hfs : Summable f) : Summable (fun s : Finset ι ↦ ∏ i ∈ s, f i) := by
  classical
  refine summable_of_sum_le (c := Real.exp (∑' i, f i))
    (fun s ↦ Finset.prod_nonneg fun i _ ↦ hf i) fun T ↦ ?_
  calc ∑ s ∈ T, ∏ i ∈ s, f i
      ≤ ∑ s ∈ (T.biUnion id).powerset, ∏ i ∈ s, f i :=
        Finset.sum_le_sum_of_subset_of_nonneg (fun s hs ↦ Finset.mem_powerset.mpr
          (Finset.subset_biUnion_of_mem id hs)) (fun s _ _ ↦ Finset.prod_nonneg fun i _ ↦ hf i)
    _ = ∏ i ∈ T.biUnion id, (1 + f i) := (Finset.prod_one_add _).symm
    _ ≤ Real.exp (∑ i ∈ T.biUnion id, f i) := Real.prod_one_add_le_exp_sum _ hf
    _ ≤ Real.exp (∑' i, f i) :=
        Real.exp_le_exp.mpr (hfs.sum_le_tsum _ fun _ _ ↦ hf _)

@[deprecated (since := "2026-04-08")]
alias summable_finset_prod_of_summable_nonneg := summable_finsetProd_of_summable_nonneg

section NormedRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf9889b15210e4f35e1ab32406362acc5e54d85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
