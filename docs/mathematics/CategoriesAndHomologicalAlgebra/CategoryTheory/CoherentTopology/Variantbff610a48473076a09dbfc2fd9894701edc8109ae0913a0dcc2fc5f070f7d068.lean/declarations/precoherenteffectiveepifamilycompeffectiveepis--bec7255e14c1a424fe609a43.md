# precoherentEffectiveEpiFamilyCompEffectiveEpis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b699dd3d1d200ce7b616ef9560e0e55ed6d8ec5e5fb9b823b74a47435e7b2079",
  "kind": "instance",
  "lexical_name": "precoherentEffectiveEpiFamilyCompEffectiveEpis",
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
  "slug": "precoherenteffectiveepifamilycompeffectiveepis--bec7255e14c1a424fe609a43",
  "source": {
    "blob": "e3d81579f0701466a5ec2df2a1f597800b491ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bec7255e14c1a424fe609a438e6bb3e16543df063517480db6b626557eb1a265",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b699dd3d1d200ce7b616ef9560e0e55ed6d8ec5e5fb9b823b74a47435e7b2079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance precoherentEffectiveEpiFamilyCompEffectiveEpis
    {α : Type} [Finite α] {Y Z : α → C} (π : (a : α) → (Y a ⟶ X)) [EffectiveEpiFamily Y π]
    (f : (a : α) → Z a ⟶ Y a) [h : ∀ a, EffectiveEpi (f a)] :
    EffectiveEpiFamily _ fun a ↦ f a ≫ π a := by
  simp_rw [effectiveEpi_iff_effectiveEpiFamily] at h
  exact EffectiveEpiFamily.reindex (e := Equiv.sigmaPUnit α) _ _
    (EffectiveEpiFamily.transitive_of_finite (β := fun _ ↦ Unit) _ inferInstance _ h)

/--
A sieve belongs to the coherent topology if and only if it contains a finite
`EffectiveEpiFamily`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3d81579f0701466a5ec2df2a1f597800b491ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
