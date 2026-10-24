# filter_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cec45724-af28-3973-cd18-c6fa4efad029",
  "kind": "theorem",
  "lexical_name": "filter_eq'",
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
  "slug": "filter-eq--d27486bef261d40f9acf2a9d",
  "source": {
    "blob": "f0fc13080193a328bbe5f6129064c5f0c835090a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 356,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7bc929c31d2ebb17ac5be6136335f3f24d2731c552e4cf10e6ade9960534c827.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d27486bef261d40f9acf2a9d4e079f38f0c79bb4ff5fc176e54539b6d293e410",
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

Occurrence: `result:cec45724-af28-3973-cd18-c6fa4efad029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_eq' (s : Multiset α) (b : α) : s.filter (· = b) = replicate (count b s) b :=
  Quotient.inductionOn s fun l => by
    simp only [quot_mk_to_coe, filter_coe, coe_count]
    rw [List.filter_eq, coe_replicate]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant7bc929c31d2ebb17ac5be6136335f3f24d2731c552e4cf10e6ade9960534c827.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant7bc929c31d2ebb17ac5be6136335f3f24d2731c552e4cf10e6ade9960534c827.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0fc13080193a328bbe5f6129064c5f0c835090a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
