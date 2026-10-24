# ghc1aDependencyInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50832d250c48d0da061a2b4b1b0606a5eab0027eed0a39536b8226ce6a45e97e",
  "kind": "def",
  "lexical_name": "ghc1aDependencyInvariant",
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
  "slug": "ghc1adependencyinvariant--d852c3cd0e5f97ffd02db3df",
  "source": {
    "blob": "94d5401f4a44d8e06b176cbb070e400ce0cc408a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d852c3cd0e5f97ffd02db3dfc7f52c531c31d4b3ff054a5a6dd1d8ded71f0a92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50832d250c48d0da061a2b4b1b0606a5eab0027eed0a39536b8226ce6a45e97e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ghc1aDependencyInvariant : GHCDependencyInvariant where
  finiteH1_before_restriction :=
    GaloisCohomologyLayer.finiteH1_before_restriction
  restriction_before_abstractSelmer :=
    GaloisCohomologyLayer.restriction_before_abstractSelmer
  finiteH1_before_abstractKummer :=
    GaloisCohomologyLayer.finiteH1_before_abstractKummer
  restriction_before_abstractKummer :=
    GaloisCohomologyLayer.restriction_before_abstractKummer
  abstractSelmer_before_abstractKummer :=
    GaloisCohomologyLayer.abstractSelmer_before_abstractKummer
  finiteH1_before_selmerExact :=
    GaloisCohomologyLayer.finiteH1_before_selmerExact
  restriction_before_selmerExact :=
    GaloisCohomologyLayer.restriction_before_selmerExact
  abstractSelmer_before_selmerExact :=
    GaloisCohomologyLayer.abstractSelmer_before_selmerExact
  abstractKummer_before_selmerExact :=
    GaloisCohomologyLayer.abstractKummer_before_selmerExact
  abstractSelmer_before_continuousAdapter :=
    GaloisCohomologyLayer.abstractSelmer_before_continuousAdapter
  abstractSelmer_before_absoluteGaloisAdapter :=
    GaloisCohomologyLayer.abstractSelmer_before_absoluteGaloisAdapter
  continuousAdapter_before_absoluteGaloisAdapter :=
    GaloisCohomologyLayer.continuousAdapter_before_absoluteGaloisAdapter
  boundary := [
    "Finite H1, restriction, and abstract Selmer precede Kummer adapters.",
    "Finite Selmer precedes continuous and absolute Galois adapters.",
    "No elliptic-curve, BSD, continuous, absolute-Galois, or Legacy import is used."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94d5401f4a44d8e06b176cbb070e400ce0cc408a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
