# Continuous.star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb0cb31a-d726-0c27-bff7-047293ab9b68",
  "kind": "theorem",
  "lexical_name": "Continuous.star",
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
  "slug": "continuous-star--1b83e56cc9dc0c1424fc9ca8",
  "source": {
    "blob": "e2239db4309fe23cc82f05c68ad0e4c9d954f626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b83e56cc9dc0c1424fc9ca80df6c491a8d55702f66c688b2bc8bb232a383da9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb0cb31a-d726-0c27-bff7-047293ab9b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.star (hf : Continuous f) : Continuous fun x => star (f x) :=
  continuous_star.comp hf
#align continuous.star Continuous.star

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2239db4309fe23cc82f05c68ad0e4c9d954f626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
