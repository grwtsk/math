# thetaPhi_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b14b6540-0c66-f7be-c5d2-879c26c2bc1b",
  "kind": "theorem",
  "lexical_name": "thetaPhi_summable",
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
  "slug": "thetaphi-summable--be05f187ab93dc8b97231ece",
  "source": {
    "blob": "868766a4c4fbcf87935e9f5c092af2ce05e811a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 15,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195AnalyticScratch/Variante0190a8f6ea6f138fb414e94dec11c0a274e27a72368da07c3498ed03cc2e5ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be05f187ab93dc8b97231ece806b47c28c88696b2c314de529b85fe46735dd88",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195AnalyticScratch/Variante0190a8f6ea6f138fb414e94dec11c0a274e27a72368da07c3498ed03cc2e5ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b14b6540-0c66-f7be-c5d2-879c26c2bc1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_summable (t : ℝ) : Summable (fun m : ℕ => thetaPhiTerm m t) := by
  have h4 := (HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * t))).mul_left
    (2 * Real.pi ^ 2 * Real.exp (5 * t) * Real.exp (4 * t))
  have h2 := (HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * t))).mul_left
    (3 * Real.pi * Real.exp (5 * t))
  refine (h4.sub h2).congr ?_
  intro n
  simp only [thetaPhiTerm, HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195AnalyticScratch/Variante0190a8f6ea6f138fb414e94dec11c0a274e27a72368da07c3498ed03cc2e5ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195AnalyticScratch/Variante0190a8f6ea6f138fb414e94dec11c0a274e27a72368da07c3498ed03cc2e5ff.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `868766a4c4fbcf87935e9f5c092af2ce05e811a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
