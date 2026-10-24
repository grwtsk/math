# smoothNumbers_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d511603-f9ed-c0d9-2ede-6a01f9c27166",
  "kind": "lemma",
  "lexical_name": "smoothNumbers_mono",
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
  "slug": "smoothnumbers-mono--815e8ecfc4e420a8f5297ed0",
  "source": {
    "blob": "57503448dd06ca2fc223a8e71a90a8f6015fce3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 325,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:815e8ecfc4e420a8f5297ed0c544d89e9fe4dc700a120358aa5880adecc02569",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d511603-f9ed-c0d9-2ede-6a01f9c27166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[gcongr] lemma smoothNumbers_mono {N M : ℕ} (hNM : N ≤ M) : N.smoothNumbers ⊆ M.smoothNumbers :=
  fun _ hx ↦ ⟨hx.1, fun p hp => (hx.2 p hp).trans_le hNM⟩

/-- All `m`, `0 < m < n` are `n`-smooth numbers -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57503448dd06ca2fc223a8e71a90a8f6015fce3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
