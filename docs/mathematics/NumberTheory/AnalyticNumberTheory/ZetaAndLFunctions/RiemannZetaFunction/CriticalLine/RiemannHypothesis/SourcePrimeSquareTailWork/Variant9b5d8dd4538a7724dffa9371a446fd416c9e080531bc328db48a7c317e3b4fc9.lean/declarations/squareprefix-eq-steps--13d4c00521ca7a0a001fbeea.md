# squarePrefix_eq_steps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7684c32691d1b9a13fa4de4e9d06f34edb90abb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3ebfede-0801-cf2b-e117-90b96e9cbb7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2017c790-b692-ac46-709f-72f0baed23a6",
  "kind": "theorem",
  "lexical_name": "squarePrefix_eq_steps",
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
  "slug": "squareprefix-eq-steps--13d4c00521ca7a0a001fbeea",
  "source": {
    "blob": "f7684c32691d1b9a13fa4de4e9d06f34edb90abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d4c00521ca7a0a001fbeeaf843e1e1910b66fffafc344039b71ae877fb0832",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2017c790-b692-ac46-709f-72f0baed23a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrefix_eq_steps (b u : ℝ) (hu : u ≤ b) :
    squarePrefix u = ∑ p ∈ primeLogInventory (b/2),
      if 2*Real.log (p : ℝ) ≤ u then squarePrefixCoefficient p else 0 := by
  rw [squarePrefix, ← primeLogInventory_filter_log (b/2) (u/2) (by linarith),
    Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases h : Real.log (p : ℝ) ≤ u/2
  · have h' : 2*Real.log (p : ℝ) ≤ u := by linarith
    simp only [h, h', if_true]
  · have h' : ¬2*Real.log (p : ℝ) ≤ u := by linarith
    simp only [h, h', if_false]

/-- Finite-step integrability does not interchange an infinite arithmetic sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7684c32691d1b9a13fa4de4e9d06f34edb90abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
