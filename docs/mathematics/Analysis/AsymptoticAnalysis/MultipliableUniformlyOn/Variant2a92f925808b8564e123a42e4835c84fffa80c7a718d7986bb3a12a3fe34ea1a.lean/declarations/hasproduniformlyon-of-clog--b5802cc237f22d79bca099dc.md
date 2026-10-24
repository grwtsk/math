# hasProdUniformlyOn_of_clog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a83e1de6e543efa2ad7da5da9f404a3ab32ca770",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a92f925808b8564e123a42e4835c84fffa80c7a718d7986bb3a12a3fe34ea1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efc9c125-3630-4f8d-d12f-3e1ed17bb63e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43381bcd-c91f-8c83-279f-8825039129d3",
  "kind": "lemma",
  "lexical_name": "hasProdUniformlyOn_of_clog",
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
  "slug": "hasproduniformlyon-of-clog--b5802cc237f22d79bca099dc",
  "source": {
    "blob": "a83e1de6e543efa2ad7da5da9f404a3ab32ca770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 59,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant2a92f925808b8564e123a42e4835c84fffa80c7a718d7986bb3a12a3fe34ea1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5802cc237f22d79bca099dcc4059410c6cd67092bd4eab8b5fc97586934c419",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant2a92f925808b8564e123a42e4835c84fffa80c7a718d7986bb3a12a3fe34ea1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43381bcd-c91f-8c83-279f-8825039129d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProdUniformlyOn_of_clog (hf : SummableUniformlyOn (fun i x ↦ log (f i x)) s)
    (hfn : ∀ x ∈ s, ∀ i, f i x ≠ 0)
    (hg : BddAbove <| (fun x ↦ (∑' i, log (f i x)).re) '' s) :
    HasProdUniformlyOn f (fun x ↦ ∏' i, f i x) s := by
  simp only [hasProdUniformlyOn_iff_tendstoUniformlyOn]
  obtain ⟨r, hr⟩ := hf.exists
  suffices H : TendstoUniformlyOn (fun s x ↦ ∏ i ∈ s, f i x) (cexp ∘ r) atTop s by
    refine H.congr_right (hr.tsum_eqOn.comp_left.symm.trans ?_)
    exact fun x hx ↦ (cexp_tsum_eq_tprod (hfn x hx) (hf.summable hx))
  refine (hr.tendstoUniformlyOn.comp_cexp ?_).congr ?_
  · simpa +contextual [← hr.tsum_eqOn _] using hg
  · filter_upwards with s i hi using by simp [exp_sum, fun y ↦ exp_log (hfn i hi y)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant2a92f925808b8564e123a42e4835c84fffa80c7a718d7986bb3a12a3fe34ea1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant2a92f925808b8564e123a42e4835c84fffa80c7a718d7986bb3a12a3fe34ea1a.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a83e1de6e543efa2ad7da5da9f404a3ab32ca770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
