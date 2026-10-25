# addRecParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24cc4249501b95091022687e85de192f3d9c18da15ea1b3f49f56d4e116b0adb",
  "kind": "def",
  "lexical_name": "addRecParams",
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
  "slug": "addrecparams--c6e564568747d2fdda35d5e8",
  "source": {
    "blob": "49bfb8b6e392784005edbb05d5ec0696dbd5024a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6e564568747d2fdda35d5e89d15d13da6177bee01755a3a99a5f9556eeefdcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24cc4249501b95091022687e85de192f3d9c18da15ea1b3f49f56d4e116b0adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addRecParams (mvarId : MVarId) (majorTypeArgs : Array Expr) : List (Option Nat) → Expr → MetaM Expr
  | [], recursor => pure recursor
  | some pos :: rest, recursor =>
    if h : pos < majorTypeArgs.size then
      addRecParams mvarId majorTypeArgs rest (mkApp recursor (majorTypeArgs[pos]))
    else
      throwTacticEx `induction mvarId "ill-formed recursor"
  | none :: rest, recursor => do
    let recursorType ← inferType recursor
    let recursorType ← whnfForall recursorType
    match recursorType with
    | Expr.forallE _ d _ _ => do
      let param ← try synthInstance d catch _ => throwTacticEx `induction mvarId "failed to generate type class instance parameter"
      addRecParams mvarId majorTypeArgs rest (mkApp recursor param)
    | _ =>
      throwTacticEx `induction mvarId "ill-formed recursor"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bfb8b6e392784005edbb05d5ec0696dbd5024a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
