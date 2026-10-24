# iSup_pow_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdcdc204-2dc6-8c6f-df2e-9cda1d9dfca5",
  "kind": "lemma",
  "lexical_name": "iSup_pow_of_ne_zero",
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
  "slug": "isup-pow-of-ne-zero--3f36f739f813153b8acbd662",
  "source": {
    "blob": "b9907abb5bd3b220b3d1558e2bb9ed9ffc016ae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant2b5ccd305f336768f6e0b5dad90385193c67dd4ac802501d4d69a66ccf4a3444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f36f739f813153b8acbd662253880cdc8ec32fb60aabec7376b4e9bc26498e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant2b5ccd305f336768f6e0b5dad90385193c67dd4ac802501d4d69a66ccf4a3444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdcdc204-2dc6-8c6f-df2e-9cda1d9dfca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSup_pow_of_ne_zero (hn : n ≠ 0) (f : ι → ℝ≥0) : (⨆ i, f i) ^ n = ⨆ i, f i ^ n :=
  (NNReal.powOrderIso n hn).map_ciSup' _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant2b5ccd305f336768f6e0b5dad90385193c67dd4ac802501d4d69a66ccf4a3444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant2b5ccd305f336768f6e0b5dad90385193c67dd4ac802501d4d69a66ccf4a3444.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9907abb5bd3b220b3d1558e2bb9ed9ffc016ae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
