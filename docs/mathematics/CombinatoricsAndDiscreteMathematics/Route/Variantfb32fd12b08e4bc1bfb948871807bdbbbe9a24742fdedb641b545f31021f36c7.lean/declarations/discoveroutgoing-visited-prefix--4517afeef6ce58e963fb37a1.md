# discoverOutgoing_visited_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c12d6ecc394bd70f1c512552be0886224107d68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 563,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84538947-0db8-c908-4f5d-5897fd585e6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:566a2c02-97d9-7c31-c419-64b87856b598",
  "kind": "theorem",
  "lexical_name": "discoverOutgoing_visited_prefix",
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
  "slug": "discoveroutgoing-visited-prefix--4517afeef6ce58e963fb37a1",
  "source": {
    "blob": "0c12d6ecc394bd70f1c512552be0886224107d68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 563,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4517afeef6ce58e963fb37a1d91ff8c695d1f5691c33238ac65548617f6db231",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:566a2c02-97d9-7c31-c419-64b87856b598`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem discoverOutgoing_visited_prefix
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId)) :
    state.visited <+: (discoverOutgoing state edges).visited := by
  induction edges generalizing state with
  | nil => exact List.prefix_refl _
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      exact (discoverOne_visited_prefix state edge).trans (ih (discoverOne state edge))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c12d6ecc394bd70f1c512552be0886224107d68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
