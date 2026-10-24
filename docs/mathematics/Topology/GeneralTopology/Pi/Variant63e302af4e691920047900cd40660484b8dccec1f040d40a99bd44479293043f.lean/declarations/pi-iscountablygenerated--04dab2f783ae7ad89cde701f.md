# pi.isCountablyGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:926f594f22ba3f2b66e8491ccbf5e324477600034a6728115e7b5cd72d5f03f0",
  "kind": "instance",
  "lexical_name": "pi.isCountablyGenerated",
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
  "slug": "pi-iscountablygenerated--04dab2f783ae7ad89cde701f",
  "source": {
    "blob": "00f0d9c35b6804483484ffb258b71cf3caeb697f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04dab2f783ae7ad89cde701f78acef62c12716576936fe5de034f51dac73807f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:926f594f22ba3f2b66e8491ccbf5e324477600034a6728115e7b5cd72d5f03f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pi.isCountablyGenerated [Countable ι] [∀ i, IsCountablyGenerated (f i)] :
    IsCountablyGenerated (pi f) :=
  iInf.isCountablyGenerated _
#align filter.pi.is_countably_generated Filter.pi.isCountablyGenerated

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00f0d9c35b6804483484ffb258b71cf3caeb697f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
