# Nodup.erase_eq_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd2109e3-1356-6f09-7824-e957e4d7b916",
  "kind": "theorem",
  "lexical_name": "Nodup.erase_eq_filter",
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
  "slug": "nodup-erase-eq-filter--f067c56e7256de292564fab1",
  "source": {
    "blob": "f0fc13080193a328bbe5f6129064c5f0c835090a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 450,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7bc929c31d2ebb17ac5be6136335f3f24d2731c552e4cf10e6ade9960534c827.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f067c56e7256de292564fab15ed1259d5962581ae3411e528a2dd395f9c10d05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant7bc929c31d2ebb17ac5be6136335f3f24d2731c552e4cf10e6ade9960534c827.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd2109e3-1356-6f09-7824-e957e4d7b916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nodup.erase_eq_filter [DecidableEq α] (a : α) {s} :
    Nodup s → s.erase a = Multiset.filter (· ≠ a) s :=
  Quot.induction_on s fun _ d =>
    congr_arg ((↑) : List α → Multiset α) <| by simpa using! List.Nodup.erase_eq_filter d a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant7bc929c31d2ebb17ac5be6136335f3f24d2731c552e4cf10e6ade9960534c827.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant7bc929c31d2ebb17ac5be6136335f3f24d2731c552e4cf10e6ade9960534c827.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0fc13080193a328bbe5f6129064c5f0c835090a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
