# prod_vanishing_of_summable_norm

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
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e459119-916d-e184-e88d-132b9f072e09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b62f1688-9111-73a1-57f9-fcec9f788ef2",
  "kind": "lemma",
  "lexical_name": "prod_vanishing_of_summable_norm",
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
  "slug": "prod-vanishing-of-summable-norm--0f36591683e4b9cc10e04e53",
  "source": {
    "blob": "cdf9889b15210e4f35e1ab32406362acc5e54d85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f36591683e4b9cc10e04e53dcfd9d8170956d714cdede074d9ac15413df589f",
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

Occurrence: `result:b62f1688-9111-73a1-57f9-fcec9f788ef2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_vanishing_of_summable_norm (hf : Summable fun i ↦ ‖f i‖) {ε : ℝ} (hε : 0 < ε) :
    ∃ s₂, ∀ t, Disjoint t s₂ → ‖∏ i ∈ t, (1 + f i) - 1‖ < ε := by
  suffices ∃ s, ∀ t, Disjoint t s → Real.exp (∑ i ∈ t, ‖f i‖) - 1 < ε from
    this.imp fun s hs t ht ↦ (t.norm_prod_one_add_sub_one_le _).trans_lt (hs t ht)
  suffices {x | Real.exp x - 1 < ε} ∈ 𝓝 0 from hf.vanishing this
  let f (x) := Real.exp x - 1
  have : Set.Iio ε ∈ nhds (f 0) := by simpa [f] using Iio_mem_nhds hε
  exact ContinuousAt.preimage_mem_nhds (by fun_prop) this

open Finset in
/-- In a complete normed ring, `∏' i, (1 + f i)` is convergent if the sum of real numbers
`∑' i, ‖f i‖` is convergent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant80cc85bb742cb48f341eceee2719036562cb8f0cdf516b13e3436a11441206f1.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf9889b15210e4f35e1ab32406362acc5e54d85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
