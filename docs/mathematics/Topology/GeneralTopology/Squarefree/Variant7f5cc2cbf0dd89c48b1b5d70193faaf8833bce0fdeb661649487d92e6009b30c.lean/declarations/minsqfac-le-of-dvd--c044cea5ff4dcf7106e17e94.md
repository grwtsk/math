# minSqFac_le_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1dd595da1f9aa32b3c0f45401cc94aec0944d48f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e7bbe0d-bd8d-f135-5b78-416b49430532",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a9d2cbe-e800-8774-ff12-c70264f9b9dd",
  "kind": "theorem",
  "lexical_name": "minSqFac_le_of_dvd",
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
  "slug": "minsqfac-le-of-dvd--c044cea5ff4dcf7106e17e94",
  "source": {
    "blob": "1dd595da1f9aa32b3c0f45401cc94aec0944d48f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c044cea5ff4dcf7106e17e949d89c77b90894a7d93bab7030aae7f89331b0b34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9d2cbe-e800-8774-ff12-c70264f9b9dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minSqFac_le_of_dvd {n d : ℕ} (h : n.minSqFac = some d) {m} (m2 : 2 ≤ m) (md : m * m ∣ n) :
    d ≤ m := by
  have := minSqFac_has_prop n; rw [h] at this
  have fd := minFac_dvd m
  exact
    le_trans (this.2.2 _ (minFac_prime <| ne_of_gt m2) (dvd_trans (mul_dvd_mul fd fd) md))
      (minFac_le <| lt_of_lt_of_le (by decide) m2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dd595da1f9aa32b3c0f45401cc94aec0944d48f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
