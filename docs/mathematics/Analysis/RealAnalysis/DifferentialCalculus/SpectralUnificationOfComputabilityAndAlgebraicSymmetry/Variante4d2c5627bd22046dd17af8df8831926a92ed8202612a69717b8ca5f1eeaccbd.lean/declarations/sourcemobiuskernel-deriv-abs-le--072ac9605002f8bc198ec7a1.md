# sourceMobiusKernel_deriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b52cebfa0909516e59465946896d99adb17ea45b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b4b1628-cea0-891b-2ff7-ae10649cb5d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1121bdcc-b469-6e8a-f765-16769a899ee0",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_deriv_abs_le",
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
  "slug": "sourcemobiuskernel-deriv-abs-le--072ac9605002f8bc198ec7a1",
  "source": {
    "blob": "b52cebfa0909516e59465946896d99adb17ea45b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:072ac9605002f8bc198ec7a1c929b9440d9099ee31f9493dd396c0c2650826df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1121bdcc-b469-6e8a-f765-16769a899ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_deriv_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |deriv (sourceMobiusKernel A) x| ≤
      (4 + 50 / A + 260 / (3 * A ^ 2)) / (x * Real.sqrt x) := by
  have hx0 : 0 < x := by linarith
  have hE := sourceMobiusKernel_euler_deriv_abs_le A x hA hx
  have hK := sourceMobiusKernel_abs_le A x hA hx
  have he : x * deriv (sourceMobiusKernel A) x =
      (x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2) -
        sourceMobiusKernel A x / 2 := by ring
  have h : |(x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2) -
      sourceMobiusKernel A x / 2| ≤
      |x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2| +
        |sourceMobiusKernel A x / 2| := by
    simpa only [sub_eq_add_neg, abs_neg] using
      abs_add_le (x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2)
        (-(sourceMobiusKernel A x / 2))
  rw [← he, abs_mul, abs_of_pos hx0, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h
  have hr : (40 / A + 260 / (3 * A ^ 2)) / Real.sqrt x +
      ((8 + 20 / A) / Real.sqrt x) / 2 =
      (4 + 50 / A + 260 / (3 * A ^ 2)) / Real.sqrt x := by ring
  have hb : x * |deriv (sourceMobiusKernel A) x| ≤
      (4 + 50 / A + 260 / (3 * A ^ 2)) / Real.sqrt x := by
    rw [← hr]
    linarith
  apply (le_div_iff₀ (mul_pos hx0 (Real.sqrt_pos.2 hx0))).2
  have hm := mul_le_mul_of_nonneg_right hb (Real.sqrt_nonneg x)
  simpa only [div_mul_cancel₀ _ (Real.sqrt_pos.2 hx0).ne', mul_assoc, mul_comm x] using hm

/-- The same derivative envelope with the conventional power `x^(3/2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52cebfa0909516e59465946896d99adb17ea45b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
