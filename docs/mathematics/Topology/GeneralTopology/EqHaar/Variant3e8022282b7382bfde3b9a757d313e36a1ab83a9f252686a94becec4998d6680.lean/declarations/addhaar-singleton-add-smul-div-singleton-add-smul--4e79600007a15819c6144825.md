# addHaar_singleton_add_smul_div_singleton_add_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 505,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b2bc4d2-0236-0db1-411f-4c5fa3ccd3b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d907003-dc00-6837-8411-1c59b5e7bfcb",
  "kind": "theorem",
  "lexical_name": "addHaar_singleton_add_smul_div_singleton_add_smul",
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
  "slug": "addhaar-singleton-add-smul-div-singleton-add-smul--4e79600007a15819c6144825",
  "source": {
    "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 505,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e79600007a15819c6144825342c219a18faf2863922f44c8c84b85246d3312c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d907003-dc00-6837-8411-1c59b5e7bfcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_singleton_add_smul_div_singleton_add_smul {r : ℝ} (hr : r ≠ 0) (x y : E)
    (s t : Set E) : μ ({x} + r • s) / μ ({y} + r • t) = μ s / μ t :=
  calc
    μ ({x} + r • s) / μ ({y} + r • t) = ENNReal.ofReal (|r| ^ finrank ℝ E) * μ s *
        (ENNReal.ofReal (|r| ^ finrank ℝ E) * μ t)⁻¹ := by
      simp only [div_eq_mul_inv, addHaar_smul, image_add_left, measure_preimage_add, abs_pow,
        singleton_add]
    _ = ENNReal.ofReal (|r| ^ finrank ℝ E) * (ENNReal.ofReal (|r| ^ finrank ℝ E))⁻¹ *
          (μ s * (μ t)⁻¹) := by
      rw [ENNReal.mul_inv]
      · ring
      · simp only [pow_pos (abs_pos.mpr hr), ENNReal.ofReal_eq_zero, not_le, Ne.def, true_or_iff]
      · simp only [ENNReal.ofReal_ne_top, true_or_iff, Ne.def, not_false_iff]
    _ = μ s / μ t := by
      rw [ENNReal.mul_inv_cancel, one_mul, div_eq_mul_inv]
      · simp only [pow_pos (abs_pos.mpr hr), ENNReal.ofReal_eq_zero, not_le, Ne.def]
      · simp only [ENNReal.ofReal_ne_top, Ne.def, not_false_iff]
#align measure_theory.measure.add_haar_singleton_add_smul_div_singleton_add_smul MeasureTheory.Measure.addHaar_singleton_add_smul_div_singleton_add_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df05ce0845ed32a0bb7ac052cf509c7af6e46f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
