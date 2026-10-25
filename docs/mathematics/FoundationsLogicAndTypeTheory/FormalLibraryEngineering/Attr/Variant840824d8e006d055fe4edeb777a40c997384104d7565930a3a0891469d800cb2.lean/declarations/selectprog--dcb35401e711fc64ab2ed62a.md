# selectProg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e3972979034375154970912b2fc64472a6c1cfdadae6d50fbda6fe18f51e1f1",
  "kind": "def",
  "lexical_name": "selectProg",
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
  "slug": "selectprog--dcb35401e711fc64ab2ed62a",
  "source": {
    "blob": "bc5529a4316302c1da1fdf459ebb5b254b0629d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 436,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcb35401e711fc64ab2ed62ac19f5d0536c3f7718b295e457656c4638cbd89d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e3972979034375154970912b2fc64472a6c1cfdadae6d50fbda6fe18f51e1f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selectProg (type : Expr) : MetaM (Option Expr) := do
  if type.getAppFn.isConstOf ``Triple then
    let some idx ← progArgIdx? ``Triple | return none
    return type.getAppArgs[idx]?
  match_expr type with
  | PartialOrder.rel _α _inst _pre rhs =>
    if rhs.getAppFn.isConstOf ``wp then
      let some idx ← progArgIdx? ``wp | return none
      return rhs.getAppArgs[idx]?
    return none
  | _ => return none

/--
Builds a `Sym.Pattern` keyed on the program selected by `selectProg` from a spec conclusion.
The conclusion is assumed to already be a valid spec shape (checked by the caller via `selectProg`);
a non-spec shape reaching here is a logic error and throws.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc5529a4316302c1da1fdf459ebb5b254b0629d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
