# literal_exponential_rate_gt_sixteen_ninths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf3050d8-698a-2cce-340a-fed5940f0d45",
  "kind": "theorem",
  "lexical_name": "literal_exponential_rate_gt_sixteen_ninths",
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
  "slug": "literal-exponential-rate-gt-sixteen-ninths--eddfef08e6fc3895215950b6",
  "source": {
    "blob": "789d93e57561ce9b74b482fb5b22cecc67520d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eddfef08e6fc3895215950b69f9a2afa4e0931d554f37345840042a6e62635d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf3050d8-698a-2cce-340a-fed5940f0d45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_exponential_rate_gt_sixteen_ninths {A : ℝ} (hA : 100 ≤ A) :
    (16 / 9 : ℝ) < Real.exp (A / 2) / A ^ 9 := by
  have hpos : 0 < A := by linarith
  have he := Real.pow_div_factorial_le_exp (x := A / 2) (by linarith) 40
  have hp31 : (100 : ℝ) ^ 31 ≤ A ^ 31 := by gcongr
  have hfac : (0 : ℝ) < Nat.factorial 40 := by norm_num
  have hlow : (16 / 9 : ℝ) < A ^ 31 / (2 ^ 40 * (Nat.factorial 40 : ℝ)) := by
    calc
      _ < (100 : ℝ) ^ 31 / (2 ^ 40 * (Nat.factorial 40 : ℝ)) := by norm_num
      _ ≤ _ := by gcongr
  have hpaid : A ^ 31 / (2 ^ 40 * (Nat.factorial 40 : ℝ)) ≤ Real.exp (A / 2) / A ^ 9 := by
    calc
      _ = ((A / 2) ^ 40 / (Nat.factorial 40 : ℝ)) / A ^ 9 := by
        field_simp [hpos.ne']
      _ ≤ _ := by gcongr
  exact hlow.trans_le hpaid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789d93e57561ce9b74b482fb5b22cecc67520d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
