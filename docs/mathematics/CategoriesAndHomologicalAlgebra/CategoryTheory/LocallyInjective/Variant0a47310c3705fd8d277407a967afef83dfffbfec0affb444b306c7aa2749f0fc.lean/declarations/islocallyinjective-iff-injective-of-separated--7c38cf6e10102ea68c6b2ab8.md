# isLocallyInjective_iff_injective_of_separated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caaeac5f-8dcd-46cf-d513-f6a1991c0f85",
  "kind": "lemma",
  "lexical_name": "isLocallyInjective_iff_injective_of_separated",
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
  "slug": "islocallyinjective-iff-injective-of-separated--7c38cf6e10102ea68c6b2ab8",
  "source": {
    "blob": "414a77f0c9e77bf03f1c8e15d8518f54470baf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c38cf6e10102ea68c6b2ab89b17d1b5c68c2f98b16979dda755247d035380c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caaeac5f-8dcd-46cf-d513-f6a1991c0f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyInjective_iff_injective_of_separated
    (hsep : Presieve.IsSeparated J (F₁ ⋙ forget D)) :
    IsLocallyInjective J φ ↔ ∀ (X : Cᵒᵖ), Function.Injective (φ.app X) := by
  constructor
  · intro _ X x y h
    exact (hsep _ (equalizerSieve_mem J φ x y h)).ext (fun _ _ hf => hf)
  · apply isLocallyInjective_of_injective

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `414a77f0c9e77bf03f1c8e15d8518f54470baf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
