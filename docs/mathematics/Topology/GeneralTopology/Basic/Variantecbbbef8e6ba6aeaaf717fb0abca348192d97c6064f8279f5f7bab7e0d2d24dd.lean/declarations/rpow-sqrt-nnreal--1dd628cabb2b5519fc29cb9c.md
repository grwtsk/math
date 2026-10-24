# rpow_sqrt_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "732ddfe217a6b1ddb950ddac65b28a8ebe04e6af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 697,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7933fe35-a85b-ac99-1469-50f7ccc504ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d223248-0bee-bf59-33ed-f95d761a0863",
  "kind": "lemma",
  "lexical_name": "rpow_sqrt_nnreal",
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
  "slug": "rpow-sqrt-nnreal--1dd628cabb2b5519fc29cb9c",
  "source": {
    "blob": "732ddfe217a6b1ddb950ddac65b28a8ebe04e6af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 697,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dd628cabb2b5519fc29cb9c64d5950964e04aeea88e985e1465d231558e4910",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d223248-0bee-bf59-33ed-f95d761a0863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_sqrt_nnreal {a : A} {x : ℝ≥0}
    (ha : 0 ≤ a := by cfc_tac) : (sqrt a) ^ (x : ℝ) = a ^ (x / 2 : ℝ) := by
  by_cases hx : x = 0
  case pos =>
    have ha' : 0 ≤ sqrt a := sqrt_nonneg _
    simp [hx, rpow_zero _ ha', rpow_zero _ ha]
  case neg =>
    have h₁ : 0 ≤ (x : ℝ) := NNReal.zero_le_coe
    rw [sqrt_eq_rpow, rpow_rpow_of_exponent_nonneg _ _ _ (by simp) h₁, one_div_mul_eq_div]

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732ddfe217a6b1ddb950ddac65b28a8ebe04e6af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
