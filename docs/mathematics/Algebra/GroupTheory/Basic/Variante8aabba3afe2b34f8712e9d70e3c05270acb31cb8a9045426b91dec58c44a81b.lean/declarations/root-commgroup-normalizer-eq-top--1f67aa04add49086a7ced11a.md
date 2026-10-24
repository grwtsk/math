# _root_.CommGroup.normalizer_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5e4f4febdacfcd9055276f4632df153795b6122",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f68d8ac-877e-ff2f-de3a-66dfdeca0955",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edc6b4a2-1be9-49cc-488f-57f84ed1f7d2",
  "kind": "theorem",
  "lexical_name": "_root_.CommGroup.normalizer_eq_top",
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
  "slug": "root-commgroup-normalizer-eq-top--1f67aa04add49086a7ced11a",
  "source": {
    "blob": "e5e4f4febdacfcd9055276f4632df153795b6122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 392,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f67aa04add49086a7ced11ad6a4b965b1778fe058ce110fb4821d091c60b991",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edc6b4a2-1be9-49cc-488f-57f84ed1f7d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.CommGroup.normalizer_eq_top {G : Type*} [CommGroup G] (s : Set G) :
    normalizer s = ⊤ := by
  ext
  simp [mem_set_normalizer_iff]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5e4f4febdacfcd9055276f4632df153795b6122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
