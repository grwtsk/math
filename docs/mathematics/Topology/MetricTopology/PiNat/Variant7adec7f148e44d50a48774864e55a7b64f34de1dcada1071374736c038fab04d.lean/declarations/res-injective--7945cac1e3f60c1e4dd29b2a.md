# res_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a943877-10b9-4b60-29dc-0f8acdb9bc1a",
  "kind": "theorem",
  "lexical_name": "res_injective",
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
  "slug": "res-injective--7945cac1e3f60c1e4dd29b2a",
  "source": {
    "blob": "ec4e50ee38c606a26670c8224108b37944880ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 246,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7945cac1e3f60c1e4dd29b2a6eca36edb9cb08640a8d1e4d7d4aac2d0e495887",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a943877-10b9-4b60-29dc-0f8acdb9bc1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem res_injective : Injective (@res α) := by
  intro x y h
  ext n
  apply res_eq_res.mp _ (Nat.lt_succ_self _)
  rw [h]
#align pi_nat.res_injective PiNat.res_injective

/-- `cylinder x n` is equal to the set of sequences `y` with the same restriction to `n` as `x`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec4e50ee38c606a26670c8224108b37944880ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
