# hasSum_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1030,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91d8b2fa-414f-bcb1-8d31-e6d8902c9624",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be045218-1c68-560c-f42a-a9c0e6ca824a",
  "kind": "theorem",
  "lexical_name": "hasSum_single",
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
  "slug": "hassum-single--e0daaa773f50ba47f11f1a4c",
  "source": {
    "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 1030,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0daaa773f50ba47f11f1a4c48067e41b6bf1336df51204932297ec7b4b5c8f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be045218-1c68-560c-f42a-a9c0e6ca824a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1030–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem hasSum_single [Fact (1 ≤ p)] (hp : p ≠ ⊤) (f : lp E p) :
    HasSum (fun i : α => lp.single p i (f i : E i)) f := by
  have hp₀ : 0 < p := zero_lt_one.trans_le Fact.out
  have hp' : 0 < p.toReal := ENNReal.toReal_pos hp₀.ne' hp
  have := lp.hasSum_norm hp' f
  rw [HasSum, Metric.tendsto_nhds] at this ⊢
  intro ε hε
  refine (this _ (Real.rpow_pos_of_pos hε p.toReal)).mono ?_
  intro s hs
  rw [← Real.rpow_lt_rpow_iff dist_nonneg (le_of_lt hε) hp']
  rw [dist_comm] at hs
  simp only [dist_eq_norm, Real.norm_eq_abs] at hs ⊢
  have H : ‖(∑ i ∈ s, lp.single p i (f i : E i)) - f‖ ^ p.toReal =
      ‖f‖ ^ p.toReal - ∑ i ∈ s, ‖f i‖ ^ p.toReal := by
    simpa only [coeFn_neg, Pi.neg_apply, lp.single_neg, Finset.sum_neg_distrib, neg_sub_neg,
      norm_neg, _root_.norm_neg] using lp.norm_compl_sum_single hp' (-f) s
  rw [← H] at hs
  have : |‖(∑ i ∈ s, lp.single p i (f i : E i)) - f‖ ^ p.toReal| =
      ‖(∑ i ∈ s, lp.single p i (f i : E i)) - f‖ ^ p.toReal := by
    simp only [Real.abs_rpow_of_nonneg (norm_nonneg _), abs_norm]
  exact this ▸ hs

/-- Two continuous additive maps from `lp E p` agree if they agree on `lp.single`.

See note [partially-applied ext lemmas]. -/
@[local ext] -- not globally `ext` due to `hp`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean#L1030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95065bf79d4606e53b195edd84b9761a1242ddcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
