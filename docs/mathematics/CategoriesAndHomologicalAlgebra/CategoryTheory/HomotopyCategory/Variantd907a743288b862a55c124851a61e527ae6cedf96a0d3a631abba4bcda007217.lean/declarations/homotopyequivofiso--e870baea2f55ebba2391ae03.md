# homotopyEquivOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7ec9172b206bcbaf5dc65cfec5bc866ed6da3682be4f190c285b4416e2abc01",
  "kind": "def",
  "lexical_name": "homotopyEquivOfIso",
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
  "slug": "homotopyequivofiso--e870baea2f55ebba2391ae03",
  "source": {
    "blob": "996ccaff2ffce753ca916b6b1321119705eb6ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e870baea2f55ebba2391ae039ac06eb85f4a715a2e165199e8a7118e5077b54c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7ec9172b206bcbaf5dc65cfec5bc866ed6da3682be4f190c285b4416e2abc01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopyEquivOfIso {C D : HomologicalComplex V c}
    (i : (quotient V c).obj C ≅ (quotient V c).obj D) : HomotopyEquiv C D where
  hom := Quot.out i.hom
  inv := Quot.out i.inv
  homotopyHomInvId :=
    homotopyOfEq _ _
      (by rw [quotient_map_out_comp_out, i.hom_inv_id, (quotient V c).map_id])
  homotopyInvHomId :=
    homotopyOfEq _ _
      (by rw [quotient_map_out_comp_out, i.inv_hom_id, (quotient V c).map_id])
#align homotopy_category.homotopy_equiv_of_iso HomotopyCategory.homotopyEquivOfIso

variable (V c)
variable [HasEqualizers V] [HasImages V] [HasImageMaps V] [HasCokernels V]

/-- The `i`-th homology, as a functor from the homotopy category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `996ccaff2ffce753ca916b6b1321119705eb6ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
