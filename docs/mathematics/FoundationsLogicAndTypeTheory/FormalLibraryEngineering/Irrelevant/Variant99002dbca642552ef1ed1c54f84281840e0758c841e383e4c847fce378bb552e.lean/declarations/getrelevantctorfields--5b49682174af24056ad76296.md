# getRelevantCtorFields?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fb9e6a50cb4b74ea1c62bd9c8f8d1d62d7356ed1f2c5846e183be2b819b56b9",
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
  "slug": "getrelevantctorfields--5b49682174af24056ad76296",
  "source": {
    "blob": "cecfb64e23c2230637fc9a348d7def308ecf293c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variant99002dbca642552ef1ed1c54f84281840e0758c841e383e4c847fce378bb552e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b49682174af24056ad762968a11d593a17f11d8b5f0890ad66f7066ff50bac5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variant99002dbca642552ef1ed1c54f84281840e0758c841e383e4c847fce378bb552e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fb9e6a50cb4b74ea1c62bd9c8f8d1d62d7356ed1f2c5846e183be2b819b56b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variant99002dbca642552ef1ed1c54f84281840e0758c841e383e4c847fce378bb552e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variant99002dbca642552ef1ed1c54f84281840e0758c841e383e4c847fce378bb552e.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cecfb64e23c2230637fc9a348d7def308ecf293c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
