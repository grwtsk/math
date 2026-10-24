# commGrpEquivalenceAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34219b76de1bdfa934ec15525276bfe6487d9b671c46ddc8644c90055004350c",
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
  "slug": "commgrpequivalenceaux--3c89ce7cdc0ffd03df98bae6",
  "source": {
    "blob": "674b2d5fc2c764f62cae9875782ecc4c05568686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c89ce7cdc0ffd03df98bae6323e4c001715cd0971a65f86ce792cfbf837dbb4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34219b76de1bdfa934ec15525276bfe6487d9b671c46ddc8644c90055004350c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674b2d5fc2c764f62cae9875782ecc4c05568686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
