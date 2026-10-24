# literal_record_levels_tend_to_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30110eaf-a535-bfeb-6a89-4c7f023cdc61",
  "kind": "theorem",
  "lexical_name": "literal_record_levels_tend_to_two",
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
  "slug": "literal-record-levels-tend-to-two--c4667a47214eaf34e0127d4d",
  "source": {
    "blob": "652b1230a50bd555e6fc6fbda28cdaf4b04287d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 136,
    "path": "GRWTSK/Analysis/CriticalTwoModeRecordSequence/Variantee6b50e12e99442f484c69940eefc117d7321b289110f24bfd3b5e7cb41bf75f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4667a47214eaf34e0127d4d097a3b3a66f668f5d61989e48b2f2758cc6ce3d1",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeRecordSequence/Variantee6b50e12e99442f484c69940eefc117d7321b289110f24bfd3b5e7cb41bf75f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30110eaf-a535-bfeb-6a89-4c7f023cdc61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_record_levels_tend_to_two {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) : Tendsto (recordLevel hα ht₀) atTop (𝓝 2) := by
  have hpow : Tendsto (fun j : ℕ ↦ (1/2 : ℝ)^j) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one (by norm_num) (by norm_num)
  have hupper : Tendsto (fun j : ℕ ↦ (2-recordLevel hα ht₀ 0)*(1/2 : ℝ)^j) atTop (𝓝 0) := by
    simpa only [mul_zero] using tendsto_const_nhds.mul hpow
  have hδ : Tendsto (fun j ↦ 2-recordLevel hα ht₀ j) atTop (𝓝 0) :=
    squeeze_zero (fun j ↦ by linarith [literal_record_level_lt_two hα ht₀ j])
      (literal_record_deficit_geometric_upper hα ht₀) hupper
  have h : Tendsto (fun j ↦ (2 : ℝ)-(2-recordLevel hα ht₀ j)) atTop (𝓝 (2-0 : ℝ)) :=
    tendsto_const_nhds.sub hδ
  convert h using 1
  · ext j
    ring
  · norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeRecordSequence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeRecordSequence/Variantee6b50e12e99442f484c69940eefc117d7321b289110f24bfd3b5e7cb41bf75f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeRecordSequence/Variantee6b50e12e99442f484c69940eefc117d7321b289110f24bfd3b5e7cb41bf75f.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652b1230a50bd555e6fc6fbda28cdaf4b04287d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
