# ApplicativeTransformation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ca074f9e5f5ed69a119a66706b88698e13fd3d063265fd87e82b9743b203755",
  "kind": "structure",
  "lexical_name": "ApplicativeTransformation",
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
  "slug": "applicativetransformation--835ef63e48df0c2bf946f070",
  "source": {
    "blob": "28a6608ea63f374d39db45a590c7569c201b2de7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:835ef63e48df0c2bf946f070732562a949624ec116754977a581c40b5c5a0240",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ca074f9e5f5ed69a119a66706b88698e13fd3d063265fd87e82b9743b203755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ApplicativeTransformation : Type max (u + 1) v w where
  /-- The function on objects defined by an `ApplicativeTransformation`. -/
  app : ∀ α : Type u, F α → G α
  /-- An `ApplicativeTransformation` preserves `pure`. -/
  preserves_pure' : ∀ {α : Type u} (x : α), app _ (pure x) = pure x
  /-- An `ApplicativeTransformation` intertwines `seq`. -/
  preserves_seq' : ∀ {α β : Type u} (x : F (α → β)) (y : F α), app _ (x <*> y) = app _ x <*> app _ y

end ApplicativeTransformation

namespace ApplicativeTransformation

variable (F : Type u → Type v) [Applicative F]
variable (G : Type u → Type w) [Applicative G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a6608ea63f374d39db45a590c7569c201b2de7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
