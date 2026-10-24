# flatten_flatten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d394abc85a852644392157668b505932dd3f7780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bf070b4-6707-7cfe-65d5-cdf1bfe49609",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dcbbc6a-7ea2-fec1-85e3-a98ea731854e",
  "kind": "theorem",
  "lexical_name": "flatten_flatten",
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
  "slug": "flatten-flatten--8315cb21e8e2f7f5f93b6b77",
  "source": {
    "blob": "d394abc85a852644392157668b505932dd3f7780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2221,
    "line": 2208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8315cb21e8e2f7f5f93b6b776150d5227988d0a9ff70b99cb11823dfe98de4b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dcbbc6a-7ea2-fec1-85e3-a98ea731854e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2208–2221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flatten_flatten {xss : Array (Array (Array α))} : flatten (flatten xss) = flatten (map flatten xss) := by
  induction xss using array₃_induction with
  | of xss =>
    rw [flatten_toArray_map_toArray]
    have : (xss.map (fun xs => xs.map List.toArray)).flatten = xss.flatten.map List.toArray := by
      induction xss with
      | nil => simp
      | cons xs xss ih =>
        simp only [List.map_cons, List.flatten_cons, ih, List.map_append]
    rw [this, flatten_toArray_map_toArray, List.flatten_flatten, ← List.map_toArray, Array.map_map,
      ← List.map_toArray, map_map, Function.comp_def]
    simp only [Function.comp_apply, flatten_toArray_map_toArray]
    rw [List.map_toArray, ← Function.comp_def, ← List.map_map, flatten_toArray_map_toArray]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean#L2208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d394abc85a852644392157668b505932dd3f7780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
