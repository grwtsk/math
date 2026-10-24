# norm_reciprocal_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c678a8d5-45ec-b818-63fd-9cb65b2f0686",
  "kind": "theorem",
  "lexical_name": "norm_reciprocal_sum_le",
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
  "slug": "norm-reciprocal-sum-le--a9000f71d1bff6fa633b0f5d",
  "source": {
    "blob": "6f905518ff4bc0c75f0bf6c6c853ce5a01c977c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/Analysis/Complex/DigammaShift.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9000f71d1bff6fa633b0f5d07eff4cada74d9136df67740c8fa3930ed6b0ad6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/DigammaShift.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c678a8d5-45ec-b818-63fd-9cb65b2f0686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_reciprocal_sum_le (z : ℂ) (hz : 2 ≤ z.re) (k : ℕ) :
    ‖∑ j ∈ Finset.range k, (z + (j : ℂ))⁻¹‖ ≤ (k : ℝ) / 2 := by
  calc
    _ ≤ ∑ j ∈ Finset.range k, ‖(z + (j : ℂ))⁻¹‖ := norm_sum_le _ _
    _ ≤ ∑ _j ∈ Finset.range k, (1 / 2 : ℝ) :=
      Finset.sum_le_sum (fun j _ => norm_shift_inv_le_half z hz j)
    _ = _ := by simp [div_eq_mul_inv]

end
end GRWTSK.Analysis.Complex.DigammaShift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/DigammaShift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/DigammaShift.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f905518ff4bc0c75f0bf6c6c853ce5a01c977c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
