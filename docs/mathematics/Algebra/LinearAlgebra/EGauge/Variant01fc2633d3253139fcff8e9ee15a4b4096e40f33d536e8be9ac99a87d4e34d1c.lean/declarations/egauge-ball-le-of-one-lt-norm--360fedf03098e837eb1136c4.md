# egauge_ball_le_of_one_lt_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "854354f1971924c8feb2cf05c4434ced8d899263",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f493a46-d36b-5bd5-faca-341204059435",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:860bd3d4-4f93-3239-b05c-b5514ea8b24a",
  "kind": "lemma",
  "lexical_name": "egauge_ball_le_of_one_lt_norm",
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
  "slug": "egauge-ball-le-of-one-lt-norm--360fedf03098e837eb1136c4",
  "source": {
    "blob": "854354f1971924c8feb2cf05c4434ced8d899263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 336,
    "path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:360fedf03098e837eb1136c493318fc7ce1546691de477b5617c183fbbe77f57",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:860bd3d4-4f93-3239-b05c-b5514ea8b24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma egauge_ball_le_of_one_lt_norm (hc : 1 < ‖c‖) (h₀ : r ≠ 0 ∨ ‖x‖ ≠ 0) :
    egauge 𝕜 (ball 0 r) x ≤ ‖c‖ₑ * ‖x‖ₑ / r := by
  let : NontriviallyNormedField 𝕜 := ⟨c, hc⟩
  rcases eq_zero_or_pos r with rfl | hr
  · rw [ENNReal.coe_zero, ENNReal.div_zero (mul_ne_zero _ _)]
    · apply le_top
    · simpa using one_pos.trans hc
    · simpa [enorm, ← NNReal.coe_eq_zero] using h₀
  · rcases eq_or_ne ‖x‖ 0 with hx | hx
    · have hx' : ‖x‖ₑ = 0 := by simpa [enorm, ← coe_nnnorm, NNReal.coe_eq_zero] using hx
      simp only [hx', mul_zero, ENNReal.zero_div, nonpos_iff_eq_zero, egauge_eq_zero_iff]
      refine (frequently_iff_neBot.2 (inferInstance : NeBot (𝓝[≠] (0 : 𝕜)))).mono fun c hc ↦ ?_
      simp [mem_smul_set_iff_inv_smul_mem₀ hc, norm_smul, hx, hr]
    · rcases rescale_to_shell_semi_normed hc hr hx with ⟨a, ha₀, har, -, hainv⟩
      calc
        egauge 𝕜 (ball 0 r) x ≤ ↑(‖a‖₊⁻¹) :=
          egauge_le_of_smul_mem_of_ne (mem_ball_zero_iff.2 har) ha₀
        _ ≤ ↑(‖c‖₊ * ‖x‖₊ / r) := by rwa [ENNReal.coe_le_coe, div_eq_inv_mul, ← mul_assoc]
        _ ≤ ‖c‖ₑ * ‖x‖ₑ / r := ENNReal.coe_div_le.trans <| by simp [ENNReal.coe_mul, enorm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `854354f1971924c8feb2cf05c4434ced8d899263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
