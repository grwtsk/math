# exact_positive_square_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86baa04c-dbb4-af0c-2789-d0a080d48cb3",
  "kind": "theorem",
  "lexical_name": "exact_positive_square_payment",
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
  "slug": "exact-positive-square-payment--155eb3dedbf7bd874f3c7d0e",
  "source": {
    "blob": "f8c26c45989bda12d1adcad08f568f660fb4b04b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalModeIntervals/Variant775c8869983ce6fd39c1cfa0d34142f3972d76f536aaec9b9d498236d8fe6941.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:155eb3dedbf7bd874f3c7d0eb29767bb4c6eccab39f6038c04b0e3c2d976a9e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalModeIntervals/Variant775c8869983ce6fd39c1cfa0d34142f3972d76f536aaec9b9d498236d8fe6941.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86baa04c-dbb4-af0c-2789-d0a080d48cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_positive_square_payment {gamma : ℝ} (hg : 0 < gamma) (k : ℕ) :
    positiveSquarePayment gamma k = Real.exp (Real.pi * k / gamma) /
      (2 * (1 - Real.exp (-Real.pi / (4 * gamma)))) := by
  obtain ⟨ha, hb⟩ := exact_interval_endpoints hg k
  rw [positiveSquarePayment, ha, hb, sub_zero, max_eq_left (by norm_num : (0 : ℝ) ≤ 1),
    one_pow, native_width_exact hg]
  rw [show -Real.pi * k / gamma = -(Real.pi * k / gamma) by ring, Real.exp_neg]
  field_simp [(Real.exp_pos (Real.pi * k / gamma)).ne', (denominator_positive hg).ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalModeIntervals/Variant775c8869983ce6fd39c1cfa0d34142f3972d76f536aaec9b9d498236d8fe6941.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalModeIntervals/Variant775c8869983ce6fd39c1cfa0d34142f3972d76f536aaec9b9d498236d8fe6941.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8c26c45989bda12d1adcad08f568f660fb4b04b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
