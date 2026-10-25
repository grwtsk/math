# simpAppArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8678b4dc06d081bcb2c14bb84adce09d526446a9e88547ab73ec7fdcee6182d6",
  "kind": "def",
  "lexical_name": "simpAppArgs",
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
  "slug": "simpappargs--7aacdba18baf96fe90cf16ed",
  "source": {
    "blob": "e4171b932c4fa956f4f6011ce069f73d9bee1cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 460,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7aacdba18baf96fe90cf16ed371650fa7f620361f244e4b1cddb051e160f564d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8678b4dc06d081bcb2c14bb84adce09d526446a9e88547ab73ec7fdcee6182d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def simpAppArgs (e : Expr) : SimpM Result := do
  let f := e.getAppFn
  match (← getCongrInfo f) with
  | .none => return .rfl
  | .fixedPrefix prefixSize suffixSize => simpFixedPrefix e prefixSize suffixSize
  | .interlaced rewritable => simpInterlaced e rewritable
  | .congrTheorem thm => simpUsingCongrThm e thm

/--
Simplifies arguments in a specified range `[start, stop)` of a function application.

Given an expression `f a₀ a₁ ... aₙ`, this function simplifies only the arguments
at positions `start ≤ i < stop`, leaving arguments outside this range unchanged.
Changes are propagated using congruence lemmas.

**Use case**: Useful for control-flow simplification where we want to simplify only
discriminants of a `match` expression without touching the branches.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4171b932c4fa956f4f6011ce069f73d9bee1cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
