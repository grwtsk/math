# eventually_pow_one_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b79c297581f63239e13df3987eb562f87864f86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45b4da72-5b40-2726-0e2f-86cb4d0e437c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a21e988e-21b7-e9e1-0389-c0ef381b7fbd",
  "kind": "theorem",
  "lexical_name": "eventually_pow_one_div_le",
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
  "slug": "eventually-pow-one-div-le--918aaabff8d5ecb7219a3a44",
  "source": {
    "blob": "7b79c297581f63239e13df3987eb562f87864f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 448,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918aaabff8d5ecb7219a3a44bd5af6f7fdc5a8813a5e538035271003f53ef77b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a21e988e-21b7-e9e1-0389-c0ef381b7fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_pow_one_div_le {x : ℝ≥0∞} (hx : x ≠ ∞) {y : ℝ≥0∞} (hy : 1 < y) :
    ∀ᶠ n : ℕ in atTop, x ^ (1 / n : ℝ) ≤ y := by
  lift x to ℝ≥0 using hx
  by_cases h : y = ∞
  · exact Eventually.of_forall fun n => h.symm ▸ le_top
  · lift y to ℝ≥0 using h
    have := NNReal.eventually_pow_one_div_le x (mod_cast hy : 1 < y)
    refine this.congr (Eventually.of_forall fun n => ?_)
    rw [← coe_rpow_of_nonneg x (by positivity : 0 ≤ (1 / n : ℝ)), coe_le_coe]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant69a615fcda2a7b2af2317de2926378992a6e472ae5dc74f401af18e188b57761.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b79c297581f63239e13df3987eb562f87864f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
