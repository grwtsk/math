# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c786831e4fb8b90ed7af41e01caad00bcc1a690a5765ffe1a450666ad6659cb",
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
  "slug": "instance--c6a438672c725d4c4f024bab",
  "source": {
    "blob": "d4d3ea8c1f4cd56b0f780623e17dd0a3e1b201d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantf82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6a438672c725d4c4f024bab77b36259a2e0f3b66cd6d20131c285161148ebe9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantf82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c786831e4fb8b90ed7af41e01caad00bcc1a690a5765ffe1a450666ad6659cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsFilteredOrEmpty C] [∀ c, IsFilteredOrEmpty (F.obj c)] :
    IsFilteredOrEmpty (Grothendieck F) := by
  refine ⟨?_, ?_⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩
    exact ⟨⟨max c d, max ((F.map (leftToMax c d)).obj f) ((F.map (rightToMax c d)).obj g)⟩,
      ⟨leftToMax c d, leftToMax _ _⟩, ⟨rightToMax c d, rightToMax _ _⟩, trivial⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩ ⟨u, x⟩ ⟨v, y⟩
    refine ⟨⟨coeq u v, coeq (eqToHom ?_ ≫
        (F.map (coeqHom u v)).map x) ((F.map (coeqHom u v)).map y)⟩, ⟨coeqHom u v, coeqHom _ _⟩, ?_⟩
    · conv_rhs => rw [← Cat.comp_obj, ← F.map_comp, coeq_condition, F.map_comp, Cat.comp_obj]
    · apply Grothendieck.ext _ _ (coeq_condition u v)
      refine Eq.trans ?_ (eqToHom _ ≫= coeq_condition _ _)
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantf82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantf82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d3ea8c1f4cd56b0f780623e17dd0a3e1b201d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
