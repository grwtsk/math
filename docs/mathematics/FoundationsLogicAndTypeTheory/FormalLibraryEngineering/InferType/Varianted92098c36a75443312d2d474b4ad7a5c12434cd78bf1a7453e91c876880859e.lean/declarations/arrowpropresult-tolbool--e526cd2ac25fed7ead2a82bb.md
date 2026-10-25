# ArrowPropResult.toLBool

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9952622a9b3ced2ebacdf4352303615994d8df6fb6c48a4db725341e8a9ef2f7",
  "kind": "def",
  "lexical_name": "ArrowPropResult.toLBool",
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
  "slug": "arrowpropresult-tolbool--e526cd2ac25fed7ead2a82bb",
  "source": {
    "blob": "0e3d57afdffbb1d4d62bb423b8847afa4216af13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 363,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Varianted92098c36a75443312d2d474b4ad7a5c12434cd78bf1a7453e91c876880859e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e526cd2ac25fed7ead2a82bb792e729debbda25b62c58edfde48a887caceb5dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Varianted92098c36a75443312d2d474b4ad7a5c12434cd78bf1a7453e91c876880859e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9952622a9b3ced2ebacdf4352303615994d8df6fb6c48a4db725341e8a9ef2f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def ArrowPropResult.toLBool : ArrowPropResult → LBool
  | .false => .false
  | .true => .true
  | _ => .undef

/--
Auxiliary function for `isArrowProposition`.

Remark: we have added the `.bvar _` case to be able to return a definite value for
polymorphic functions. For example, suppose we are trying to check whether the
term `1 + 1` is a proof. The function `isArrowProposition type 6` is invoked where
`type` is of the form:
```
{α : Type u} → {β : Type v} → {γ : outParam (Type w)} → [self : HAdd α β γ] → α → β → γ
```
It is the type of `HAdd.hAdd`.
Note that the resulting type is a de Bruijn variable.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Varianted92098c36a75443312d2d474b4ad7a5c12434cd78bf1a7453e91c876880859e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Varianted92098c36a75443312d2d474b4ad7a5c12434cd78bf1a7453e91c876880859e.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e3d57afdffbb1d4d62bb423b8847afa4216af13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
