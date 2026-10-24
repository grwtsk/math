# tendsto_W_nhds_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9d775ea95ecb5696c447a7663b0f2c09dad5138",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe6f8315-dde2-7161-6298-f144b48d864d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8e28b8b-9fdc-75e6-a7dd-9ce7ce4a374e",
  "kind": "theorem",
  "lexical_name": "tendsto_W_nhds_pi_div_two",
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
  "slug": "tendsto-w-nhds-pi-div-two--b286bd6e48d69aef9e0338b3",
  "source": {
    "blob": "c9d775ea95ecb5696c447a7663b0f2c09dad5138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b286bd6e48d69aef9e0338b3f72d2e38269948a936774fc003b494cbd2bfbf43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8e28b8b-9fdc-75e6-a7dd-9ce7ce4a374e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_W_nhds_pi_div_two : Tendsto W atTop (𝓝 <| π / 2) := by
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le ?_ tendsto_const_nhds le_W W_le
  have : 𝓝 (π / 2) = 𝓝 ((1 - 0) * (π / 2)) := by rw [sub_zero, one_mul]
  rw [this]
  refine Tendsto.mul ?_ tendsto_const_nhds
  have h : ∀ n : ℕ, ((2 : ℝ) * n + 1) / (2 * n + 2) = 1 - 1 / (2 * n + 2) := by
    intro n
    rw [sub_div' (ne_of_gt (add_pos_of_nonneg_of_pos (mul_nonneg
      (two_pos : 0 < (2 : ℝ)).le (Nat.cast_nonneg _)) two_pos)), one_mul]
    congr 1; ring
  simp_rw [h]
  refine (tendsto_const_nhds.div_atTop ?_).const_sub _
  refine Tendsto.atTop_add ?_ tendsto_const_nhds
  exact tendsto_natCast_atTop_atTop.const_mul_atTop two_pos

end Wallis

end Real

/-- Wallis' product formula for `π / 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d775ea95ecb5696c447a7663b0f2c09dad5138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
