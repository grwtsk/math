# actualCenteredColumnHalfInventory_abs_le_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffb95298-0d72-8570-9dac-7c17d1408939",
  "kind": "theorem",
  "lexical_name": "actualCenteredColumnHalfInventory_abs_le_scale",
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
  "slug": "actualcenteredcolumnhalfinventory-abs-le-scale--ee2a61953a8b2cefb6350722",
  "source": {
    "blob": "2b6865df4b55ffef7276d17cfff39234fe2e6876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee2a61953a8b2cefb63507221ef488cd4bc87d69a552b02de9d45b4c96925b0a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb95298-0d72-8570-9dac-7c17d1408939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredColumnHalfInventory_abs_le_scale {A : ℝ} (hA : 1 ≤ A) :
    |actualCenteredColumnHalfInventory A| ≤ A := by
  have hU : 0 ≤ (vaughanCutoff A : ℝ) := Nat.cast_nonneg _
  have hUa : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by norm_num
  have hsA : Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
    calc
      _ ≤ Real.sqrt (A ^ 2) := Real.sqrt_le_sqrt (Nat.floor_le (sq_nonneg A))
      _ = A := Real.sqrt_sq (by linarith)
  have hs : Real.sqrt (vaughanCutoff A : ℝ) ≤
      Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := Real.sqrt_le_sqrt hUa
  have hm : (vaughanCutoff A : ℝ) ≤
      A * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    calc
      _ = Real.sqrt (vaughanCutoff A : ℝ) * Real.sqrt (vaughanCutoff A : ℝ) :=
        (Real.mul_self_sqrt hU).symm
      _ ≤ _ := mul_le_mul hsA hs (Real.sqrt_nonneg _) (by linarith)
  apply (actualCenteredColumnHalfInventory_abs_le_cutoff hA).trans
  exact (div_le_iff₀ (by positivity :
    0 < Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ))).mpr (by linarith)

end
end FormalResearch.RiemannHypothesis.SourceActualAdjointColumnTrace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6865df4b55ffef7276d17cfff39234fe2e6876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
