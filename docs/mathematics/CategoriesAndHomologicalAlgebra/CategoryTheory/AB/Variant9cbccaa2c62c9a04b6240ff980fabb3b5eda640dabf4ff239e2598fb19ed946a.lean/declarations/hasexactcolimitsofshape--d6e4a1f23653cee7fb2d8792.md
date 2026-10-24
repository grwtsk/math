# hasExactColimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d203eaa-f346-49e9-1387-19fbbd852c06",
  "kind": "lemma",
  "lexical_name": "hasExactColimitsOfShape",
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
  "slug": "hasexactcolimitsofshape--d6e4a1f23653cee7fb2d8792",
  "source": {
    "blob": "c87cb042f31043f35d3b2ee47ad4ea5bdcb2524f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e4a1f23653cee7fb2d8792a88cf92656c0ed340c961510a87e5242fc3ae1f6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d203eaa-f346-49e9-1387-19fbbd852c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasExactColimitsOfShape [HasColimitsOfShape J A] [HasExactColimitsOfShape J A]
    [HasFiniteLimits A] : HasExactColimitsOfShape J (Condensed.{u} A) := by
  let e : Condensed.{u} A ≌ Sheaf (extensiveTopology Stonean.{u}) A :=
    (StoneanCompHaus.equivalence A).symm.trans Presheaf.coherentExtensiveEquivalence
  have : HasColimitsOfShape J (Sheaf (extensiveTopology Stonean.{u}) A) :=
    hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape e.inverse
  exact HasExactColimitsOfShape.domain_of_functor _ e.functor

set_option Elab.async false in  -- TODO: universe levels from type are unified in proof
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c87cb042f31043f35d3b2ee47ad4ea5bdcb2524f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
