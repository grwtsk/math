# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2c4c3470a8dc192a98980f631d003fb031b1b426056d9e8ac3f8eab0bf3c5aa",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--48c54d692995ab8e2be93cf0",
  "source": {
    "blob": "61d372630f94a66febd188f998aa81b1361a4ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48c54d692995ab8e2be93cf0cd150d70db859668807484a6ac4af0e54943e956",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2c4c3470a8dc192a98980f631d003fb031b1b426056d9e8ac3f8eab0bf3c5aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  /-- Name of the file being compiled. -/
  fileName       : String
  /-- Auxiliary datastructure for converting `String.Pos` into Line/Column number. -/
  fileMap        : FileMap
  options        : Options := {}
  currRecDepth   : Nat := 0
  maxRecDepth    : Nat := 1000
  ref            : Syntax := Syntax.missing
  currNamespace  : Name := Name.anonymous
  openDecls      : List OpenDecl := []
  initHeartbeats : Nat := 0
  maxHeartbeats  : Nat := getMaxHeartbeats options
  quotContext    : Name := .anonymous
  currMacroScope : MacroScope := firstFrontendMacroScope
  /--
  If `diag := true`, different parts of the system collect diagnostics.
  Use the `set_option diag true` to set it to true.
  -/
  diag           : Bool := false
  /-- If set, used to cancel elaboration from outside when results are not needed anymore. -/
  cancelTk?      : Option IO.CancelToken := none
  /--
  If set (when `showPartialSyntaxErrors` is not set and parsing failed), suppresses most elaboration
  errors; see also `logMessage` below.
  -/
  suppressElabErrors : Bool := false
  /-- Cache of `Lean.inheritedTraceOptions`. -/
  inheritedTraceOptions : Std.HashSet Name := {}
  deriving Nonempty

/-- CoreM is a monad for manipulating the Lean environment.
It is the base monad for `MetaM`.
The main features it provides are:
- name generator state
- environment state
- Lean options context
- the current open namespace
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d372630f94a66febd188f998aa81b1361a4ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
