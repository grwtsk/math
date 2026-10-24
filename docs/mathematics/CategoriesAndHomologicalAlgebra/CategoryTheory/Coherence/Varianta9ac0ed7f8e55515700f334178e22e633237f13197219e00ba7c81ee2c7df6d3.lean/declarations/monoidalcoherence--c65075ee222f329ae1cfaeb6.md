# monoidalCoherence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d0fb63dd1a7e538745046a364c38a54dafef439d5e7f935bb35311e70c327b3",
  "kind": "def",
  "lexical_name": "monoidalCoherence",
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
  "slug": "monoidalcoherence--c65075ee222f329ae1cfaeb6",
  "source": {
    "blob": "401d3403e732d95e6f529873a5a0dd05034273e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c65075ee222f329ae1cfaeb6c2ba302eb1707e30d33dd8d7891eec18c3eb595a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d0fb63dd1a7e538745046a364c38a54dafef439d5e7f935bb35311e70c327b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def monoidalCoherence (g : MVarId) : TermElabM Unit := g.withContext do
  withOptions (fun opts => synthInstance.maxSize.set opts
    (max 512 (synthInstance.maxSize.get opts))) do
  let thms := [``MonoidalCoherence.iso, ``Iso.trans, ``Iso.symm, ``Iso.refl,
    ``MonoidalCategory.whiskerRightIso, ``MonoidalCategory.whiskerLeftIso].foldl
    (·.addDeclToUnfoldCore ·) {}
  let (ty, _) ← dsimp (← g.getType) (← Simp.mkContext (simpTheorems := #[thms]))
  let some (_, lhs, rhs) := (← whnfR ty).eq? | exception g "Not an equation of morphisms."
  let projectMap_lhs ← mkProjectMapExpr lhs
  let projectMap_rhs ← mkProjectMapExpr rhs
  -- This new equation is defeq to the original by assumption
  -- on the `LiftObj` and `LiftHom` instances.
  let g₁ ← g.change (← mkEq projectMap_lhs projectMap_rhs)
  let [g₂] ← g₁.applyConst ``congrArg
    | exception g "congrArg failed in coherence"
  let [] ← g₂.applyConst ``Subsingleton.elim
    | exception g "This shouldn't happen; Subsingleton.elim does not create goals."

@[deprecated (since := "2026-05-27")] alias monoidal_coherence := monoidalCoherence

open Mathlib.Tactic.BicategoryCoherence

/--
If set to `false`, the warning on the use of the deprecated coherence tactic is disabled.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401d3403e732d95e6f529873a5a0dd05034273e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
