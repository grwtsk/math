# logResidual_angular_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "293dcc9f292f39090c0fd720bb047848b39149f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39248604-5b6c-ef5f-9ab3-ddbd3beee028",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88264f35-45fa-7b25-55ea-3ecde8bbd65e",
  "kind": "theorem",
  "lexical_name": "logResidual_angular_integral",
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
  "slug": "logresidual-angular-integral--d8e3069217e00c02cf6f4f88",
  "source": {
    "blob": "293dcc9f292f39090c0fd720bb047848b39149f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 85,
    "path": "GRWTSK/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8e3069217e00c02cf6f4f88904be766e674dbd84025cd02da4538e4fb367000",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88264f35-45fa-7b25-55ea-3ecde8bbd65e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_angular_integral (X : ℕ) (hX : 1 ≤ X) (ε t : ℝ) :
    (∫ u : ℝ, Complex.exp (-(t : ℂ) * Complex.I * (u : ℂ)) * logResidual X ε u) =
      (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)) /
          (1 / 2 + (t : ℂ) * Complex.I) := by
  have hm := arithmeticResidual_mellin_integral X ε (1 / 2 + (t : ℂ) * Complex.I)
    hX (by norm_num) (by norm_num)
  rw [exp_integral] at hm
  simp_rw [exp_integrand] at hm
  have he (u : ℝ) :
      Complex.exp (-(t : ℂ) * Complex.I * (u : ℂ)) * logResidual X ε u =
        Complex.exp (-(1 / 2 + (t : ℂ) * Complex.I) * (u : ℂ)) *
          arithmeticResidual X ε (Real.exp u) := by
    dsimp only [logResidual]
    rw [Complex.ofReal_exp, ← mul_assoc, ← Complex.exp_add]
    congr 2
    push_cast
    ring
  simp_rw [he]
  have hs : (1 / 2 + (t : ℂ) * Complex.I) - 1 / 2 + (ε : ℂ) =
      (ε : ℂ) + (t : ℂ) * Complex.I := by ring
  simpa only [hs] using hm

/-- Mathlib's genuine Fourier transform has the exact source formula with its 2π scaling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293dcc9f292f39090c0fd720bb047848b39149f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
