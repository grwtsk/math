# primePowerTerm_eq_source_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d411f541-5037-bf54-4c63-2295eb44266f",
  "kind": "theorem",
  "lexical_name": "primePowerTerm_eq_source_coefficient",
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
  "slug": "primepowerterm-eq-source-coefficient--a6544f882a4e25c4ccbba660",
  "source": {
    "blob": "4a1dc0eea28aba23e01af59d227a0209de44fa88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6544f882a4e25c4ccbba6606affd554ed97e293bb4a6001bff827c12dfb681f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d411f541-5037-bf54-4c63-2295eb44266f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePowerTerm_eq_source_coefficient {n : ℕ} (hn : 0 < n) (A : ℝ) :
    primePowerTerm n A = ArithmeticFunction.vonMangoldt n *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  unfold primePowerTerm exponentialTest
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hn0, div_eq_mul_inv]
  ring

/-- The full original source equals its own literal closed floor sum of actual summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1dc0eea28aba23e01af59d227a0209de44fa88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
