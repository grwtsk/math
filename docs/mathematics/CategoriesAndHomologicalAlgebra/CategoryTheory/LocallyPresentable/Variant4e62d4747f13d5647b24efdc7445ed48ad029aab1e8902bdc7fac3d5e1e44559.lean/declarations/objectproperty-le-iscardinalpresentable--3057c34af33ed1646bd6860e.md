# ObjectProperty.le_isCardinalPresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f214acd6-7e88-8bee-e629-503c71ce0b7f",
  "kind": "lemma",
  "lexical_name": "ObjectProperty.le_isCardinalPresentable",
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
  "slug": "objectproperty-le-iscardinalpresentable--3057c34af33ed1646bd6860e",
  "source": {
    "blob": "9117336224a9f95fdda3cf06b4bb8a6110a1112f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variant4e62d4747f13d5647b24efdc7445ed48ad029aab1e8902bdc7fac3d5e1e44559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3057c34af33ed1646bd6860e25971c5e77fda072683cc665fb79017b2722fe48",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variant4e62d4747f13d5647b24efdc7445ed48ad029aab1e8902bdc7fac3d5e1e44559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f214acd6-7e88-8bee-e629-503c71ce0b7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ObjectProperty.le_isCardinalPresentable
    {C : Type u} [Category.{v} C] [IsAccessibleCategory.{w} C]
    (P : ObjectProperty C) [ObjectProperty.EssentiallySmall.{w} P] :
    ∃ (κ' : Cardinal.{w}) (_ : Fact κ'.IsRegular),
      P ≤ isCardinalPresentable C κ' := by
  obtain ⟨Q, hQ, h₁, h₂⟩ := EssentiallySmall.exists_small_le.{w} P
  choose κ hκ' hκ using fun (X : Subtype Q) ↦
    Functor.IsAccessible.exists_cardinal (coyoneda.obj (op X.val))
  obtain ⟨κ', h₃, h₄⟩ := HasCardinalLT.exists_regular_cardinal_forall
    (fun i ↦ (κ i).ord.ToType)
  have : Fact κ'.IsRegular := ⟨h₃⟩
  refine ⟨κ', inferInstance, h₂.trans ((isoClosure_le_iff _ _).2 ?_)⟩
  intro X hX
  have := h₄ ⟨X, hX⟩
  simp only [hasCardinalLT_iff_cardinal_mk_lt, Cardinal.mk_toType,
    Cardinal.card_ord] at this
  exact isCardinalPresentable_monotone C this.le _ (hκ ⟨X, hX⟩)

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variant4e62d4747f13d5647b24efdc7445ed48ad029aab1e8902bdc7fac3d5e1e44559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variant4e62d4747f13d5647b24efdc7445ed48ad029aab1e8902bdc7fac3d5e1e44559.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9117336224a9f95fdda3cf06b4bb8a6110a1112f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
