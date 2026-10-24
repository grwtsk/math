# candidate_boundaryInverse_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8fe0172a84258688eeed05c356be6357fb92bce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16009cc749e7fa8b2e4c5079b4e8beb7f801753d6ccb52238e8e7f2ff5ce7eeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee4ff9a7-6263-6dcf-6ba1-12467f72203d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03b7cfa7-cd63-b435-5009-5417942fdbc6",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_shift",
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
  "slug": "candidate-boundaryinverse-shift--527ba3ad1d4592e5a72a06c4",
  "source": {
    "blob": "f8fe0172a84258688eeed05c356be6357fb92bce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateTiltStatements/Variant16009cc749e7fa8b2e4c5079b4e8beb7f801753d6ccb52238e8e7f2ff5ce7eeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:527ba3ad1d4592e5a72a06c4b9eefa65a75a43865ce59086e374eeecfad8bb2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateTiltStatements/Variant16009cc749e7fa8b2e4c5079b4e8beb7f801753d6ccb52238e8e7f2ff5ce7eeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03b7cfa7-cd63-b435-5009-5417942fdbc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_shift (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    boundaryInverse (candidate X ε h) x = (Real.exp (x * σ) : ℂ) *
      boundaryInverse (candidate X (ε + σ) h) x := by
  obtain ⟨φ, hφ, htop, hbot, hb⟩ := candidate_boundary_majorant X hX ε h hε hh hh1
  simpa only [candidate_shift] using boundaryInverse_shift (candidate X ε h)
    (candidate_differentiableAt X ε h hε hh.le) φ hφ hb htop hbot σ hσ x

end
end CandidateTiltScratch

open CandidateTiltScratch
open MeasureTheory Filter Complex
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateTiltStatements/Variant16009cc749e7fa8b2e4c5079b4e8beb7f801753d6ccb52238e8e7f2ff5ce7eeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateTiltStatements/Variant16009cc749e7fa8b2e4c5079b4e8beb7f801753d6ccb52238e8e7f2ff5ce7eeb.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8fe0172a84258688eeed05c356be6357fb92bce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
