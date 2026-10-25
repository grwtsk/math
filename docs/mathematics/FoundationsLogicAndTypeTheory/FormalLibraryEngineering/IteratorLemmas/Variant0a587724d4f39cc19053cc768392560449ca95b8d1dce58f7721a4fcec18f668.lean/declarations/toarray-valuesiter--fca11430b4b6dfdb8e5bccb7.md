# toArray_valuesIter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daaf76ff-8ac6-5f48-2858-bc7160f35e76",
  "kind": "theorem",
  "lexical_name": "toArray_valuesIter",
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
  "slug": "toarray-valuesiter--fca11430b4b6dfdb8e5bccb7",
  "source": {
    "blob": "890b6d612292108d88af5f09d8162e0923cefceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca11430b4b6dfdb8e5bccb729feea84fb0b4ffe29ff962b0602dd2cd05f953f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daaf76ff-8ac6-5f48-2858-bc7160f35e76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem toArray_valuesIter :
    m.valuesIter.toArray = (m.toList.map Sigma.snd).toArray := by
  simp [← Iter.toArray_toList, toList_valuesIter_eq_toList_map_snd]

end ValuesIter

end Std.DHashMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `890b6d612292108d88af5f09d8162e0923cefceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
