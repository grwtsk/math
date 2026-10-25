# withConstants_funMap_sumInl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65406065-634d-e8a3-1772-7711367e5c0c",
  "kind": "theorem",
  "lexical_name": "withConstants_funMap_sumInl",
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
  "slug": "withconstants-funmap-suminl--796e16ca6ab602b1688443c4",
  "source": {
    "blob": "0be882c55dd766e1e917b4ec32f78b67dec57303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 438,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant90ba6c71758b099be76ea4c6d27c25853b46850acd4f34facd38f6623108b47e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:796e16ca6ab602b1688443c4f2741aaf6525883cdcd31c5fd852096d58b0d3f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant90ba6c71758b099be76ea4c6d27c25853b46850acd4f34facd38f6623108b47e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65406065-634d-e8a3-1772-7711367e5c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withConstants_funMap_sumInl [L[[α]].Structure M] [(lhomWithConstants L α).IsExpansionOn M]
    {n} {f : L.Functions n} {x : Fin n → M} : @funMap (L[[α]]) M _ n (Sum.inl f) x = funMap f x :=
  (lhomWithConstants L α).map_onFunction f x

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant90ba6c71758b099be76ea4c6d27c25853b46850acd4f34facd38f6623108b47e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant90ba6c71758b099be76ea4c6d27c25853b46850acd4f34facd38f6623108b47e.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0be882c55dd766e1e917b4ec32f78b67dec57303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
