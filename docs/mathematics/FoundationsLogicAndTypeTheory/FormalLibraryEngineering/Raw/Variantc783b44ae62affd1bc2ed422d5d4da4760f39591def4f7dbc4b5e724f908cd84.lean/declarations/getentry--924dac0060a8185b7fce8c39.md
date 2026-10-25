# getEntry!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aebd6fb778977ed2373d6a445d1322d600995c8d67d358321d9521d9ef1dfb01",
  "kind": "def",
  "lexical_name": "getEntry!",
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
  "slug": "getentry--924dac0060a8185b7fce8c39",
  "source": {
    "blob": "f001c012d55ff50b5a617c38a1f984c723f6868e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantc783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:924dac0060a8185b7fce8c392129241675e799527f1e469fc8f1c7976dfa1c4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantc783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aebd6fb778977ed2373d6a445d1322d600995c8d67d358321d9521d9ef1dfb01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def getEntry! [BEq α] [Hashable α] [Inhabited ((a : α) × β a)] (m : Raw α β) (a : α) : (a : α) × β a :=
  if h : 0 < m.buckets.size then
    Raw₀.getEntry! ⟨m, h⟩ a
  else default -- will never happen for well-formed inputs

/--
Returns `true` if the hash map contains no mappings.

Note that if your `BEq` instance is not reflexive or your `Hashable` instance is not
lawful, then it is possible that this function returns `false` even though is not possible
to get anything out of the hash map.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantc783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantc783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f001c012d55ff50b5a617c38a1f984c723f6868e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
