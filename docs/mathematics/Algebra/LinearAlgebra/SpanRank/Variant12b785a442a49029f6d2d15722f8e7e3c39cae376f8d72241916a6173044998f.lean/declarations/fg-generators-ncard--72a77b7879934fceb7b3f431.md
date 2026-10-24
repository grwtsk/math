# FG.generators_ncard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4b932cdeb4061e05dddb086faa5a76058b7df61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b84bae49-03bf-61e8-1a70-fb84cbcf3dc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da73409b-1582-373a-cc01-61cdd209e684",
  "kind": "lemma",
  "lexical_name": "FG.generators_ncard",
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
  "slug": "fg-generators-ncard--72a77b7879934fceb7b3f431",
  "source": {
    "blob": "e4b932cdeb4061e05dddb086faa5a76058b7df61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72a77b7879934fceb7b3f431c452bd292171179b8a6ef5f197de790f9d8f7e9f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da73409b-1582-373a-cc01-61cdd209e684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FG.generators_ncard {p : Submodule R M} (h : p.FG) :
    (generators p).ncard = spanFinrank p := by
  rw [← Nat.cast_inj (R := Cardinal), ← fg_iff_spanRank_eq_spanFinrank.mpr h, Set.ncard, Set.encard,
     ENat.card, generators_card, toNat_toENat, ← spanFinrank]
  exact (fg_iff_spanRank_eq_spanFinrank.mpr h).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b932cdeb4061e05dddb086faa5a76058b7df61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
