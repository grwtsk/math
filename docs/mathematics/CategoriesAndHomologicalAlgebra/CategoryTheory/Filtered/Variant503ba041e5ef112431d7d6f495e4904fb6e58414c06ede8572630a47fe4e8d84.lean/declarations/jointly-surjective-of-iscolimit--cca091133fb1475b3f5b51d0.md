# jointly_surjective_of_isColimit₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd8aed3e-848b-51b3-d62c-b7dfc19967db",
  "kind": "lemma",
  "lexical_name": "jointly_surjective_of_isColimit₂",
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
  "slug": "jointly-surjective-of-iscolimit--cca091133fb1475b3f5b51d0",
  "source": {
    "blob": "ac794b619300ac597451f90c29f639a0857e2294",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cca091133fb1475b3f5b51d04937479bd5fcecf323b82613b7db006901fd0faa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd8aed3e-848b-51b3-d62c-b7dfc19967db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jointly_surjective_of_isColimit₂
    {t : Cocone F} (ht : IsColimit t) (x₁ x₂ : t.pt) :
    ∃ (j : J) (x₁' x₂' : F.obj j), t.ι.app j x₁' = x₁ ∧ t.ι.app j x₂' = x₂ := by
  obtain ⟨j₁, x₁, rfl⟩ := Types.jointly_surjective_of_isColimit ht x₁
  obtain ⟨j₂, x₂, rfl⟩ := Types.jointly_surjective_of_isColimit ht x₂
  exact ⟨max j₁ j₂, F.map (leftToMax _ _) x₁, F.map (rightToMax _ _) x₂,
    congr_hom (t.w (leftToMax j₁ j₂)) x₁, congr_hom (t.w (rightToMax j₁ j₂)) x₂⟩

end CategoryTheory.Limits.Types.FilteredColimit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac794b619300ac597451f90c29f639a0857e2294` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
