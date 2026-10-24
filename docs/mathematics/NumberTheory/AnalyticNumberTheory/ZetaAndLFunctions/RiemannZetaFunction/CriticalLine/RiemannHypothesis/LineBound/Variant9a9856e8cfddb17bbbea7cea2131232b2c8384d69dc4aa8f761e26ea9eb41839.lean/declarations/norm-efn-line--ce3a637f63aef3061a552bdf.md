# norm_Efn_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:690023b7-552a-9cda-ffbf-d4c0629d5f2d",
  "kind": "theorem",
  "lexical_name": "norm_Efn_line",
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
  "slug": "norm-efn-line--ce3a637f63aef3061a552bdf",
  "source": {
    "blob": "f70730c366692a2ec37e4bef2264eaea8c67e895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3a637f63aef3061a552bdfc21d08172d5a2739f6da1621e6f89f98736b6bc7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:690023b7-552a-9cda-ffbf-d4c0629d5f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Efn_line : ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ,
    ‖Efn (((5 / 4 : ℝ) : ℂ) + t * I)‖ ≤ C * Real.log (2 + |t|) := by
  obtain ⟨CL, hCL, hL⟩ := norm_Lfn_line
  obtain ⟨A₀, hA0, hA⟩ := norm_Afn_le
  refine ⟨CL + 2 * A₀ + 1, by positivity, fun t => ?_⟩
  have hlog := half_le_log_two_add_abs t
  have h : ‖logDeriv riemannZeta (((5 / 4 : ℝ) : ℂ) + t * I)‖ ≤ A₀ := by
    rw [logDeriv_zeta_eq_neg_Afn (one_lt_re_54 t), norm_neg]; exact hA t
  calc ‖Efn (((5 / 4 : ℝ) : ℂ) + t * I)‖
      ≤ ‖Lfn (((5 / 4 : ℝ) : ℂ) + t * I)‖ + ‖logDeriv riemannZeta (((5 / 4 : ℝ) : ℂ) + t * I)‖ :=
        norm_add_le _ _
    _ ≤ CL * Real.log (2 + |t|) + A₀ := add_le_add (hL t) h
    _ ≤ (CL + 2 * A₀ + 1) * Real.log (2 + |t|) := by nlinarith

/-- **‖ξ″/ξ′(5/4 + it)‖ ≤ C log(2 + |t|)** under (F2) (ξ′ ≠ 0 on the line). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70730c366692a2ec37e4bef2264eaea8c67e895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
