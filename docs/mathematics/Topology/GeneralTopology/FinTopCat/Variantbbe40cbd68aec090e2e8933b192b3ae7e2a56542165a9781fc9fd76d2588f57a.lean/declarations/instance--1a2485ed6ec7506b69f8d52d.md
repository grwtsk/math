# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c182718ec8a5ba97f9d4367b36f6e3e0ff84b86142c5762a8baaccfed3fd02c2",
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
  "slug": "instance--1a2485ed6ec7506b69f8d52d",
  "source": {
    "blob": "cc9cefc74da52f1533966a276878e4d6183e79d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/FinTopCat/Variantbbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a2485ed6ec7506b69f8d52df87954fe1b7a73fc8d3a3e47e6c2c2e8ba416650",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FinTopCat/Variantbbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c182718ec8a5ba97f9d4367b36f6e3e0ff84b86142c5762a8baaccfed3fd02c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : FinTopCat) : Fintype ((forget₂ FinTopCat TopCat).obj X) :=
  X.fintype

end FinTopCat

namespace FintypeCatDiscrete

/-- Scoped topological space instance on objects of the category of finite types, assigning
the discrete topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FinTopCat/Variantbbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FinTopCat/Variantbbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9cefc74da52f1533966a276878e4d6183e79d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
