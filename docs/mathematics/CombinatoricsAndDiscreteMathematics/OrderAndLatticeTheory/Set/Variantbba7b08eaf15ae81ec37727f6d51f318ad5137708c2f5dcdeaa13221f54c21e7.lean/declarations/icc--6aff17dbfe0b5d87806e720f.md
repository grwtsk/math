# Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66d382ff4671f416d5dcea7f72fcddd79dcdfe429fae83215805d265356581c5",
  "kind": "def",
  "lexical_name": "Icc",
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
  "slug": "icc--6aff17dbfe0b5d87806e720f",
  "source": {
    "blob": "2da75f8a4fe53b2472385a8eec7ddad79fb5e068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 267,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantbba7b08eaf15ae81ec37727f6d51f318ad5137708c2f5dcdeaa13221f54c21e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6aff17dbfe0b5d87806e720f5b7a1f991cc8747b6dcdb0a2438957132edb53b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantbba7b08eaf15ae81ec37727f6d51f318ad5137708c2f5dcdeaa13221f54c21e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66d382ff4671f416d5dcea7f72fcddd79dcdfe429fae83215805d265356581c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Icc [Lattice α] [Lattice β] (e : α ≃o β) (x y : α) :
    Icc x y ≃o Icc (e x) (e y) where
  toFun z := ⟨e z, by simp only [mem_Icc, map_le_map_iff]; exact z.property⟩
  invFun z := ⟨e.symm z, by simp only [mem_Icc, e.le_symm_apply, e.symm_apply_le]; exact z.property⟩
  left_inv y := by simp
  right_inv y := by simp
  map_rel_iff' := by simp

end OrderIso

section BooleanAlgebra

variable (α) [BooleanAlgebra α]

/-- Taking complements as an order isomorphism to the order dual. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantbba7b08eaf15ae81ec37727f6d51f318ad5137708c2f5dcdeaa13221f54c21e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantbba7b08eaf15ae81ec37727f6d51f318ad5137708c2f5dcdeaa13221f54c21e7.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da75f8a4fe53b2472385a8eec7ddad79fb5e068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
