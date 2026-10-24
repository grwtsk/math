# HeatFlowAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1bd0c0653595495ec1361723239cb98f8d7b59241ffae1fefcf615a65939d4f",
  "kind": "structure",
  "lexical_name": "HeatFlowAction",
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
  "slug": "heatflowaction--4e462a1c303794aa39c0d6d1",
  "source": {
    "blob": "4ce9b197c2f529d4dee464d65f4b6994db790d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 34,
    "path": "GRWTSK/Algebra/GroupTheory/HeatFlowAction/Variantb6a648cab344d75b22aa9f585ce579008295218caaaa5c954c5267fc7fb04692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e462a1c303794aa39c0d6d1e812783d8a9e5eece9b9ea161c595972ed9b7e9d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/HeatFlowAction/Variantb6a648cab344d75b22aa9f585ce579008295218caaaa5c954c5267fc7fb04692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1bd0c0653595495ec1361723239cb98f8d7b59241ffae1fefcf615a65939d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HeatFlowAction
    {C : CrystallineSite}
    (F : Crystal C) where
  Time : Type _
  flow : ∀ X : C.Site.Obj, Time → F.Section X → F.Section X
  identityAtZero : Prop
  identityAtZero_certified : identityAtZero
  semigroupLaw : Prop
  semigroupLaw_certified : semigroupLaw
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/HeatFlowAction/Variantb6a648cab344d75b22aa9f585ce579008295218caaaa5c954c5267fc7fb04692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/HeatFlowAction/Variantb6a648cab344d75b22aa9f585ce579008295218caaaa5c954c5267fc7fb04692.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce9b197c2f529d4dee464d65f4b6994db790d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
