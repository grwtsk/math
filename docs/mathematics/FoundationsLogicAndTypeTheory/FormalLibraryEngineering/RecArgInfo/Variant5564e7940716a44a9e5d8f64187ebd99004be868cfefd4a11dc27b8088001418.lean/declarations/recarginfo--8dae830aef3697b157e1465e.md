# RecArgInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:900ef6d2e94bcf467653387ecd6394041338cb7441b2af38559f2831d94deb27",
  "kind": "structure",
  "lexical_name": "RecArgInfo",
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
  "slug": "recarginfo--8dae830aef3697b157e1465e",
  "source": {
    "blob": "e184bc05f92a65e632dd5f27bf623e26fdc41c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecArgInfo/Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dae830aef3697b157e1465edca9bfce0f651cb518aaab4a23fe69c32943c70f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecArgInfo/Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:900ef6d2e94bcf467653387ecd6394041338cb7441b2af38559f2831d94deb27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RecArgInfo where
  /-- the name of the recursive function -/
  fnName       : Name
  /-- Information which arguments are fixed -/
  fixedParamPerm : FixedParamPerm
  /-- position of the argument we are recursing on, among all parameters -/
  recArgPos    : Nat
  /-- position of the indices of the inductive datatype we are recursing on, among all parameters -/
  indicesPos   : Array Nat
  /-- The inductive group (with parameters) of the argument's type -/
  indGroupInst : IndGroupInst
  /--
  index of the inductive datatype of the argument we are recursing on.
  If `< indAll.all`, a normal data type, else an auxiliary data type due to nested recursion
  -/
  indIdx       : Nat
deriving Inhabited, Repr

  /-- position of the argument and its indices we are recursing on, among all parameters -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecArgInfo/Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecArgInfo/Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e184bc05f92a65e632dd5f27bf623e26fdc41c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
