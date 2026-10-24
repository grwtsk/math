# tendsto_Ioc_Iio_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61b92796a175476488bb6f6ddf369cda2b664ba379fda1651466c89824620dbf",
  "kind": "instance",
  "lexical_name": "tendsto_Ioc_Iio_Iio",
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
  "slug": "tendsto-ioc-iio-iio--c6e042e7ec031323c8d0a19b",
  "source": {
    "blob": "0bf134fabd165e48d23d9e76971153c64f6a01fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6e042e7ec031323c8d0a19bc1684c88c54a78ccaa293c5438afe9bfa5bd7c3d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61b92796a175476488bb6f6ddf369cda2b664ba379fda1651466c89824620dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tendsto_Ioc_Iio_Iio {a : α} : TendstoIxxClass Ioc (𝓟 (Iio a)) (𝓟 (Iio a)) :=
  tendstoIxxClass_of_subset fun _ _ => Ioc_subset_Icc_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf134fabd165e48d23d9e76971153c64f6a01fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
