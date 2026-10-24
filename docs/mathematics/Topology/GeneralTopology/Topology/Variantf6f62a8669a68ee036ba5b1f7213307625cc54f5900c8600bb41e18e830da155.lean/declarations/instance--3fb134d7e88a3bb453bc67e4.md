# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3f86dd39a60807e2d0d53cf5380db7d5631482f5f0f0a87674c4768a8832c64",
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
  "slug": "instance--3fb134d7e88a3bb453bc67e4",
  "source": {
    "blob": "94fd9986cf925b7f1fdba557d6c47d2ba8e3f27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fb134d7e88a3bb453bc67e408aae14cf204a8240e11331ad90ff9d234a9d13c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3f86dd39a60807e2d0d53cf5380db7d5631482f5f0f0a87674c4768a8832c64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : RegularSpace (P →ᴬ[R] Q) :=
  have := IsTopologicalAddTorsor.to_isTopologicalAddGroup W Q
  inferInstance

end Affine

section LinearCodomain

variable [IsTopologicalAddTorsor P] [IsTopologicalAddGroup W]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fd9986cf925b7f1fdba557d6c47d2ba8e3f27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
