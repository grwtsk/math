# getD_filter_of_getKey?_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73ae446de8bfd6b9b2797c9cb7c69ed4447c4108",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 5947,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e4dc55f28a3ec8ed18f446d825343bb51265045edc1232724b4620e8110e089.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e2d32d0-8bba-bd55-f8cf-8ea96ea1e352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53bff6d7-cca6-ea60-7680-5839671ebdff",
  "kind": "theorem",
  "lexical_name": "getD_filter_of_getKey?_eq_some",
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
  "slug": "getd-filter-of-getkey-eq-some--5911c04a81f287d59d238534",
  "source": {
    "blob": "73ae446de8bfd6b9b2797c9cb7c69ed4447c4108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5954,
    "line": 5947,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant0e4dc55f28a3ec8ed18f446d825343bb51265045edc1232724b4620e8110e089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5911c04a81f287d59d23853490e004fd5e012997275a16c96ccb945219510788",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant0e4dc55f28a3ec8ed18f446d825343bb51265045edc1232724b4620e8110e089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53bff6d7-cca6-ea60-7680-5839671ebdff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5947–5954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_filter_of_getKey?_eq_some [TransCmp cmp]
    {f : α → β → Bool} {k k' : α} {fallback : β} :
    t.getKey? k = some k' →
      Const.getD (t.filter f) k fallback =
        ((Const.get? t k).filter (fun x => f k' x)).getD fallback :=
  t.inductionOn fun _ => DTreeMap.Const.getD_filter_of_getKey?_eq_some

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant0e4dc55f28a3ec8ed18f446d825343bb51265045edc1232724b4620e8110e089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant0e4dc55f28a3ec8ed18f446d825343bb51265045edc1232724b4620e8110e089.lean#L5947).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73ae446de8bfd6b9b2797c9cb7c69ed4447c4108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
