# comap_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28d60c14d3627c070d272de77cbe95a661fc0218",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 808,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1863d338-018a-ecdb-f155-98c0c735d1b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b506827e-e4e5-4813-f449-7a750efebf54",
  "kind": "theorem",
  "lexical_name": "comap_top",
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
  "slug": "comap-top--f83bb708738ffb36676e1fb1",
  "source": {
    "blob": "28d60c14d3627c070d272de77cbe95a661fc0218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 808,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variant66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f83bb708738ffb36676e1fb17e8ee4e3828fe727f9c48c31392cd8403a6e2257",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subfield/Variant66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b506827e-e4e5-4813-f449-7a750efebf54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 808–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_top (f : K →+* L) : (⊤ : Subfield L).comap f = ⊤ :=
  (gc_map_comap f).u_top
#align subfield.comap_top Subfield.comap_top

/-- The underlying set of a non-empty directed sSup of subfields is just a union of the subfields.
  Note that this fails without the directedness assumption (the union of two subfields is
  typically not a subfield) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subfield/Variant66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variant66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean#L808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d60c14d3627c070d272de77cbe95a661fc0218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
