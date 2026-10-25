# dontFloat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85d2307ecf1033d90e7d59a3bd292f27ce92c4587ca664a466934aad7a66ad0e",
  "kind": "def",
  "lexical_name": "dontFloat",
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
  "slug": "dontfloat--41421df6a10c8f9b0beb610e",
  "source": {
    "blob": "231bf52cfeacaa53d0f74916accf9a9f1764ea06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41421df6a10c8f9b0beb610e8f04e4d45e655c2107a3e2036f6e14e43a4ea08f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85d2307ecf1033d90e7d59a3bd292f27ce92c4587ca664a466934aad7a66ad0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def dontFloat (decl : CodeDecl .pure) : FloatM Unit := do
  forFVarM goFVar decl
  modify fun s => { s with newArms := s.newArms.insert .dont (decl :: s.newArms[Decision.dont]!) }
where
  goFVar (fvar : FVarId) : FloatM Unit := do
    if (← get).decision.contains fvar then
      modify fun s => { s with decision := s.decision.insert fvar .dont }

/--
Will:
- put `decl` into the arm it is marked to be moved into
- for any variables that might occur in `decl` and are of interest:
  - if they are already meant to be floated into the same arm or not at all leave them untouched:
    ```
    let x := ...
    let y := x + z
    cases z with
    | n => x * y
    | m => z
    ```
    If we are at `y` `x` is already marked to be floated into `n` as well.
  - if there hasn't be a decision yet, that is they are marked with `.unknown` we float
    them into the same arm as the current value:
    ```
    let x := ..
    let y := x + 2
    cases z with
    | n => y
    | m => z
    ```
    Here `x` is initially marked as `.unknown` since it occurs in no branch, however
    since we want to move `y` into the `n` branch we can also decide to move `x`
    into the `n` branch. Note that this decision might be revoked later on in the case of:
    ```
    let x := ..
    let a := x + 1
    let y := x + 2
    cases z with
    | n => y
    | m => a
    ```
    When we visit `a` `x` is now marked as getting moved into `n` but since it also occurs
    in `a` which wants to be moved somewhere else we will instead decide to not move `x`
    at all.
  - if they are meant to be floated somewhere else decide that they won't get floated:
    ```
    let x := ...
    let y := x + z
    cases z with
    | n => y
    | m => x
    ```
    If we are at `y` `x` is still marked to be moved but we don't want that.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231bf52cfeacaa53d0f74916accf9a9f1764ea06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
