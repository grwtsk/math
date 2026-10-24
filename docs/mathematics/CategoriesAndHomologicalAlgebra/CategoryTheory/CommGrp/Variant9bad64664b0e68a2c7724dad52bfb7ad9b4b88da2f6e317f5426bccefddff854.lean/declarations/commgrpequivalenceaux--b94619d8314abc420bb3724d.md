# commGrpEquivalenceAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53a4192a4e90e97cbf6c9e71e35be3151e351a45d428c5ef390b3ddffbede58e",
  "kind": "def",
  "lexical_name": "commGrpEquivalenceAux",
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
  "slug": "commgrpequivalenceaux--b94619d8314abc420bb3724d",
  "source": {
    "blob": "c136400a37e533f3eaafb4f924ba94796c2491c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b94619d8314abc420bb3724d8a0f75dcb865582e74f918ec6158afb12032bf62",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53a4192a4e90e97cbf6c9e71e35be3151e351a45d428c5ef390b3ddffbede58e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commGrpEquivalenceAux : CommGrp_.forget C ⋙ toCommGrp C ≅
      𝟭 (CommGrp_ C) := by
  refine NatIso.ofComponents (fun _ => CommGrp_.mkIso (Iso.refl _) ?_ ?_) ?_
  · exact ((IsZero.iff_id_eq_zero _).2 (Subsingleton.elim _ _)).eq_of_src _ _
  · simp only [Functor.comp_obj, Mon_.forget_obj, toCommGrp_obj_X, Functor.id_obj,
      toCommGrp_obj_mul, Iso.refl_hom, Category.comp_id, tensorHom_id, id_whiskerRight,
      Category.id_comp]
    apply monoidal_hom_ext
    · simp only [comp_add, lift_fst, lift_snd, add_zero]
      convert (Mon_.lift_comp_one_right _ 0).symm
      · simp
      · infer_instance
    · simp only [comp_add, lift_fst, lift_snd, zero_add]
      convert (Mon_.lift_comp_one_left 0 _).symm
      · simp
      · infer_instance
  · aesop_cat

/-- An additive category is equivalent to its category of commutative group objects. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c136400a37e533f3eaafb4f924ba94796c2491c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
