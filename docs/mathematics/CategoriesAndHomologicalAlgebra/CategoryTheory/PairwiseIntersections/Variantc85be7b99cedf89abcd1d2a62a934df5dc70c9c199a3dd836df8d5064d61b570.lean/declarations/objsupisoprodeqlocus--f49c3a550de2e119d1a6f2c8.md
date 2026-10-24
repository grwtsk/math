# objSupIsoProdEqLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a5cb2730c87b6b92c0ff56c51efa69a89fdcf233e93bd3678bdfdbb91424057",
  "kind": "def",
  "lexical_name": "objSupIsoProdEqLocus",
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
  "slug": "objsupisoprodeqlocus--f49c3a550de2e119d1a6f2c8",
  "source": {
    "blob": "8fafb2fec95bd776622e5ee315127cf8d3cb54cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 454,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f49c3a550de2e119d1a6f2c88ad069ecc9e5271f64d3b4a37957df02703cf971",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a5cb2730c87b6b92c0ff56c51efa69a89fdcf233e93bd3678bdfdbb91424057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def objSupIsoProdEqLocus {X : TopCat} (F : X.Sheaf CommRingCat) (U V : Opens X) :
  F.1.obj (op <| U ⊔ V) ≅ CommRingCat.of <|
    -- Porting note : Lean 3 is able to figure out the ring homomorphism automatically
    RingHom.eqLocus
      (RingHom.comp (F.val.map (homOfLE inf_le_left : U ⊓ V ⟶ U).op)
        (RingHom.fst (F.val.obj <| op U) (F.val.obj <| op V)))
      (RingHom.comp (F.val.map (homOfLE inf_le_right : U ⊓ V ⟶ V).op)
        (RingHom.snd (F.val.obj <| op U) (F.val.obj <| op V))) :=
  (F.isLimitPullbackCone U V).conePointUniqueUpToIso (CommRingCat.pullbackConeIsLimit _ _)
set_option linter.uppercaseLean3 false in
#align Top.sheaf.obj_sup_iso_prod_eq_locus TopCat.Sheaf.objSupIsoProdEqLocus

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fafb2fec95bd776622e5ee315127cf8d3cb54cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
