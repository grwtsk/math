# biproduct.isLimitFromSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b1de30651780a0e6856d4a82dca98476661e45bc10408edc6c2769237709fdd",
  "kind": "def",
  "lexical_name": "biproduct.isLimitFromSubtype",
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
  "slug": "biproduct-islimitfromsubtype--af3df4ce22e82621af22acb9",
  "source": {
    "blob": "5025feec3aa817b3640b6ff4094467067542d2ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 830,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af3df4ce22e82621af22acb91cba3a67a92adc39b19103c91fc371ad1194ce0d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b1de30651780a0e6856d4a82dca98476661e45bc10408edc6c2769237709fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 830–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def biproduct.isLimitFromSubtype :
    IsLimit (KernelFork.ofι (biproduct.fromSubtype f fun j => j ≠ i) (by simp) :
    KernelFork (biproduct.π f i)) :=
  Fork.IsLimit.mk' _ fun s =>
    ⟨s.ι ≫ biproduct.toSubtype _ _, by
      apply biproduct.hom_ext; intro j
      rw [KernelFork.ι_ofι, Category.assoc, Category.assoc,
        biproduct.toSubtype_fromSubtype_assoc, biproduct.map_π]
      rcases Classical.em (i = j) with (rfl | h)
      · rw [ite_eq_right (Classical.not_not.2 rfl), comp_zero, comp_zero, KernelFork.condition]
      · rw [ite_eq_left (Ne.symm h), Category.comp_id], by
      intro m hm
      rw [← hm, KernelFork.ι_ofι, Category.assoc, biproduct.fromSubtype_toSubtype]
      exact (Category.comp_id _).symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean#L830).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5025feec3aa817b3640b6ff4094467067542d2ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
