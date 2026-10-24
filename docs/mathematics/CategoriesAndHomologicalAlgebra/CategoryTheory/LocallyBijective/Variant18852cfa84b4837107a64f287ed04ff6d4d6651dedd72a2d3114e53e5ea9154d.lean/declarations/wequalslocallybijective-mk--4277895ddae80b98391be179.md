# WEqualsLocallyBijective.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "657f29093bfcf4e8ef5d214d3479c0dd7e37817a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cf9e7a7-0301-d0a6-3a18-41a63f43ca9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4317d0a1-f5a0-bd66-c094-65af234e0547",
  "kind": "lemma",
  "lexical_name": "WEqualsLocallyBijective.mk'",
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
  "slug": "wequalslocallybijective-mk--4277895ddae80b98391be179",
  "source": {
    "blob": "657f29093bfcf4e8ef5d214d3479c0dd7e37817a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4277895ddae80b98391be179453ebca36b4601136359995c450fcbd1f7d2e933",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4317d0a1-f5a0-bd66-c094-65af234e0547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma WEqualsLocallyBijective.mk' [HasWeakSheafify J A] [(forget A).ReflectsIsomorphisms]
    [J.HasSheafCompose (forget A)]
    [∀ (P : Cᵒᵖ ⥤ A), Presheaf.IsLocallyInjective J (CategoryTheory.toSheafify J P)]
    [∀ (P : Cᵒᵖ ⥤ A), Presheaf.IsLocallySurjective J (CategoryTheory.toSheafify J P)] :
    J.WEqualsLocallyBijective A where
  iff {P Q} f := by
    rw [W_iff, ← Sheaf.isLocallyBijective_iff_isIso (A := A),
      ← Presheaf.isLocallyInjective_comp_iff J f (CategoryTheory.toSheafify J Q),
      ← Presheaf.isLocallySurjective_comp_iff J f (CategoryTheory.toSheafify J Q),
      CategoryTheory.toSheafify_naturality, Presheaf.comp_isLocallyInjective_iff,
      Presheaf.comp_isLocallySurjective_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `657f29093bfcf4e8ef5d214d3479c0dd7e37817a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
