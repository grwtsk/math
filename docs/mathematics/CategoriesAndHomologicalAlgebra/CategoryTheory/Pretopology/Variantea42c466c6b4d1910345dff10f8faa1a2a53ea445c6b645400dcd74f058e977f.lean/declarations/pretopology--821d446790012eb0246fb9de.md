# Pretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddc425f8bb69c112c4ae80d3942a143428dea569ebfff6a5993bd9da7f0894d1",
  "kind": "structure",
  "lexical_name": "Pretopology",
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
  "slug": "pretopology--821d446790012eb0246fb9de",
  "source": {
    "blob": "ce5968e9d4401e1f0606de3488a0e4c6bd5e1b8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantea42c466c6b4d1910345dff10f8faa1a2a53ea445c6b645400dcd74f058e977f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:821d446790012eb0246fb9deb7a1479d6fa1d021fa9d2002d9fca19707858200",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantea42c466c6b4d1910345dff10f8faa1a2a53ea445c6b645400dcd74f058e977f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddc425f8bb69c112c4ae80d3942a143428dea569ebfff6a5993bd9da7f0894d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Pretopology
    (C : Type u)
    [Category.{v} C] where
  IsCover : {U : C} → Cover C U → Prop
  PullbackData :
    {U V : C} →
      Cover C U →
      (V ⟶ U) →
      Type w
  pullbackCover :
    {U V : C} →
      (S : Cover C U) →
      (f : V ⟶ U) →
      PullbackData S f →
      Cover C V
  transitiveComposite :
    {U : C} →
      (S : Cover C U) →
      ((i : S.Index) → Cover C (S.localObject i)) →
      Cover C U
  identityCovering :
    ∀ U : C, IsCover (Cover.identityCover U)
  pullbackStable :
    ∀ {U V : C}
      (S : Cover C U)
      (f : V ⟶ U)
      (p : PullbackData S f),
      IsCover S →
      IsCover (pullbackCover S f p)
  transitiveCovering :
    ∀ {U : C}
      (S : Cover C U)
      (T : (i : S.Index) → Cover C (S.localObject i)),
      IsCover S →
      (∀ i : S.Index, IsCover (T i)) →
      IsCover (transitiveComposite S T)

namespace Pretopology

variable {C : Type u}
variable [Category.{v} C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantea42c466c6b4d1910345dff10f8faa1a2a53ea445c6b645400dcd74f058e977f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantea42c466c6b4d1910345dff10f8faa1a2a53ea445c6b645400dcd74f058e977f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5968e9d4401e1f0606de3488a0e4c6bd5e1b8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
