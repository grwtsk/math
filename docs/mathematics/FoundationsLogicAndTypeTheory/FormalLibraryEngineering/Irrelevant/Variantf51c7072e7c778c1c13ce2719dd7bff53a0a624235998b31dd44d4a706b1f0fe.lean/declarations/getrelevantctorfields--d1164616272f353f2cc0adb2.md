# getRelevantCtorFields?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:793a5c861f9078292c27b8171bd0098dfd08db6d63afd471ea8a8288566b0bce",
  "kind": "def",
  "lexical_name": "getRelevantCtorFields?",
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
  "slug": "getrelevantctorfields--d1164616272f353f2cc0adb2",
  "source": {
    "blob": "b2d9c5d99fb832c517b87d15b29ac7a30e1e3ec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variantf51c7072e7c778c1c13ce2719dd7bff53a0a624235998b31dd44d4a706b1f0fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1164616272f353f2cc0adb2cf03ffcb8931c738abd2de8b54f95b81e1736988",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variantf51c7072e7c778c1c13ce2719dd7bff53a0a624235998b31dd44d4a706b1f0fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:793a5c861f9078292c27b8171bd0098dfd08db6d63afd471ea8a8288566b0bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getRelevantCtorFields? (ctorName : Name) (trivialType : Expr → MetaM Bool) :
    CoreM (Option (Array Bool)) := do
  let .ctorInfo info ← getConstInfo ctorName | unreachable!
  if !isPrivateName info.induct && isPrivateName ctorName then
    try
      withExporting do
      go info
    catch _ => return none
  else go info
where go info :=
  Meta.MetaM.run' do
    Meta.forallTelescopeReducing info.type fun xs _ => do
      let mut result := #[]
      for x in xs[info.numParams...*] do
        let type ← Meta.inferType x
        result := result.push !(← trivialType type)
      return result

/--
We say a structure has a trivial structure if it has not builtin support in the runtime,
it has only one constructor, and this constructor has only one relevant field.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variantf51c7072e7c778c1c13ce2719dd7bff53a0a624235998b31dd44d4a706b1f0fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variantf51c7072e7c778c1c13ce2719dd7bff53a0a624235998b31dd44d4a706b1f0fe.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d9c5d99fb832c517b87d15b29ac7a30e1e3ec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
