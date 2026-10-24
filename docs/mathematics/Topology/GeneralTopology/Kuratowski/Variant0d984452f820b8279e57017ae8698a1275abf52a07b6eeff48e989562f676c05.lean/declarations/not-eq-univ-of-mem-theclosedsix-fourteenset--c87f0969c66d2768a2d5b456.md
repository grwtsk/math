# not_eq_univ_of_mem_theClosedSix_fourteenSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3fd57eb-3b9c-f913-80a0-edcbcaee4f82",
  "kind": "theorem",
  "lexical_name": "not_eq_univ_of_mem_theClosedSix_fourteenSet",
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
  "slug": "not-eq-univ-of-mem-theclosedsix-fourteenset--c87f0969c66d2768a2d5b456",
  "source": {
    "blob": "2c28bb271714c425f877682fe5529ec85a4b3f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 242,
    "path": "GRWTSK/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87f0969c66d2768a2d5b456b52c543f2c0acef9fa7ccc1063789297e5b0c2e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3fd57eb-3b9c-f913-80a0-edcbcaee4f82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_eq_univ_of_mem_theClosedSix_fourteenSet {s}
    (h : s ∈ theClosedSix fourteenSet) : s ≠ univ := by
  rw [theClosedSix, kckckc_fourteenSet, kckck_fourteenSet,
    kckc_fourteenSet, kck_fourteenSet, kc_fourteenSet, k_fourteenSet] at h
  rw [Ne, eq_univ_iff_forall]
  push Not
  repeat obtain _ | ⟨_, h⟩ := h; rotate_left
  · use 1 / 2; norm_num
  · use 1 / 2; norm_num
  · use 6; norm_num
  · use 6; norm_num
  · use 1 / 2; norm_num
  · use 6; norm_num

/-- The fourteen different operations applied to the `fourteenSet` generate no duplicates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c28bb271714c425f877682fe5529ec85a4b3f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
