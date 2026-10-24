# remote_cost_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbbf1b1a-3227-c9c1-1176-a4319e90b9a6",
  "kind": "theorem",
  "lexical_name": "remote_cost_unbounded",
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
  "slug": "remote-cost-unbounded--c559b625945c73ce1eda544e",
  "source": {
    "blob": "c8356241ce4ba9e0f084588d443c8e2f56638923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionCost/Variant1ced6b774d035a7fcb76b720fd7fc4856643d634b161d565b34678f597034473.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c559b625945c73ce1eda544e63cb761bf47d3e26dc200a6d14fe6f4825f14f0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionCost/Variant1ced6b774d035a7fcb76b720fd7fc4856643d634b161d565b34678f597034473.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbbf1b1a-3227-c9c1-1176-a4319e90b9a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remote_cost_unbounded {m : ℝ} (hm : m ≠ 0) (B : ℝ) :
    ∃ q : ℕ, 1 ≤ q ∧ (m * q) / (q : ℝ) = m ∧ B < |m * q| := by
  have hm0 : 0 < |m| := abs_pos.mpr hm
  obtain ⟨q, hq⟩ := exists_nat_gt (max (B / |m|) 1)
  have hq1 : 1 ≤ q := by
    have h := (le_max_right (B / |m|) 1).trans_lt hq
    exact_mod_cast h.le
  refine ⟨q, hq1, remote_moment hq1 m, ?_⟩
  rw [remote_cost]
  have h := (le_max_left (B / |m|) 1).trans_lt hq
  have h' := (div_lt_iff₀ hm0).mp h
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.CorrectionCost
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionCost/Variant1ced6b774d035a7fcb76b720fd7fc4856643d634b161d565b34678f597034473.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionCost/Variant1ced6b774d035a7fcb76b720fd7fc4856643d634b161d565b34678f597034473.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8356241ce4ba9e0f084588d443c8e2f56638923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
