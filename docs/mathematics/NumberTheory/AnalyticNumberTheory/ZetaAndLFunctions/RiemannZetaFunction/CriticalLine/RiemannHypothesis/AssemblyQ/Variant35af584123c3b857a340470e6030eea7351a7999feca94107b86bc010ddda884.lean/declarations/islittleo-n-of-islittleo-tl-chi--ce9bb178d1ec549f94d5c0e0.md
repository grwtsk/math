# isLittleO_N_of_isLittleO_Tl_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d577b445-3355-0f53-2916-948077b58d4f",
  "kind": "lemma",
  "lexical_name": "isLittleO_N_of_isLittleO_Tl_chi",
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
  "slug": "islittleo-n-of-islittleo-tl-chi--ce9bb178d1ec549f94d5c0e0",
  "source": {
    "blob": "bcfec3a0afea0ac4bd8125c92e671c9de18d290e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 180,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variant35af584123c3b857a340470e6030eea7351a7999feca94107b86bc010ddda884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce9bb178d1ec549f94d5c0e0ec05f31ac7bd6d20a1e7089d949bd32e694e674e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variant35af584123c3b857a340470e6030eea7351a7999feca94107b86bc010ddda884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d577b445-3355-0f53-2916-948077b58d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLittleO_N_of_isLittleO_Tl_chi (hq : 1 ≤ q) (hR : RiemannVonMangoldtChi q Z) {f : ℝ → ℝ}
    (hf : f =o[atTop] fun T => T * l T) : f =o[atTop] fun T => (Z.N T (2 * T) : ℝ) := by
  refine hf.trans_isBigO (IsBigO.of_bound (4 * π) ?_)
  filter_upwards [eventually_N_ge_chi q Z hq hR, eventually_ge_atTop 0, eventually_l_pos]
    with T h hT hl
  rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg (by positivity),
    abs_of_nonneg (by positivity)]
  have := mul_le_mul_of_nonneg_left h (by positivity : (0:ℝ) ≤ 4 * π)
  calc T * l T = 4 * π * (T * l T / (4 * π)) := by field_simp
    _ ≤ 4 * π * (Z.N T (2 * T) : ℝ) := this

/-- `cλ_χ = 1/λ_{1,χ} + λ_{1,χ}/3` eventually in `[0, 2/λ + 1/3]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variant35af584123c3b857a340470e6030eea7351a7999feca94107b86bc010ddda884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variant35af584123c3b857a340470e6030eea7351a7999feca94107b86bc010ddda884.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfec3a0afea0ac4bd8125c92e671c9de18d290e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
