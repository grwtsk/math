# actual_signed_cumulative_negative_in_two_channel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd85f4da-7e74-5d62-5780-a91f96f1bef2",
  "kind": "theorem",
  "lexical_name": "actual_signed_cumulative_negative_in_two_channel",
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
  "slug": "actual-signed-cumulative-negative-in-two-channel--a65618c9f3cecb73eba29563",
  "source": {
    "blob": "faf6a8dbcdb7378f106952b56518d7c99cb41c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a65618c9f3cecb73eba2956325e17ca0be31d10dfa6454814a810a151dbcbd98",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd85f4da-7e74-5d62-5780-a91f96f1bef2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_cumulative_negative_in_two_channel :
    ∃ A : ℝ, 1 ≤ A ∧ 2*42 < Real.exp (2*A) ∧
      upperProductSummatory ⌊Real.exp A⌋₊ 42 < 0 := by
  refine ⟨Real.log 10, ?_, ?_, ?_⟩
  · apply (Real.le_log_iff_exp_le (by norm_num : (0:ℝ)<10)).mpr
    exact Real.exp_one_lt_three.le.trans (by norm_num)
  · rw [two_mul (Real.log 10), Real.exp_add, Real.exp_log (by norm_num)]
    norm_num
  · rw [Real.exp_log (by norm_num)]
    norm_num only [Nat.floor_natCast, upperProductSummatory_10_42]

end
end UpperProductSummatorySignsScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faf6a8dbcdb7378f106952b56518d7c99cb41c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
