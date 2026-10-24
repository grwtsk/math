# sheaf_condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:638165cc-1c2f-473d-337f-c54cfc39bb8d",
  "kind": "theorem",
  "lexical_name": "sheaf_condition",
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
  "slug": "sheaf-condition--84b9fb5e3fadb95469b27cf8",
  "source": {
    "blob": "50381752dcfecd97c741d6dffd3cd52293ca5bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 242,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84b9fb5e3fadb95469b27cf8817febaa554feb9a122d46120c35467be120010e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:638165cc-1c2f-473d-337f-c54cfc39bb8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sheaf_condition : R.IsSheafFor P ↔ Nonempty (IsLimit (Fork.ofι _ (w P R))) := by
  rw [Types.type_equalizer_iff_unique,
    ← Equiv.forall_congr_right (firstObjEqFamily P R).toEquiv.symm]
  simp_rw [← compatible_iff, ← Iso.toEquiv_fun, Equiv.apply_symm_apply]
  apply forall₂_congr
  intro x _
  apply existsUnique_congr
  intro t
  rw [Equiv.eq_symm_apply]
  constructor
  · intro q
    funext Y f hf
    simpa [forkMap] using q _ _
  · intro q Y f hf
    rw [← q]
    simp [forkMap]

namespace Arrows

variable (P : Cᵒᵖ ⥤ Type w) {X : C} (R : Presieve X) (S : Sieve X)

open Presieve

variable {B : C} {I : Type} (X : I → C) (π : (i : I) → X i ⟶ B)
    [(Presieve.ofArrows X π).hasPullbacks]
-- TODO: allow `I : Type w`

/--
The middle object of the fork diagram of the Stacks entry.
The difference between this and `Equalizer.FirstObj P (ofArrows X π)` arises if the family of
arrows `π` contains duplicates. The `Presieve.ofArrows` doesn't see those.
-/
@[stacks 00VM "The middle object of the fork diagram there."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50381752dcfecd97c741d6dffd3cd52293ca5bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
