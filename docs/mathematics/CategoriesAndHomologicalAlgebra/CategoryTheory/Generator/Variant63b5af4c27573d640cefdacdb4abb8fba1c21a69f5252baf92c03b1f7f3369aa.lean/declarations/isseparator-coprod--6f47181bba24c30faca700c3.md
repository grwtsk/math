# isSeparator_coprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f75be948-455d-77ee-8b3f-2c8f8fb1505d",
  "kind": "theorem",
  "lexical_name": "isSeparator_coprod",
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
  "slug": "isseparator-coprod--6f47181bba24c30faca700c3",
  "source": {
    "blob": "514fda0a493b8817781bf2258b55d4d977a84098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 553,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f47181bba24c30faca700c3a4a61097e36d38236a842491660bad4b83b4c87b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f75be948-455d-77ee-8b3f-2c8f8fb1505d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSeparator_coprod (G H : C) [HasBinaryCoproduct G H] :
    IsSeparator (G ⨿ H) ↔ IsSeparating ({G, H} : Set C) := by
  refine'
    ⟨fun h X Y u v huv => _, fun h =>
      (isSeparator_def _).2 fun X Y u v huv => h _ _ fun Z hZ g => _⟩
  · refine' h.def _ _ fun g => coprod.hom_ext _ _
    · simpa using huv G (by simp) (coprod.inl ≫ g)
    · simpa using huv H (by simp) (coprod.inr ≫ g)
  · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hZ
    rcases hZ with (rfl | rfl)
    · simpa using coprod.inl ≫= huv (coprod.desc g 0)
    · simpa using coprod.inr ≫= huv (coprod.desc 0 g)
#align category_theory.is_separator_coprod CategoryTheory.isSeparator_coprod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `514fda0a493b8817781bf2258b55d4d977a84098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
