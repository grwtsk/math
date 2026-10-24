# interior_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32cc0af6-52f9-6267-e268-e55cd189fb54",
  "kind": "theorem",
  "lexical_name": "interior_Iio",
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
  "slug": "interior-iio--fad9fbd07f9e77bf6dd6bda6",
  "source": {
    "blob": "04fbe5b1fddf1f2206d288243edfadae02fc7931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 495,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fad9fbd07f9e77bf6dd6bda6ae9b014e0ab729e7ac9c2c97278862f366bd4b24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32cc0af6-52f9-6267-e268-e55cd189fb54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem interior_Iio : interior (Iio a) = Iio a := isOpen_Iio.interior_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04fbe5b1fddf1f2206d288243edfadae02fc7931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
