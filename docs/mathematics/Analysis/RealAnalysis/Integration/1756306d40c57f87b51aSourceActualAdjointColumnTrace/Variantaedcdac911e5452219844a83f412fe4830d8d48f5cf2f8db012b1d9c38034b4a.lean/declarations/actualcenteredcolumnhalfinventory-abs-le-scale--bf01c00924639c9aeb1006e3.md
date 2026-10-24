# actualCenteredColumnHalfInventory_abs_le_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5710f3aa-6f16-9519-00a8-a30e24cacca6",
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
  "slug": "actualcenteredcolumnhalfinventory-abs-le-scale--bf01c00924639c9aeb1006e3",
  "source": {
    "blob": "f836426536b7865ecc7680fe29f2d9498dcad8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf01c00924639c9aeb1006e337b5f2256e033e2bb4845c42c9af5f2c1e5f5414",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5710f3aa-6f16-9519-00a8-a30e24cacca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–257.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f836426536b7865ecc7680fe29f2d9498dcad8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
