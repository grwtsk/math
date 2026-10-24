# walkSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3de40a4b4b602c49cb402b707d4add5d7c3be99e23151a81906e0f33a89fb5d",
  "kind": "def",
  "lexical_name": "walkSurface",
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
  "slug": "walksurface--8462a72337ba1d49ab2ed7a2",
  "source": {
    "blob": "fc84e0ce5c16c9c0971667447058e6d8dd9d4d7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8462a72337ba1d49ab2ed7a225734ec0d3abc04ebf20dd787d61573053b21303",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3de40a4b4b602c49cb402b707d4add5d7c3be99e23151a81906e0f33a89fb5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def walkSurface (snapshot : Snapshot) (nodes : List SyntaxNode) (node : SyntaxNode)
    (cursor : ℕ) : List SurfaceSlot → Option ℕ
  | [] => some cursor
  | .child index :: rest =>
    match node.children[index]? with
    | none => none
    | some id =>
      match nodes[id.value]? with
      | none => none
      | some child =>
        if child.spanBegin = cursor then
          walkSurface snapshot nodes node child.spanEnd rest
        else none
  | .terminal index :: rest =>
    match node.localOccurrences[index]?, snapshot.occurrences[cursor]? with
    | some id, some occurrence =>
      if id = occurrence.id then walkSurface snapshot nodes node (cursor + 1) rest else none
    | _, _ => none

/-- Breadth closure uses exactly the declared node count of finite rounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc84e0ce5c16c9c0971667447058e6d8dd9d4d7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
