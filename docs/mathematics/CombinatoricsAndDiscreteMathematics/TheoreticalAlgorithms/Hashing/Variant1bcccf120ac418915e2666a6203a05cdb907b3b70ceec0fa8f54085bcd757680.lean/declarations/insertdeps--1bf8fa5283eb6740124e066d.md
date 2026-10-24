# insertDeps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:caaab7c6c3c383933084091d149dd9f1f132ae9759e9f4dd42cb9652acb53210",
  "kind": "def",
  "lexical_name": "insertDeps",
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
  "slug": "insertdeps--1bf8fa5283eb6740124e066d",
  "source": {
    "blob": "6276ea34f6dfa5b6c3033e8444d5e8b26b5f05af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bf8fa5283eb6740124e066dec09748cf73b57a758d1ba40fba8ce1a6de0110a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:caaab7c6c3c383933084091d149dd9f1f132ae9759e9f4dd42cb9652acb53210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def insertDeps (hashMap : ModuleHashMap) (mod : Name) (hashMemo : HashMemo) :
    ModuleHashMap :=
  if hashMap.contains mod then hashMap else
  match (hashMemo.depsMap[mod]?, hashMemo.hashMap[mod]?) with
  | (some deps, some hash) => deps.foldl (insertDeps · · hashMemo) (hashMap.insert mod hash)
  | _ => hashMap

/--
Filters the `hashMap` of a `HashMemo` so that it only contains key/value pairs such that every key:
* Belongs to the given list of module names or
* Corresponds to a module that's imported (transitively or not) by
  some module in the list module names
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6276ea34f6dfa5b6c3033e8444d5e8b26b5f05af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
