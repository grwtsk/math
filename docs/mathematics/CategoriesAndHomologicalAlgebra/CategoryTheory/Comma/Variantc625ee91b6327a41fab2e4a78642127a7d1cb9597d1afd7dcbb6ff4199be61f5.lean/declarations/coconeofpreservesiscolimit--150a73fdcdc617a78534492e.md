# coconeOfPreservesIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b93c19fd7d0c612bbe46949e9a98e48b97f8b0268c6bc8e86e86708c930ed2e",
  "kind": "def",
  "lexical_name": "coconeOfPreservesIsColimit",
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
  "slug": "coconeofpreservesiscolimit--150a73fdcdc617a78534492e",
  "source": {
    "blob": "ed3753eed76fb7f46bc3513ca4d6467ca15c8947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:150a73fdcdc617a78534492e1df48335f4b3fc9832c48a2f4ba264c6d94b77c0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b93c19fd7d0c612bbe46949e9a98e48b97f8b0268c6bc8e86e86708c930ed2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconeOfPreservesIsColimit [PreservesColimit (F ⋙ fst L R) L]
    {c₁ : Cocone (F ⋙ fst L R)}
    (t₁ : IsColimit c₁) {c₂ : Cocone (F ⋙ snd L R)} (t₂ : IsColimit c₂) :
    IsColimit (coconeOfPreserves F t₁ c₂) where
  desc s :=
    { left := t₁.desc ((fst L R).mapCocone s)
      right := t₂.desc ((snd L R).mapCocone s)
      w :=
        (isColimitOfPreserves L t₁).hom_ext fun j => by
          rw [coconeOfPreserves_pt_hom, (isColimitOfPreserves L t₁).fac_assoc,
            colimitAuxiliaryCocone_ι_app, assoc, ← R.map_comp, t₂.fac, L.mapCocone_ι_app, ←
            L.map_comp_assoc, t₁.fac]
          exact (s.ι.app j).w }
  uniq s m w := by
    apply CommaMorphism.ext
    · exact t₁.uniq ((fst L R).mapCocone s) _ (fun j => by simp [← w])
    · exact t₂.uniq ((snd L R).mapCocone s) _ (fun j => by simp [← w])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3753eed76fb7f46bc3513ca4d6467ca15c8947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
