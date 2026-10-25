# ParamInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af961db9362966e52c67b76b9f340b7a0324f0cdeda18578b7e51f6c80198af5",
  "kind": "structure",
  "lexical_name": "ParamInfo",
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
  "slug": "paraminfo--d374ee9c7531bee389577e5a",
  "source": {
    "blob": "20e3e5ee85818ad6002ce0762167e0d6b4cf7186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d374ee9c7531bee389577e5a934d7714a3c5588a8b3c53b709561527070bd61e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af961db9362966e52c67b76b9f340b7a0324f0cdeda18578b7e51f6c80198af5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure ParamInfo where
  /-- The binder annotation for the parameter. -/
  binderInfo     : BinderInfo := BinderInfo.default
  /-- `hasFwdDeps` is true if there is another parameter whose type depends on this one. -/
  hasFwdDeps     : Bool       := false
  /-- `backDeps` contains the backwards dependencies. That is, the (0-indexed) position of previous parameters that this one depends on. -/
  backDeps       : Array Nat  := #[]
  /-- `isProp` is true if the parameter type is always a proposition. -/
  isProp         : Bool       := false
  /--
    `isDecInst` is true if the parameter's type is of the form `Decidable ...`.
    This information affects the generation of congruence theorems.
  -/
  isDecInst      : Bool       := false
  /-- `isInstance` is true if the parameter type is a class instance. -/
  isInstance     : Bool       := false
  /--
    `higherOrderOutParam` is true if this parameter is a higher-order output parameter
    of local instance.
    Example:
    ```
    getElem :
      {cont : Type u_1} → {idx : Type u_2} → {elem : Type u_3} →
      {dom : cont → idx → Prop} → [self : GetElem cont idx elem dom] →
      (xs : cont) → (i : idx) → dom xs i → elem
    ```
    This flag is true for the parameter `dom` because it is output parameter of
    `[self : GetElem cont idx elem dom]`
   -/
  higherOrderOutParam : Bool  := false
  /--
    `dependsOnHigherOrderOutParam` is true if the type of this parameter depends on
    the higher-order output parameter of a previous local instance.
    Example:
    ```
    getElem :
      {cont : Type u_1} → {idx : Type u_2} → {elem : Type u_3} →
      {dom : cont → idx → Prop} → [self : GetElem cont idx elem dom] →
      (xs : cont) → (i : idx) → dom xs i → elem
    ```
    This flag is true for the parameter with type `dom xs i` since `dom` is an output parameter
    of the instance `[self : GetElem cont idx elem dom]`
  -/
  dependsOnHigherOrderOutParam : Bool := false
  deriving Inhabited

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e3e5ee85818ad6002ce0762167e0d6b4cf7186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
