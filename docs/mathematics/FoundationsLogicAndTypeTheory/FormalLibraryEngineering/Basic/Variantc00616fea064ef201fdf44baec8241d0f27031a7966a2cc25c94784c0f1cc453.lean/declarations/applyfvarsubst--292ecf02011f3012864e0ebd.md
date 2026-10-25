# applyFVarSubst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2191d634b8f1b659a5665da9653ec6b6ae372e9acbf8d06dca73a03744928334",
  "kind": "def",
  "lexical_name": "applyFVarSubst",
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
  "slug": "applyfvarsubst--292ecf02011f3012864e0ebd",
  "source": {
    "blob": "19f1a2ebff1dd55f115df1effa919e30ec3e5c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:292ecf02011f3012864e0ebdb10f72ef1028e03736c0caf38d1436ffad10e662",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2191d634b8f1b659a5665da9653ec6b6ae372e9acbf8d06dca73a03744928334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def applyFVarSubst (s : FVarSubst) : Pattern → Pattern
  | inaccessible e  => inaccessible $ s.apply e
  | ctor n us ps fs => ctor n us (ps.map s.apply) $ fs.map (applyFVarSubst s)
  | val e           => val $ s.apply e
  | arrayLit t xs   => arrayLit (s.apply t) $ xs.map (applyFVarSubst s)
  | var fvarId      => match s.find? fvarId with
    | some e => inaccessible e
    | none   => var fvarId
  | as fvarId p hId => match s.find? fvarId with
    | none   => as fvarId (applyFVarSubst s p) hId
    | some _ => applyFVarSubst s p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19f1a2ebff1dd55f115df1effa919e30ec3e5c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
