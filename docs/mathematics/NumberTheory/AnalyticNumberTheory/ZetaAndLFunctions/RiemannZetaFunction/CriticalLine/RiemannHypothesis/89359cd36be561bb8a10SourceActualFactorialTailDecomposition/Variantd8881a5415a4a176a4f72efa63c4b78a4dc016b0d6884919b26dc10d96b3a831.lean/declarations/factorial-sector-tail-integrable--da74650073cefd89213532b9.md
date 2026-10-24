# factorial_sector_tail_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cf7c109-856d-3e2b-6982-232b0fe31437",
  "kind": "theorem",
  "lexical_name": "factorial_sector_tail_integrable",
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
  "slug": "factorial-sector-tail-integrable--da74650073cefd89213532b9",
  "source": {
    "blob": "15d249152bbc27f6be4f722d92bf0cb80836faa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da74650073cefd89213532b9a5ff07299193e4afd91acf4abe9a0e53c79494f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cf7c109-856d-3e2b-6982-232b0fe31437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_sector_tail_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x =>
      (Chebyshev.psi x - (⌊x⌋₊ : ℝ) -
        x * (Real.log x - 1) * shortReciprocalMoebius (vaughanCutoff A) +
          x * shortLogReciprocalMoebius (vaughanCutoff A) -
            shortFactorialDefect (vaughanCutoff A) x) * deriv (plainProfile A 1) x)
      (Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A))) := by
  have hU := (actual_cutoff_order A hA).1
  have hi := (complementary_derivative_integrable_Icc hA).mono_set
    (show Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)) ⊆ Icc (1 : ℝ) (Real.exp (2 * A)) by
      intro x hx
      exact ⟨by linarith [hx.1], hx.2⟩)
  apply hi.congr_fun
  · intro x hx
    dsimp only
    rw [complementaryCumulative_eq_factorial_sectors (vaughanCutoff A)
      (by linarith [hx.1])]
    ring
  · exact measurableSet_Ioc

/-- The original tail preserves this entire signed factorial decomposition inside one integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15d249152bbc27f6be4f722d92bf0cb80836faa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
