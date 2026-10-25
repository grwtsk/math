# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HomType.Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.Lean.Expr.app7?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:236cedb97d5363450e57656bfd6f428574cc758c845f99738c828e9614235f2e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HomType.Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.Lean.Expr.app7?",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-homty--e093d2d18c430819b98b4823",
  "source": {
    "blob": "99f9fdb8a86126abf53c8aa78e8b162fddc026ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e093d2d18c430819b98b4823c17feeb5f2f86facca83de4d28a1d381b6e6bdfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:236cedb97d5363450e57656bfd6f428574cc758c845f99738c828e9614235f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HomType.Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.Lean.Expr.app7? (e : Expr) (fName : Name) :
    Option (Expr × Expr × Expr × Expr × Expr × Expr × Expr) :=
  if e.isAppOfArity fName 7 then
    some (
      e.appFn!.appFn!.appFn!.appFn!.appFn!.appFn!.appArg!,
      e.appFn!.appFn!.appFn!.appFn!.appFn!.appArg!,
      e.appFn!.appFn!.appFn!.appFn!.appArg!,
      e.appFn!.appFn!.appFn!.appArg!,
      e.appFn!.appFn!.appArg!,
      e.appFn!.appArg!,
      e.appArg!
    )
  else
    none

namespace Mathlib.Tactic.Widget
open Lean Meta
open ProofWidgets
open CategoryTheory

/-! ## Metaprogramming utilities for breaking down category theory expressions -/

/-- Given a Hom type `α ⟶ β`, return `(α, β)`. Otherwise `none`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99f9fdb8a86126abf53c8aa78e8b162fddc026ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
