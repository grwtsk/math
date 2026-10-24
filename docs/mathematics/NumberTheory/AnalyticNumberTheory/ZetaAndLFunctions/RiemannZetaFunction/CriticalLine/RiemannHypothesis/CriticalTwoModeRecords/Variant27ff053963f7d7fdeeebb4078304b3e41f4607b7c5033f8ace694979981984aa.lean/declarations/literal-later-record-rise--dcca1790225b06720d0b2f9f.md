# literal_later_record_rise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f8b3700-7f9f-120c-42ec-20f0d38ddd6a",
  "kind": "theorem",
  "lexical_name": "literal_later_record_rise",
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
  "slug": "literal-later-record-rise--dcca1790225b06720d0b2f9f",
  "source": {
    "blob": "72f73ae9fb8d0ae7bd9937a42c165cf608576dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant27ff053963f7d7fdeeebb4078304b3e41f4607b7c5033f8ace694979981984aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcca1790225b06720d0b2f9f6cc73d6021f3439593ac505af36dd4fbaa54b5b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant27ff053963f7d7fdeeebb4078304b3e41f4607b7c5033f8ace694979981984aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f8b3700-7f9f-120c-42ec-20f0d38ddd6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_later_record_rise {α t₀ T : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hT : t₀ ≤ T) :
    ∃ U : ℝ, T < U ∧
      (2-prefixMaximum α t₀ T)/2 ≤ prefixMaximum α t₀ U-prefixMaximum α t₀ T := by
  have hδ : 0 < 2-prefixMaximum α t₀ T := by
    linarith [literal_prefix_maximum_lt_two hα ht₀ hT]
  obtain ⟨U,hU,_hpos,hnear⟩ := literal_two_mode_near_two_after_every_threshold hα
    ((2-prefixMaximum α t₀ T)/2) T (by linarith)
  have hval := literal_prefix_value_le α (hT.trans hU.le) ⟨hT.trans hU.le,le_rfl⟩
  exact ⟨U,hU,by linarith⟩

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeRecords
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant27ff053963f7d7fdeeebb4078304b3e41f4607b7c5033f8ace694979981984aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant27ff053963f7d7fdeeebb4078304b3e41f4607b7c5033f8ace694979981984aa.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72f73ae9fb8d0ae7bd9937a42c165cf608576dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
