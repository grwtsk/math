# UInt64.toFloat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:998d498ba81aacbabbdc3e82f13684dafb1ae95aecf1c8eb7c4eaccb54e6cd62",
  "kind": "def",
  "lexical_name": "UInt64.toFloat",
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
  "slug": "uint64-tofloat--ac69d079ffe3f9cfa6830a04",
  "source": {
    "blob": "6a5c4693bb9575bda666217305bee03e96ed39f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 290,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant4561caee678e0a5b82fa2720598e292768cef8a13502cc26310d3565c91d67e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac69d079ffe3f9cfa6830a046f0baeaec146791d386a470770106692d66ae584",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant4561caee678e0a5b82fa2720598e292768cef8a13502cc26310d3565c91d67e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:998d498ba81aacbabbdc3e82f13684dafb1ae95aecf1c8eb7c4eaccb54e6cd62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[extern "lean_uint64_to_float"] def UInt64.toFloat (n : UInt64) : Float :=
  .ofModel (.ofUInt64 n)
/--
Obtains a `Float` whose value is near the given `USize`.

It will be exactly the value of the given `USize` if such a `Float` exists. If no such `Float`
exists, the returned value will either be the smallest `Float` that is larger than the given value,
or the largest `Float` that is smaller than the given value.

This function has a logical model in terms of `Float.Model`, but is overridden at runtime with an
efficient implementation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant4561caee678e0a5b82fa2720598e292768cef8a13502cc26310d3565c91d67e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant4561caee678e0a5b82fa2720598e292768cef8a13502cc26310d3565c91d67e2.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a5c4693bb9575bda666217305bee03e96ed39f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
