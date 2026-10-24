# localCountChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "603d34e2374063f482905e72c84e5666f23275ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dede95d-dffc-5a9b-2cf0-03c21cc99919",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bbdc460-cb6a-da07-bc45-6bafdd586ef6",
  "kind": "theorem",
  "lexical_name": "localCountChi",
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
  "slug": "localcountchi--c88ad586bec2aa6cb3539e53",
  "source": {
    "blob": "603d34e2374063f482905e72c84e5666f23275ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 237,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c88ad586bec2aa6cb3539e53801f63dcb7b4e72e00c45e74696c06b3fbdac94c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bbdc460-cb6a-da07-bc45-6bafdd586ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localCountChi (hq : 1 < q) (hprim : χ.IsPrimitive) :
    ∃ A₀ : ℝ, 1 ≤ A₀ ∧ ∀ t : ℝ, (NcountL χ t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3) := by
  obtain ⟨A₀, hA₀, h⟩ := localCountChi_uniform_proof
  have hq0 : (0:ℝ) < (q:ℝ) := by exact_mod_cast (lt_trans Nat.zero_lt_one hq)
  have hlogq : 0 ≤ Real.log q := Real.log_nonneg (by exact_mod_cast hq.le)
  refine ⟨A₀ * (1 + Real.log q), by nlinarith, fun t => ?_⟩
  have hlog3 : 1 ≤ Real.log (|t| + 3) := by
    rw [← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith [abs_nonneg t]
  have hsplit : Real.log (q * (|t| + 3)) = Real.log q + Real.log (|t| + 3) :=
    Real.log_mul hq0.ne' (by linarith [abs_nonneg t])
  calc (NcountL χ t (t + 1) : ℝ) ≤ A₀ * Real.log (q * (|t| + 3)) := h q χ hq hprim t
    _ = A₀ * (Real.log q + Real.log (|t| + 3)) := by rw [hsplit]
    _ ≤ A₀ * ((1 + Real.log q) * Real.log (|t| + 3)) := by
        apply mul_le_mul_of_nonneg_left _ (by linarith); nlinarith
    _ = A₀ * (1 + Real.log q) * Real.log (|t| + 3) := by ring

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `603d34e2374063f482905e72c84e5666f23275ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
