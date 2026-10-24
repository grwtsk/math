# descFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2811e6e3bc7a7021ee85a7e39c810a3dfb4de83763a6a0d5301e640c42d13e1f",
  "kind": "def",
  "lexical_name": "descFun",
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
  "slug": "descfun--2c55b01bd5ea81c778bd93c2",
  "source": {
    "blob": "46b69c1eebebcd5084b1c7c425f6279f8e0bffd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c55b01bd5ea81c778bd93c2c1e6ffeaacebf28c77cde74de815cb8a51a3f1f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2811e6e3bc7a7021ee85a7e39c810a3dfb4de83763a6a0d5301e640c42d13e1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def descFun (s : Cocone F) : ColimitType F → s.pt := by
  fapply Quot.lift
  · exact descFunLift F s
  · intro x y r
    induction r with
    | refl => rfl
    | symm _ _ _ r_ih => exact r_ih.symm
    | trans _ _ _ _ _ r_ih_h r_ih_k => exact Eq.trans r_ih_h r_ih_k
    | map j j' f x => simpa only [descFunLift, Functor.const_obj_obj] using
      FunLike.congr_fun (s.ι.naturality f) x
    | zero => simp
    | neg => simp
    | add => simp
    | neg_1 _ _ _ r_ih => dsimp; rw [r_ih]
    | add_1 _ _ _ _ r_ih => dsimp; rw [r_ih]
    | add_2 _ _ _ _ r_ih => dsimp; rw [r_ih]
    | zero_add => dsimp; rw [zero_add]
    | add_zero => dsimp; rw [add_zero]
    | add_left_neg => dsimp; rw [add_left_neg]
    | add_comm => dsimp; rw [add_comm]
    | add_assoc => dsimp; rw [add_assoc]
#align AddCommGroup.colimits.desc_fun AddCommGroupCat.Colimits.descFun

/-- The group homomorphism from the colimit abelian group to the cone point of any other cocone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46b69c1eebebcd5084b1c7c425f6279f8e0bffd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
