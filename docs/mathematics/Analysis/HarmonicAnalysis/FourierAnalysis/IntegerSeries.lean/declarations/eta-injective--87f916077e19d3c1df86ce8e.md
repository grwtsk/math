# eta_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee3600a8-580f-beeb-b07a-572a979fd4a1",
  "kind": "theorem",
  "lexical_name": "eta_injective",
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
  "slug": "eta-injective--87f916077e19d3c1df86ce8e",
  "source": {
    "blob": "ef3af0946dd6f2f704059027b4587ab1b961cb66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 31,
    "path": "GRWTSK/Analysis/Fourier/IntegerSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87f916077e19d3c1df86ce8ea3e7ace394917ea095055a5167920d7a9b18e009",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee3600a8-580f-beeb-b07a-572a979fd4a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eta_injective : Function.Injective eta := by
  intro a b h
  have ha : 0 < 1 + |(a : ℝ)| := by positivity
  have hb : 0 < 1 + |(b : ℝ)| := by positivity
  have hcross := (div_eq_div_iff ha.ne' hb.ne').mp h
  have heq : (a : ℝ) = b := by
    by_cases hA : 0 ≤ (a : ℝ) <;> by_cases hB : 0 ≤ (b : ℝ)
    · simp only [abs_of_nonneg hA, abs_of_nonneg hB] at hcross
      nlinarith
    · simp only [abs_of_nonneg hA, abs_of_neg (lt_of_not_ge hB)] at hcross
      nlinarith
    · simp only [abs_of_neg (lt_of_not_ge hA), abs_of_nonneg hB] at hcross
      nlinarith
    · simp only [abs_of_neg (lt_of_not_ge hA), abs_of_neg (lt_of_not_ge hB)] at hcross
      nlinarith
  exact_mod_cast heq

/-- Index zero represents the first harmonic, avoiding a constant coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/IntegerSeries.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3af0946dd6f2f704059027b4587ab1b961cb66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
