# rpow_sqrt_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9a857bbea505af2f528e6dcd2db8cee73f66b50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ced4d02-9602-e2de-24cb-fee8b326146b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc154453-00c9-9861-071c-1a0d9c7f9a63",
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
  "slug": "rpow-sqrt-nnreal--bc7baec0e968fb559df9077c",
  "source": {
    "blob": "f9a857bbea505af2f528e6dcd2db8cee73f66b50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 525,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7baec0e968fb559df9077c7f0e5a5c089c18311226af99570390ee4210266d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc154453-00c9-9861-071c-1a0d9c7f9a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_sqrt_nnreal {a : A} {x : ℝ≥0}
    (ha : 0 ≤ a := by cfc_tac) : (sqrt a) ^ (x : ℝ) = a ^ (x / 2 : ℝ) := by
  by_cases hx : x = 0
  case pos =>
    have ha' : 0 ≤ sqrt a := sqrt_nonneg
    simp [hx, rpow_zero _ ha', rpow_zero _ ha]
  case neg =>
    have h₁ : 0 ≤ (x : ℝ) := NNReal.zero_le_coe
    rw [sqrt_eq_rpow, rpow_rpow_of_exponent_nonneg _ _ _ (by norm_num) h₁, one_div_mul_eq_div]

end unital_vs_nonunital

end Unital

end CFC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a857bbea505af2f528e6dcd2db8cee73f66b50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
