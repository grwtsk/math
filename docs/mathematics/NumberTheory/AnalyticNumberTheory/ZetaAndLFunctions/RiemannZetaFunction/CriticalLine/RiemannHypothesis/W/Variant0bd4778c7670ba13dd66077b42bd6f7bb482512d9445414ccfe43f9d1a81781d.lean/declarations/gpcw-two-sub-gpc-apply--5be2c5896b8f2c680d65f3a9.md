# GpCW_two_sub_GpC_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88b76c16-a10d-a355-0c7a-ec3d29ef861f",
  "kind": "lemma",
  "lexical_name": "GpCW_two_sub_GpC_apply",
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
  "slug": "gpcw-two-sub-gpc-apply--5be2c5896b8f2c680d65f3a9",
  "source": {
    "blob": "66a3151faad91392cf595133a0dffa7df549aa1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5be2c5896b8f2c680d65f3a913f2cc563aea42f692e5d9891130e4c465d69e2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88b76c16-a10d-a355-0c7a-ec3d29ef861f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GpCW_two_sub_GpC_apply (P : Params) (T : ℝ) {cϱ : ℝ} (hΓ : GammaFacts)
    (hF : LocalHypsCore cϱ (P.toSetting T) (P.localFun T)) (hX : 0 < P.X T) (hT : 0 < T)
    (hh : 0 ≤ P.hgrid T) (c : ℕ → ℂ) (k l : Fin (P.d T)) :
    (P.GpCW T 2 c - P.GpC T c) k l
      = ((GentryNu (Zeta23.PiX (P.toSetting T).X) (P.toSetting T) (P.localFun T) k l : ℝ) : ℂ) := by
  have hk := tau_pos P T (k := k) hT hh
  have hl := tau_pos P T (k := l) hT hh
  rw [XiPrime.GpC_eq_GpCW, Matrix.sub_apply]
  simp only [Params.GpCW]
  rw [← Complex.ofReal_sub, Params.GentryCW_eq_GentryW, Params.GentryCW_eq_GentryW,
    Transfer.gentryW_weight_sub hΓ hF hX 2 1 c hk hl]
  norm_num

/-! ### The Π-part entries are uniformly small -/

section PiPart
variable {cϱ : ℝ} {p : Setting} {Fn : LocalFun}

/-- ∫ φ̂(τ−t)² |Π_X(τ)| dτ ≤ 6√X·2πaL/t + 12√X(8+2(cϱ/w)²)/t²  for t ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a3151faad91392cf595133a0dffa7df549aa1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
