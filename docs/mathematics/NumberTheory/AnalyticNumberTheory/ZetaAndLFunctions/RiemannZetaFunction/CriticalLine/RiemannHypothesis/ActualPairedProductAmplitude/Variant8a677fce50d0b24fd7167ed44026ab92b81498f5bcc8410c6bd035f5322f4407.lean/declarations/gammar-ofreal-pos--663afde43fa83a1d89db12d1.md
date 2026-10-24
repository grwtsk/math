# gammaR_ofReal_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23b4c15f7ad9eac95ad609c063947053c3a5f491",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11940216-9425-7d7a-180c-d51bddd68ea2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df249783-9141-ef6b-e452-49834614f4c4",
  "kind": "theorem",
  "lexical_name": "gammaR_ofReal_pos",
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
  "slug": "gammar-ofreal-pos--663afde43fa83a1d89db12d1",
  "source": {
    "blob": "23b4c15f7ad9eac95ad609c063947053c3a5f491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:663afde43fa83a1d89db12d1bfedacabc4212a6b44ed4677e9b577d1932c56e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df249783-9141-ef6b-e452-49834614f4c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaR_ofReal_pos {x : ℝ} (hx : 0 < x) :
    ∃ g : ℝ, 0 < g ∧ Complex.Gammaℝ (x : ℂ) = (g : ℂ) := by
  let g : ℝ := Real.pi ^ (-x / 2) * Real.Gamma (x / 2)
  have hpi : 0 < Real.pi ^ (-x / 2) :=
    Real.rpow_pos_of_pos Real.pi_pos _
  have hgamma : 0 < Real.Gamma (x / 2) :=
    Real.Gamma_pos_of_pos (by linarith)
  refine ⟨g, mul_pos hpi hgamma, ?_⟩
  unfold g
  rw [Complex.Gammaℝ_def]
  have he : (-(x : ℂ) / 2) = ((-x / 2 : ℝ) : ℂ) := by
    push_cast
    ring
  have hx2 : ((x : ℂ) / 2) = ((x / 2 : ℝ) : ℂ) := by
    push_cast
    ring
  rw [he, ← Complex.ofReal_cpow Real.pi_pos.le (-x / 2), hx2,
    Complex.Gamma_ofReal]
  push_cast

/-- Zeta at one half is literally the real cast of a negative real number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23b4c15f7ad9eac95ad609c063947053c3a5f491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
