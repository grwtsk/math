# plusMap_toPlus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:839065e6-81eb-c738-843d-bfd595ac8088",
  "kind": "theorem",
  "lexical_name": "plusMap_toPlus",
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
  "slug": "plusmap-toplus--9f867d4944f0f5a7d09b6ff3",
  "source": {
    "blob": "fafeb60fe7732457faa5fee9b1c62f986cc3b6c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 221,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f867d4944f0f5a7d09b6ff3f29c4f030a8e444272ecb5a45230f6e5b447d793",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:839065e6-81eb-c738-843d-bfd595ac8088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plusMap_toPlus : J.plusMap (J.toPlus P) = J.toPlus (J.plusObj P) := by
  ext X : 2
  refine colimit.hom_ext (fun S => ?_)
  dsimp only [plusMap, toPlus]
  let e : S.unop ⟶ ⊤ := homOfLE (OrderTop.le_top _)
  rw [ι_colimMap, ← colimit.w _ e.op, ← Category.assoc, ← Category.assoc]
  congr 1
  refine Multiequalizer.hom_ext _ _ _ (fun I => ?_)
  erw [Multiequalizer.lift_ι]
  simp only [unop_op, op_unop, diagram_map, Category.assoc, limit.lift_π,
    Multifork.ofι_π_app]
  let ee : (J.pullback (I.map e).f).obj S.unop ⟶ ⊤ := homOfLE (OrderTop.le_top _)
  erw [← colimit.w _ ee.op, ι_colimMap_assoc, colimit.ι_pre, diagramPullback_app,
    ← Category.assoc, ← Category.assoc]
  congr 1
  refine Multiequalizer.hom_ext _ _ _ (fun II => ?_)
  convert Multiequalizer.condition (S.unop.index P)
    { fst := I, snd := II.base, r.Z := II.Y, r.g₁ := II.f, r.g₂ := 𝟙 II.Y } using 1
  all_goals dsimp; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fafeb60fe7732457faa5fee9b1c62f986cc3b6c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
