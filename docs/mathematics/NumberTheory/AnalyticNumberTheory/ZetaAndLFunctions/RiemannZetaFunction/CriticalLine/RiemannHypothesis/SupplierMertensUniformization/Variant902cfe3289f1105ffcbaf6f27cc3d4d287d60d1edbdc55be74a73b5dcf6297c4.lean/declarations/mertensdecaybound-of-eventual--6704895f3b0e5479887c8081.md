# mertensDecayBound_of_eventual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c13b87a-8b62-b1c7-b3cb-0c5d1b6d4e00",
  "kind": "theorem",
  "lexical_name": "mertensDecayBound_of_eventual",
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
  "slug": "mertensdecaybound-of-eventual--6704895f3b0e5479887c8081",
  "source": {
    "blob": "8b642d155d99341a3437b46155e9f087451962ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierMertensUniformization/Variant902cfe3289f1105ffcbaf6f27cc3d4d287d60d1edbdc55be74a73b5dcf6297c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6704895f3b0e5479887c808169340f081b7e5ef2e929456cc35d6d79e181b243",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierMertensUniformization/Variant902cfe3289f1105ffcbaf6f27cc3d4d287d60d1edbdc55be74a73b5dcf6297c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c13b87a-8b62-b1c7-b3cb-0c5d1b6d4e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensDecayBound_of_eventual {C c U : ℝ} (hc : 0 < c)
    (hdecay : ∀ u : ℝ, max 0 U ≤ u →
      |arithmeticRecording (Real.exp u)| ≤ C * Real.exp (u - c * Real.sqrt u)) :
    MertensDecayBound (uniformizedCoefficient C c U) c := by
  intro u hu
  by_cases hlarge : max 0 U ≤ u
  · exact (hdecay u hlarge).trans
      (mul_le_mul_of_nonneg_right (le_max_left C (Real.exp (c * Real.sqrt (max 0 U))))
        (Real.exp_pos _).le)
  · have huU : u ≤ max 0 U := (lt_of_not_ge hlarge).le
    have hsqrt : c * Real.sqrt u ≤ c * Real.sqrt (max 0 U) :=
      mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt huU) hc.le
    calc
      |arithmeticRecording (Real.exp u)| ≤ Real.exp u := arithmeticRecording_exp_abs_le u
      _ = Real.exp (c * Real.sqrt u) * Real.exp (u - c * Real.sqrt u) := by
        rw [← Real.exp_add]
        congr 1
        ring
      _ ≤ Real.exp (c * Real.sqrt (max 0 U)) * Real.exp (u - c * Real.sqrt u) :=
        mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr hsqrt) (Real.exp_pos _).le
      _ ≤ uniformizedCoefficient C c U * Real.exp (u - c * Real.sqrt u) :=
        mul_le_mul_of_nonneg_right (le_max_right _ _) (Real.exp_pos _).le

/-- Uniformization produces a positive constant without any new arithmetic leaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierMertensUniformization/Variant902cfe3289f1105ffcbaf6f27cc3d4d287d60d1edbdc55be74a73b5dcf6297c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierMertensUniformization/Variant902cfe3289f1105ffcbaf6f27cc3d4d287d60d1edbdc55be74a73b5dcf6297c4.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b642d155d99341a3437b46155e9f087451962ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
