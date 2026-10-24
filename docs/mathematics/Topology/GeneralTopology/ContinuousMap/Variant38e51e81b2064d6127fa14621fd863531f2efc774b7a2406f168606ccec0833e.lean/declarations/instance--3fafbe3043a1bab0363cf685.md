# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:618bc02c4341e7e910c7a1752525c5da5053e70e4a4e2f52a4b43d7d74eece38",
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
  "slug": "instance--3fafbe3043a1bab0363cf685",
  "source": {
    "blob": "f05fd2310d1708284782840a985884c56a9ef8ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fafbe3043a1bab0363cf6856c10072c27c74595dee01964e7050f00768d927b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:618bc02c4341e7e910c7a1752525c5da5053e70e4a4e2f52a4b43d7d74eece38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [NonUnitalCommCStarAlgebra A] : NonUnitalCommCStarAlgebra (α →ᵇ A) where
  mul_comm := mul_comm

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05fd2310d1708284782840a985884c56a9ef8ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
