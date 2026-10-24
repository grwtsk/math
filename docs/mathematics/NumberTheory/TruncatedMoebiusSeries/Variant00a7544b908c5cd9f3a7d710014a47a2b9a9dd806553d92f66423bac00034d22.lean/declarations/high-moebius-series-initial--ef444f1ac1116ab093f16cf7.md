# high_moebius_series_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fb050af-9fe0-39ee-07a7-326e83e80628",
  "kind": "theorem",
  "lexical_name": "high_moebius_series_initial",
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
  "slug": "high-moebius-series-initial--ef444f1ac1116ab093f16cf7",
  "source": {
    "blob": "7ffcc08f55d70580d8cbb58abde2c8de1a93e2f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 39,
    "path": "GRWTSK/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef444f1ac1116ab093f16cf72a6c3f6321126695bdba20d45e9cd7a5e0a50546",
  "verification": {
    "reference": "docs/verification/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fb050af-9fe0-39ee-07a7-326e83e80628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem high_moebius_series_initial (U : ℕ) {s : ℂ} (hs : 1 < s.re) :
    highMoebiusSeries U s =
      (LSeries (μ : ArithmeticFunction ℂ) s - closedMoebiusSeries U s) ^ 2 *
        riemannZeta s := by
  let g : ArithmeticFunction ℂ := closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U
  let h : ArithmeticFunction ℂ := (μ : ArithmeticFunction ℂ) - g
  have hg : LSeriesSummable (g : ℕ → ℂ) s := closed_moebius_summable U hs
  have hm : LSeriesSummable (μ : ArithmeticFunction ℂ) s :=
    ArithmeticFunction.LSeriesSummable_moebius_iff.mpr hs
  have hz : LSeriesSummable (ζ : ArithmeticFunction ℂ) s :=
    ArithmeticFunction.LSeriesSummable_zeta_iff.mpr hs
  have hzeta : LSeries (ζ : ArithmeticFunction ℂ) s = riemannZeta s := by
    change LSeries (fun n => ((ζ : ArithmeticFunction ℕ) n : ℂ)) s = riemannZeta s
    exact ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs
  have hh : LSeriesSummable (h : ℕ → ℂ) s := LSeriesSummable.sub hm hg
  have hsub : LSeries (h : ℕ → ℂ) s =
      LSeries (μ : ArithmeticFunction ℂ) s - LSeries (g : ℕ → ℂ) s :=
    LSeries_sub hm hg
  calc
    highMoebiusSeries U s =
        LSeries (fun n => (h * h * (ζ : ArithmeticFunction ℂ)) n) s := by
      exact congrArg (fun f : ℕ → ℂ => LSeries f s) (high_moebius_complex_function U)
    _ = LSeries (fun n => (h * h) n) s * LSeries (ζ : ArithmeticFunction ℂ) s :=
      ArithmeticFunction.LSeries_mul' (f := h * h) (g := (ζ : ArithmeticFunction ℂ))
        (ArithmeticFunction.LSeriesSummable_mul hh hh) hz
    _ = (LSeries (h : ℕ → ℂ) s * LSeries (h : ℕ → ℂ) s) * riemannZeta s := by
      calc
        _ = (LSeries (h : ℕ → ℂ) s * LSeries (h : ℕ → ℂ) s) *
            LSeries (ζ : ArithmeticFunction ℂ) s :=
          congrArg (fun a : ℂ => a * LSeries (ζ : ArithmeticFunction ℂ) s)
            (ArithmeticFunction.LSeries_mul' (f := h) (g := h) hh hh)
        _ = _ := congrArg (fun a : ℂ =>
          (LSeries (h : ℕ → ℂ) s * LSeries (h : ℕ → ℂ) s) * a) hzeta
    _ = (LSeries (μ : ArithmeticFunction ℂ) s - closedMoebiusSeries U s) ^ 2 *
        riemannZeta s := by
      rw [hsub]
      simp only [closedMoebiusSeries, g, pow_two]

/-- The actual inverse gives the exact meromorphic expression on Re(s)>1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ffcc08f55d70580d8cbb58abde2c8de1a93e2f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
