# preserveFiniteLimits_plusFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e91a33621f5831d4dfe5e8ff6e0758228f18ab158da5a1826a7a839880aee8f",
  "kind": "instance",
  "lexical_name": "preserveFiniteLimits_plusFunctor",
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
  "slug": "preservefinitelimits-plusfunctor--23b7489ee4e14e703ec7d661",
  "source": {
    "blob": "794db4ef68761ea2a6b6c99800c7dde1d0f6f065",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23b7489ee4e14e703ec7d6612fc4a50afca5f76290664f4ab0a52ddf7c6a08e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e91a33621f5831d4dfe5e8ff6e0758228f18ab158da5a1826a7a839880aee8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preserveFiniteLimits_plusFunctor
    [HasFiniteLimits D] [PreservesFiniteLimits (forget D)] [(forget D).ReflectsIsomorphisms] :
    PreservesFiniteLimits (J.plusFunctor D) := by
  apply preservesFiniteLimits_of_preservesFiniteLimitsOfSize.{max v u}
  intro K _ _
  have : ReflectsLimitsOfShape K (forget D) := reflectsLimitsOfShape_of_reflectsIsomorphisms
  apply preservesLimitsOfShape_plusFunctor.{w, v, u}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `794db4ef68761ea2a6b6c99800c7dde1d0f6f065` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
