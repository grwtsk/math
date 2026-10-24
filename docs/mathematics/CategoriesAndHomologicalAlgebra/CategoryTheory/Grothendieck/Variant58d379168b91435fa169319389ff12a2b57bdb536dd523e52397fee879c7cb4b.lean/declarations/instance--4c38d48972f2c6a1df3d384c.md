# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:189d7b5d7ce24e974f8609e2f593f310b800f1fe06654eef4d62ec2190974686",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4c38d48972f2c6a1df3d384c",
  "source": {
    "blob": "9d665c0903e6cf1ae9a154e9b4efbebf40bc8009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 28,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant58d379168b91435fa169319389ff12a2b57bdb536dd523e52397fee879c7cb4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c38d48972f2c6a1df3d384ca0e238148104ffdefd9af8ac7379f8d03177d02f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant58d379168b91435fa169319389ff12a2b57bdb536dd523e52397fee879c7cb4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:189d7b5d7ce24e974f8609e2f593f310b800f1fe06654eef4d62ec2190974686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsFilteredOrEmpty C] [∀ c, IsFilteredOrEmpty (F.obj c)] :
    IsFilteredOrEmpty (Grothendieck F) := by
  refine ⟨?_, ?_⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩
    exact ⟨⟨max c d, max ((F.map (leftToMax c d)).toFunctor.obj f)
      ((F.map (rightToMax c d)).toFunctor.obj g)⟩,
      ⟨leftToMax c d, leftToMax _ _⟩, ⟨rightToMax c d, rightToMax _ _⟩, trivial⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩ ⟨u, x⟩ ⟨v, y⟩
    refine ⟨⟨coeq u v, coeq (eqToHom ?_ ≫
        (F.map (coeqHom u v)).toFunctor.map x) ((F.map (coeqHom u v)).toFunctor.map y)⟩,
          ⟨coeqHom u v, coeqHom _ _⟩, ?_⟩
    · conv_rhs => rw [← Cat.Hom.comp_obj, ← F.map_comp, coeq_condition, F.map_comp,
        Cat.Hom.comp_obj]
    · set_option backward.isDefEq.respectTransparency.types false in
      apply Grothendieck.ext _ _ (coeq_condition u v)
      refine Eq.trans ?_ (eqToHom _ ≫= coeq_condition _ _)
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant58d379168b91435fa169319389ff12a2b57bdb536dd523e52397fee879c7cb4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant58d379168b91435fa169319389ff12a2b57bdb536dd523e52397fee879c7cb4b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d665c0903e6cf1ae9a154e9b4efbebf40bc8009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
