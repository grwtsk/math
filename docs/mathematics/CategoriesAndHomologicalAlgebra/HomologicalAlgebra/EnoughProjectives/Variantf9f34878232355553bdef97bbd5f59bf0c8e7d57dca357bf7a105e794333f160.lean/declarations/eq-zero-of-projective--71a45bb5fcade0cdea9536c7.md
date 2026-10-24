# eq_zero_of_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0323645c30f5b045835c2a465f8fc89ea6b18dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b511d11-5246-b9ff-9e91-8e83f994193d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb09f33f-ed82-ac6a-78ed-acd6c3e11779",
  "kind": "lemma",
  "lexical_name": "eq_zero_of_projective",
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
  "slug": "eq-zero-of-projective--71a45bb5fcade0cdea9536c7",
  "source": {
    "blob": "d0323645c30f5b045835c2a465f8fc89ea6b18dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71a45bb5fcade0cdea9536c74a0bd90f8082b637723b15d63d76122bc6cac43e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb09f33f-ed82-ac6a-78ed-acd6c3e11779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_zero_of_projective [HasExt.{w} C] {P Y : C} {n : ℕ} [Projective P]
    (e : Ext P Y (n + 1)) : e = 0 := by
  letI := HasDerivedCategory.standard C
  apply homEquiv.injective
  simp only [← cancel_mono (((singleFunctors C).shiftIso (n + 1) (- (n + 1)) 0
    (by omega)).hom.app _), zero_hom, Limits.zero_comp]
  apply from_singleFunctor_obj_eq_zero_of_projective
    (L := (CochainComplex.singleFunctor C (-(n + 1))).obj Y) (n := - (n + 1)) _ (by omega)

end Abelian.Ext

variable (C)

open Abelian

/-- If `C` is a locally `w`-small abelian category with enough projectives,
then `HasExt.{w} C` holds. We do not make this an instance though:
for a given category `C`, there may be different reasonable choices for
the universe `w`, and if we have two `HasExt.{w₁} C` and `HasExt.{w₂} C`
instances, we would have to specify the universe explicitly almost
everywhere, which would be an inconvenience. Then, we must be
very selective regarding `HasExt` instances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0323645c30f5b045835c2a465f8fc89ea6b18dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
