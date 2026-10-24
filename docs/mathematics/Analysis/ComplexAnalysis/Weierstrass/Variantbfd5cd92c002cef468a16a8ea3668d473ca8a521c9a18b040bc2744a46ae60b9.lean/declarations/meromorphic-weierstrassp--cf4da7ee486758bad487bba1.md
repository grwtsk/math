# meromorphic_weierstrassP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f600c2aa2552d78f482b16686323c7f1db5983a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 908,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49692bc6-ad5f-68b7-889a-3dd2061a3128",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf1a5ef3-3247-b215-4fb3-d4f501abcda3",
  "kind": "lemma",
  "lexical_name": "meromorphic_weierstrassP",
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
  "slug": "meromorphic-weierstrassp--cf4da7ee486758bad487bba1",
  "source": {
    "blob": "f600c2aa2552d78f482b16686323c7f1db5983a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 908,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variantbfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf4da7ee486758bad487bba1aeb127d1b5f7143ffea0401c35e2bbbe93f5b9ef",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Weierstrass/Variantbfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf1a5ef3-3247-b215-4fb3-d4f501abcda3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 908–916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma meromorphic_weierstrassP : Meromorphic ℘[L] := by
  intro x
  by_cases hx : x ∈ L.lattice
  · simp_rw [← funext <| L.weierstrassPExcept_add ⟨x, hx⟩]
    have := (analyticOnNhd_weierstrassPExcept L x x (by simp)).meromorphicAt
    fun_prop
  · exact (L.analyticOnNhd_weierstrassP x hx).meromorphicAt

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Weierstrass/Variantbfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variantbfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean#L908).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f600c2aa2552d78f482b16686323c7f1db5983a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
