# isSelfAdjoint_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21240a24-0ea6-1e57-a25c-209340dc3d26",
  "kind": "theorem",
  "lexical_name": "isSelfAdjoint_def",
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
  "slug": "isselfadjoint-def--48bdae7d2bd8529831b8c3b7",
  "source": {
    "blob": "50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48bdae7d2bd8529831b8c3b763cbb01d1b1074c79b7b0b445a0ecedcdc24880d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21240a24-0ea6-1e57-a25c-209340dc3d26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSelfAdjoint_def : IsSelfAdjoint A ↔ A† = A := Iff.rfl

/-- Every self-adjoint `LinearPMap` has dense domain.

This is not true by definition since we define the adjoint without the assumption that the
domain is dense, but the choice of the junk value implies that a `LinearPMap` cannot be self-adjoint
if it does not have dense domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
