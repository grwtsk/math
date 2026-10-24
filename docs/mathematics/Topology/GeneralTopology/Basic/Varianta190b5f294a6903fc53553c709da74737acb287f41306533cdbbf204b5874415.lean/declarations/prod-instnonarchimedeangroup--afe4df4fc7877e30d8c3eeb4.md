# Prod.instNonarchimedeanGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09f14e1648b65470a6436fc246f86bd0d2fa20c5d5cc64b50877e15eec497b89",
  "kind": "instance",
  "lexical_name": "Prod.instNonarchimedeanGroup",
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
  "slug": "prod-instnonarchimedeangroup--afe4df4fc7877e30d8c3eeb4",
  "source": {
    "blob": "4f656218f17302bc3ec20c22c212a288e45cbcf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afe4df4fc7877e30d8c3eeb4c3c4084921c4835685a878f02e817609eeb78d27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09f14e1648b65470a6436fc246f86bd0d2fa20c5d5cc64b50877e15eec497b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instNonarchimedeanGroup : NonarchimedeanGroup (G × K) where
  is_nonarchimedean _ hU :=
    let ⟨V, W, h⟩ := prod_subset hU
    ⟨V.prod W, ‹_›⟩

end NonarchimedeanGroup

namespace NonarchimedeanRing

open NonarchimedeanAddGroup

variable {R S : Type*}
variable [Ring R] [TopologicalSpace R] [NonarchimedeanRing R]
variable [Ring S] [TopologicalSpace S] [NonarchimedeanRing S]

/-- The Cartesian product of two nonarchimedean rings is nonarchimedean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f656218f17302bc3ec20c22c212a288e45cbcf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
