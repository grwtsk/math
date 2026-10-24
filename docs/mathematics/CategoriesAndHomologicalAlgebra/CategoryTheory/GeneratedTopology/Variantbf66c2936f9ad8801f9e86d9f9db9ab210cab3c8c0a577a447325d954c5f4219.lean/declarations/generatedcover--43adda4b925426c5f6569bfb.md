# GeneratedCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29ad382d8993f1e30cdc86a3a8465425870d2ea971506565316e5efa070ce772",
  "kind": "inductive",
  "lexical_name": "GeneratedCover",
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
  "slug": "generatedcover--43adda4b925426c5f6569bfb",
  "source": {
    "blob": "9483f1a7bb2444c66db2d525576d7bacd5adca55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeneratedTopology/Variantbf66c2936f9ad8801f9e86d9f9db9ab210cab3c8c0a577a447325d954c5f4219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43adda4b925426c5f6569bfb995645e0bd1412b57726ab71c60ca18a0aaad041",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GeneratedTopology/Variantbf66c2936f9ad8801f9e86d9f9db9ab210cab3c8c0a577a447325d954c5f4219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29ad382d8993f1e30cdc86a3a8465425870d2ea971506565316e5efa070ce772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive GeneratedCover
    {C : Type u} [Category.{v} C]
    (T : Pretopology.{u, v, w} C)
    (Base : ∀ U : C, Cover C U → Prop) :
    ∀ U : C, Cover C U → Prop
  | base {U : C} {S : Cover C U} :
      Base U S → GeneratedCover T Base U S
  | identity (U : C) :
      GeneratedCover T Base U (Cover.identityCover U)
  | pullback {U V : C}
      (S : Cover C U)
      (f : V ⟶ U)
      (p : T.PullbackData S f) :
      GeneratedCover T Base U S →
      GeneratedCover T Base V (T.pullbackCover S f p)
  | transitive {U : C}
      (S : Cover C U)
      (R : (i : S.Index) → Cover C (S.localObject i)) :
      GeneratedCover T Base U S →
      (∀ i : S.Index, GeneratedCover T Base (S.localObject i) (R i)) →
      GeneratedCover T Base U (T.transitiveComposite S R)

namespace GeneratedCover

variable {C : Type u}
variable [Category.{v} C]
variable (T : Pretopology.{u, v, w} C)
variable (Base : ∀ U : C, Cover C U → Prop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GeneratedTopology/Variantbf66c2936f9ad8801f9e86d9f9db9ab210cab3c8c0a577a447325d954c5f4219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeneratedTopology/Variantbf66c2936f9ad8801f9e86d9f9db9ab210cab3c8c0a577a447325d954c5f4219.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9483f1a7bb2444c66db2d525576d7bacd5adca55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
