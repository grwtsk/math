# ENNReal.tsum_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c633976a412c7d498b55d6188e811d005fd73da4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db2776d4-bd9f-7a08-28d8-ac7eff0c8423",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bcf5682-31c8-9da9-082d-de8631f70e7b",
  "kind": "theorem",
  "lexical_name": "ENNReal.tsum_geometric",
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
  "slug": "ennreal-tsum-geometric--e9cc2fe9789165bd0f2c854c",
  "source": {
    "blob": "c633976a412c7d498b55d6188e811d005fd73da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 403,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9cc2fe9789165bd0f2c854c4fe3519f44fbc79e1641947f6b8b12105a704366",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bcf5682-31c8-9da9-082d-de8631f70e7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ENNReal.tsum_geometric (r : ℝ≥0∞) : ∑' n : ℕ, r ^ n = (1 - r)⁻¹ := by
  rcases lt_or_ge r 1 with hr | hr
  · rcases ENNReal.lt_iff_exists_coe.1 hr with ⟨r, rfl, hr'⟩
    norm_cast at *
    convert! ENNReal.tsum_coe_eq (NNReal.hasSum_geometric hr)
    rw [ENNReal.coe_inv <| ne_of_gt <| tsub_pos_iff_lt.2 hr, coe_sub, coe_one]
  · rw [tsub_eq_zero_iff_le.mpr hr, ENNReal.inv_zero, ENNReal.tsum_eq_iSup_nat, iSup_eq_top]
    refine fun a ha ↦
      (ENNReal.exists_nat_gt (lt_top_iff_ne_top.1 ha)).imp fun n hn ↦ lt_of_lt_of_le hn ?_
    calc
      (n : ℝ≥0∞) = ∑ i ∈ range n, 1 := by rw [sum_const, nsmul_one, card_range]
      _ ≤ ∑ i ∈ range n, r ^ i := by gcongr; apply one_le_pow₀ hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c633976a412c7d498b55d6188e811d005fd73da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
