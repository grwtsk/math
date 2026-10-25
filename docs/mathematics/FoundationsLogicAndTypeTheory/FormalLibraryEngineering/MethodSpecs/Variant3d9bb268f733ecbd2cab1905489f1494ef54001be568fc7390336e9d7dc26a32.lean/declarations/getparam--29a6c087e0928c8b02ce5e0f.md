# getParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c34d57c62ca1afb6a58b1defbb33534b804221981c3e23ab8610dd794b8c561",
  "kind": "def",
  "lexical_name": "getParam",
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
  "slug": "getparam--29a6c087e0928c8b02ce5e0f",
  "source": {
    "blob": "b5a044e7073f881a2d20758520c8f8cd6268d57f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29a6c087e0928c8b02ce5e0fa835e17f4c32d81d9e60495a72a9001d0c4d53c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c34d57c62ca1afb6a58b1defbb33534b804221981c3e23ab8610dd794b8c561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getParam (instName : Name) (_stx : Syntax) : AttrM MethodSpecsAttrData := do
  -- Preflight check
  let specsInfo ← (getMethodSpecsInfo instName).run'
  return { specsInfo with }

/--
Generate method specification theorems for the methods of the given type class instance.

This expects all (non-proof) methods of the instance to be defined via separate helper functions,
which must take the same arguments as the instance itself, in the same order.

If it is applied to an instance
```
instance instClsT : Cls T where op := opImpl
```
it produces a theorem `instClsT.op_spec` based on `opImpl.eq_def`, but phrased in terms of the
overloaded `Cls.op` operation, and similarly `instClsT.op_spec_<n>` based on the equational theorems
`opImpl.eq_<n>`.
-/
@[builtin_doc]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a044e7073f881a2d20758520c8f8cd6268d57f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
