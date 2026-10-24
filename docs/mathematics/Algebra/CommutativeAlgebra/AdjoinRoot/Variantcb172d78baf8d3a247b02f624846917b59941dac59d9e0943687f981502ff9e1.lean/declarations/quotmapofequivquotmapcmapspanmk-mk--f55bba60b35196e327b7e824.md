# quotMapOfEquivQuotMapCMapSpanMk_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 736,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52ffa5bb-f589-82cf-e37a-237b6bbd37e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8479903d-4a1c-c912-f786-9152aa328d02",
  "kind": "theorem",
  "lexical_name": "quotMapOfEquivQuotMapCMapSpanMk_mk",
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
  "slug": "quotmapofequivquotmapcmapspanmk-mk--f55bba60b35196e327b7e824",
  "source": {
    "blob": "30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 736,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f55bba60b35196e327b7e824d70c0debe096c330e28307d30fafdd2580c80cf3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8479903d-4a1c-c912-f786-9152aa328d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotMapOfEquivQuotMapCMapSpanMk_mk (x : AdjoinRoot f) :
    quotMapOfEquivQuotMapCMapSpanMk I f (Ideal.Quotient.mk (I.map (of f)) x) =
      Ideal.Quotient.mk (Ideal.map (Ideal.Quotient.mk (span {f})) (I.map (C : R →+* R[X]))) x := rfl
set_option linter.uppercaseLean3 false in
#align adjoin_root.quot_map_of_equiv_quot_map_C_map_span_mk_mk AdjoinRoot.quotMapOfEquivQuotMapCMapSpanMk_mk

--this lemma should have the simp tag but this causes a lint issue
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
