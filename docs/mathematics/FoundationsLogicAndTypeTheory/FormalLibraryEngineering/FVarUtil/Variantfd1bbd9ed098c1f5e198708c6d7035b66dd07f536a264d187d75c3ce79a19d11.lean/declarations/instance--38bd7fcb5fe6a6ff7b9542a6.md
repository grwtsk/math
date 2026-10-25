# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f9d891932cd90575b17bdd6b5ae3326bf99812b60dac115c594711de6f3d7fc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--38bd7fcb5fe6a6ff7b9542a6",
  "source": {
    "blob": "6b6748bd84ebf1f88fe1c3a1d72853d73cb600c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38bd7fcb5fe6a6ff7b9542a60e26b150f2ac68b827b4c5252f0672895768eab1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f9d891932cd90575b17bdd6b5ae3326bf99812b60dac115c594711de6f3d7fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : TraverseFVar (CodeDecl pu) where
  mapFVarM f decl := do
    match decl with
    | .fun decl _ => return .fun (← mapFVarM f decl)
    | .jp decl => return .jp (← mapFVarM f decl)
    | .let decl => return .let (← mapFVarM f decl)
    | .uset fvarId i y _ => return .uset (← f fvarId) i (← f y)
    | .oset fvarId i y _ => return .oset (← f fvarId) i (← y.mapFVarM f)
    | .sset fvarId i offset y ty _ => return .sset (← f fvarId) i offset (← f y) (← mapFVarM f ty)
    | .setTag fvarId cidx _ => return .setTag (← f fvarId) cidx
    | .inc fvarId n check persistent _ => return .inc (← f fvarId) n check persistent
    | .dec fvarId n check persistent objs? _ => return .dec (← f fvarId) n check persistent objs?
    | .del fvarId _ => return .del (← f fvarId)
  forFVarM f decl :=
    match decl with
    | .fun decl _ => forFVarM f decl
    | .jp decl => forFVarM f decl
    | .let decl => forFVarM f decl
    | .uset fvarId i y _ => do f fvarId; f y
    | .oset fvarId i y _ => do f fvarId; y.forFVarM f
    | .sset fvarId i offset y ty _ => do f fvarId; f y; forFVarM f ty
    | .inc (fvarId := fvarId) .. | .dec (fvarId := fvarId) .. | .del (fvarId := fvarId) ..
    | .setTag (fvarId := fvarId) .. => f fvarId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6748bd84ebf1f88fe1c3a1d72853d73cb600c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
