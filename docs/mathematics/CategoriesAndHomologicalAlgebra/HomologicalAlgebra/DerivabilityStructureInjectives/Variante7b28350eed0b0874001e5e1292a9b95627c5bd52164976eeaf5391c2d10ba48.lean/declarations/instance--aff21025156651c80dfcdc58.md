# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:743e204eea97143c26e5c09e86b79dde7cb7af27add2060dd7eea550f2dce8ca",
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
  "slug": "instance--aff21025156651c80dfcdc58",
  "source": {
    "blob": "6585aee6a4155a8620b3a5499806de3788d7997e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 276,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aff21025156651c80dfcdc584e4bac17827ce1cc5b083f1b292d57424e695b20",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:743e204eea97143c26e5c09e86b79dde7cb7af27add2060dd7eea550f2dce8ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance : (L C).IsLocalizedEquivalence := by
  have :
      ((L C).functor ⋙ 𝟭 (Plus (InjectiveObject C))).IsLocalization
        ((CochainComplex.Plus.quasiIso C).inverseImage
          (InjectiveObject.ι C).mapCochainComplexPlus) :=
    inferInstanceAs ((HomotopyCategory.Plus.quotient (InjectiveObject C)).IsLocalization _)
  exact LocalizerMorphism.IsLocalizedEquivalence.of_isLocalization_of_isLocalization (L C) (𝟭 _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6585aee6a4155a8620b3a5499806de3788d7997e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
