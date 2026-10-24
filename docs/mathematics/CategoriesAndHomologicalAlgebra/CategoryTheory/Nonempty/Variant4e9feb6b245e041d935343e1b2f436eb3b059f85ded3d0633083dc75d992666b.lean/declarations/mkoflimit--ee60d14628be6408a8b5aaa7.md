# mkOfLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10a88507746e89d7f19549de15e4f8bfb088e38d20573ea0c86fe8dc27c6f7f0",
  "kind": "def",
  "lexical_name": "mkOfLimit",
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
  "slug": "mkoflimit--ee60d14628be6408a8b5aaa7",
  "source": {
    "blob": "efd273696760b535f2957e6d434ed0233b9216e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee60d14628be6408a8b5aaa7a81c295bc0f6c8cd8daf55de7f60359489baf4a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10a88507746e89d7f19549de15e4f8bfb088e38d20573ea0c86fe8dc27c6f7f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mkOfLimit {j : J} (hj : Order.IsSuccLimit j)
    (iter : ∀ (i : J), i < j → Φ.Iteration i) :
    Φ.Iteration j where
  F := functor hj iter
  obj_bot := functor_obj hj iter ⊥ (Order.IsSuccLimit.bot_lt hj) (mkOfBot Φ J) (by rfl)
  arrowSucc_eq i hi := by
    rw [arrowSucc_def, arrowMap_functor _ _ _ _ (Order.le_succ i)
        ((Order.IsSuccLimit.succ_lt_iff hj).2 hi), arrow_mk_mapObj,
      ← arrowSucc_def _ _ ((Order.lt_succ_of_le_of_not_isMax (by rfl) (not_isMax_of_lt hi))),
      arrowSucc_eq, functor_obj _ _ _ hi]
  arrowMap_limit i hi hij k hk := by
    obtain hij | rfl := hij.lt_or_eq
    · rw [arrowMap_functor _ _ _ _ _ hij, arrow_mk_mapObj,
        arrowMap_limit _ _ hi _ _ hk]
      congr 1
      apply Arrow.functor_ext
      rintro ⟨l₁, hl₁⟩ ⟨l₂, hl₂⟩ f
      dsimp
      rw [← arrowMap, ← arrowMap, arrowMap_functor hj iter l₁ l₂ _ (hl₂.trans hij),
        arrow_mk_mapObj]
      apply congr_arrowMap
    · rw [arrowMap_functor_to_top _ _ _ hk, ← arrowι_def _ hi]
      congr 1
      apply Arrow.functor_ext
      rintro ⟨l₁, hl₁⟩ ⟨l₂, hl₂⟩ f
      dsimp
      rw [← arrowMap, arrow_mk_mapObj, arrowMap_functor _ _ _ _ _ hl₂, arrow_mk_mapObj]

variable (Φ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efd273696760b535f2957e6d434ed0233b9216e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
