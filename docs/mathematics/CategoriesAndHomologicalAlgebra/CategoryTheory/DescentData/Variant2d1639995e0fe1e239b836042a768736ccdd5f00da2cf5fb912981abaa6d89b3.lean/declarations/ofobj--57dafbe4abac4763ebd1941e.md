# ofObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6312a98997fd8a114be44d4fb4c7812bd3c163bd6a16941569f53d76ff647bb5",
  "kind": "def",
  "lexical_name": "ofObj",
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
  "slug": "ofobj--57dafbe4abac4763ebd1941e",
  "source": {
    "blob": "6fee7ec27284e06e620ee96f2ce41429e585e773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57dafbe4abac4763ebd1941e96e945bd2badc36baf83f4f9c390686e1e434958",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6312a98997fd8a114be44d4fb4c7812bd3c163bd6a16941569f53d76ff647bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofObj (M : F.obj (.mk (op S))) : F.DescentData f where
  obj i := (F.map (f i).op.toLoc).toFunctor.obj M
  hom Y q i₁ i₂ f₁ f₂ hf₁ hf₂ :=
    (F.mapComp' (f i₁).op.toLoc f₁.op.toLoc q.op.toLoc (by grind)).inv.toNatTrans.app _ ≫
      (F.mapComp' (f i₂).op.toLoc f₂.op.toLoc q.op.toLoc (by grind)).hom.toNatTrans.app _
  pullHom_hom Y' Y g q q' hq i₁ i₂ f₁ f₂ hf₁ hf₂ gf₁ gf₂ hgf₁ hgf₂ := by
    simp only [pullHom, Functor.map_comp, Category.assoc,
      F.mapComp'₀₁₃_inv_app (f i₁).op.toLoc f₁.op.toLoc g.op.toLoc q.op.toLoc
        gf₁.op.toLoc q'.op.toLoc (by grind) (by grind) (by grind),
      F.mapComp'₀₂₃_inv_comp_mapComp'₀₁₃_hom_app (f i₂).op.toLoc f₂.op.toLoc g.op.toLoc
      q.op.toLoc gf₂.op.toLoc q'.op.toLoc (by grind) (by grind) (by grind)]

/-- Constructor for isomorphisms in `Pseudofunctor.DescentData`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fee7ec27284e06e620ee96f2ce41429e585e773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
