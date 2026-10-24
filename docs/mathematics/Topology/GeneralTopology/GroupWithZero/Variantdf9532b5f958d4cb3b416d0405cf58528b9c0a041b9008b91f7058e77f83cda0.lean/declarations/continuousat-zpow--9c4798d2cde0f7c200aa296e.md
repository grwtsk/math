# continuousAt_zpow₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "980b416287f87f565270585377bcc969191f1035",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a3d3279-b0b8-e8e7-270c-482cd97f7bd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad601839-0a86-c306-7bee-ec8fed2f5378",
  "kind": "theorem",
  "lexical_name": "continuousAt_zpow₀",
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
  "slug": "continuousat-zpow--9c4798d2cde0f7c200aa296e",
  "source": {
    "blob": "980b416287f87f565270585377bcc969191f1035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c4798d2cde0f7c200aa296e8ceb68246af4626a08ad93053b4e0a6b9ec3dc33",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad601839-0a86-c306-7bee-ec8fed2f5378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_zpow₀ (x : G₀) (m : ℤ) (h : x ≠ 0 ∨ 0 ≤ m) :
    ContinuousAt (fun x => x ^ m) x := by
  cases' m with m m
  · simpa only [Int.ofNat_eq_coe, zpow_coe_nat] using continuousAt_pow x m
  · simp only [zpow_negSucc]
    have hx : x ≠ 0 := h.resolve_right (Int.negSucc_lt_zero m).not_le
    exact (continuousAt_pow x (m + 1)).inv₀ (pow_ne_zero _ hx)
#align continuous_at_zpow₀ continuousAt_zpow₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `980b416287f87f565270585377bcc969191f1035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
