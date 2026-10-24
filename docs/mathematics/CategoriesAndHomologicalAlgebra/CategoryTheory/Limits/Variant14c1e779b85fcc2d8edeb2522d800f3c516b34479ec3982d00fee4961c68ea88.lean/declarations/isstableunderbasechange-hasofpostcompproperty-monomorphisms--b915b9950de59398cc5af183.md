# IsStableUnderBaseChange.hasOfPostcompProperty_monomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c009c19041e4c9c6947978202e3dbea41b3f86a46034923acea69df3d2f93129",
  "kind": "instance",
  "lexical_name": "IsStableUnderBaseChange.hasOfPostcompProperty_monomorphisms",
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
  "slug": "isstableunderbasechange-hasofpostcompproperty-monomorphisms--b915b9950de59398cc5af183",
  "source": {
    "blob": "618b7e897c51c5b40b77c769949f9692bcba361d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 236,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b915b9950de59398cc5af183acc090a018409dbf11385fb720bf2327827bb7b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c009c19041e4c9c6947978202e3dbea41b3f86a46034923acea69df3d2f93129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsStableUnderBaseChange.hasOfPostcompProperty_monomorphisms
    [P.IsStableUnderBaseChange] : P.HasOfPostcompProperty (MorphismProperty.monomorphisms C) where
  of_postcomp {X Y Z} f g (hg : Mono g) hcomp := by
    have : f = (asIso (pullback.fst (f ≫ g) g)).inv ≫ pullback.snd (f ≫ g) g := by
      simp [Iso.eq_inv_comp, ← cancel_mono g, pullback.condition]
    rw [this, cancel_left_of_respectsIso (P := P)]
    exact P.pullback_snd _ _ hcomp

@[deprecated (since := "2024-11-06")] alias IsStableUnderBaseChange.pullback_map := pullback_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `618b7e897c51c5b40b77c769949f9692bcba361d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
