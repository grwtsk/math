# exists_isCartanSubalgebra_engel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72fa98c0c595172f3aa0e93d2883dcd675f5632a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfcf8ff9-57af-2f01-1a2d-5ad7bcafd5f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df105549-b9a0-0194-23e5-a7748cc657bb",
  "kind": "lemma",
  "lexical_name": "exists_isCartanSubalgebra_engel",
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
  "slug": "exists-iscartansubalgebra-engel--08036fce84a17574eb880605",
  "source": {
    "blob": "72fa98c0c595172f3aa0e93d2883dcd675f5632a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 374,
    "path": "GRWTSK/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08036fce84a17574eb88060515c9600b5a62de688fbb75397bdf4977c0bd3805",
  "verification": {
    "reference": "docs/verification/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df105549-b9a0-0194-23e5-a7748cc657bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isCartanSubalgebra_engel [Infinite K] :
    ∃ x : L, IsCartanSubalgebra (engel K x) := by
  apply exists_isCartanSubalgebra_engel_of_finrank_le_card
  exact natCast_le_aleph0.trans <| Cardinal.infinite_iff.mp ‹Infinite K›

end Field

end LieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fa98c0c595172f3aa0e93d2883dcd675f5632a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
