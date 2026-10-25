# addClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32fcc4a36710ddda4090883ce681eb7ea68273e15171e7f37fad0de158fb311d",
  "kind": "def",
  "lexical_name": "addClass",
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
  "slug": "addclass--3b5f0cdd5449fbaa7b67b3fe",
  "source": {
    "blob": "79b457a08230d2950514ef8d83f53b5c8f837baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b5f0cdd5449fbaa7b67b3fe5af375790cae84c6ae01011723ee99ba88a915a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32fcc4a36710ddda4090883ce681eb7ea68273e15171e7f37fad0de158fb311d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addClass (env : Environment) (clsName : Name) : Except MessageData Environment := do
  if isClass env clsName then
    throw m!"class has already been declared '{.ofConstName clsName true}'"
  let some decl := env.find? clsName
    | throw m!"unknown declaration '{clsName}'"
  unless decl matches .inductInfo .. | .axiomInfo .. do
    throw m!"invalid 'class', declaration '{.ofConstName clsName}' must be inductive datatype, structure, or constant"
  let outParams ← checkOutParam 0 #[] #[] decl.type
  let outLevelParams := computeOutLevelParams decl.type outParams decl.levelParams
  return classExtension.addEntry env { name := clsName, outParams, outLevelParams }

/--
Registers an inductive type or structure as a type class. Using `class` or `class inductive` is
generally preferred over using `@[class] structure` or `@[class] inductive` directly.
-/
@[builtin_init, builtin_doc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b457a08230d2950514ef8d83f53b5c8f837baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
