# cartesianClosedOfReflective'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4fa1756a13f2aee9aadc973f1748ee5c8c03d0e06e9fb97a6a74edfbe34f527",
  "kind": "def",
  "lexical_name": "cartesianClosedOfReflective'",
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
  "slug": "cartesianclosedofreflective--bac6d3d0bd465a6767e6c87d",
  "source": {
    "blob": "1db69e0342437a91c9d70a5546b42ec7295aa863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bac6d3d0bd465a6767e6c87dcf52c3bd123d33b97ffe8424112879f81d3f2a40",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4fa1756a13f2aee9aadc973f1748ee5c8c03d0e06e9fb97a6a74edfbe34f527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cartesianClosedOfReflective' (l : i.EssImageSubcategory ⥤ D) (φ : l ⋙ i ≅ i.essImage.ι) :
    MonoidalClosed D where
  closed := fun B =>
    { rightAdj := i.essImage.lift (i ⋙ ihom (i.obj B))
        (fun X ↦ ExponentialIdeal.exp_closed (i.obj_mem_essImage X) _) ⋙ l
      adj := by
        apply (ihom.adjunction (i.obj B)).restrictFullyFaithful i.fullyFaithfulOfReflective
          i.fullyFaithfulOfReflective
        · symm
          refine NatIso.ofComponents (fun X => ?_) (fun f => ?_)
          · haveI :=
              Adjunction.rightAdjoint_preservesLimits.{0, 0} (reflectorAdjunction i)
            apply asIso (prodComparison i B X)
          · dsimp [asIso]
            rw [prodComparison_natural_whiskerLeft]
        · exact (i.essImage.liftCompιIso _ _).symm.trans <|
            (Functor.isoWhiskerLeft _ φ.symm).trans (Functor.associator _ _ _).symm }

set_option backward.defeqAttrib.useBackward true in
/-- If `i` witnesses that `D` is a reflective subcategory and an exponential ideal, then `D` is
itself Cartesian closed.

Unlike `cartesianClosedOfReflective'` this construction lifts exponential objects in `C` to
exponential objects in `D` by applying the reflector to them, even though they already lie in the
essential image of `i`; if you need better control over definitional equality, use
`cartesianClosedOfReflective'` instead. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db69e0342437a91c9d70a5546b42ec7295aa863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
