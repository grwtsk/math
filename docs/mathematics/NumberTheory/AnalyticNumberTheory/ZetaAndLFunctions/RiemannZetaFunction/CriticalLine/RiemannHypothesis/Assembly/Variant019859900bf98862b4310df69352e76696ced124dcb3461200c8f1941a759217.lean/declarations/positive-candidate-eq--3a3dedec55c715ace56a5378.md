# positive_candidate_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:539253c0-4b60-ca05-3f30-d0ef0a7dd485",
  "kind": "theorem",
  "lexical_name": "positive_candidate_eq",
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
  "slug": "positive-candidate-eq--3a3dedec55c715ace56a5378",
  "source": {
    "blob": "4e560f31e5c30ffbb345b0f13b82409af156896d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a3dedec55c715ace56a53786c8d9209bc4a82445111ab49fa8da18adf7f76eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:539253c0-4b60-ca05-3f30-d0ef0a7dd485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_candidate_eq
    (s : ℂ) (hs : 0 < s.re)
    (hc : s ∈ candidateSingularities) :
    ∃ p : ZeroPoint,
      0 < (p.val - 1 / 2).re ∧
        s = 2 * (p.val - 1 / 2) := by
  rcases hc with (hzero | ⟨o, rfl⟩) | ⟨o, rfl⟩
  · have hz : s = 0 := hzero
    simp [hz] at hs
  · refine ⟨o.1, ?_, rfl⟩
    change 0 < (2 * (o.1.val - 1 / 2)).re at hs
    norm_num at hs ⊢
    linarith
  · have heq :
        -2 * shiftedValue o =
          2 * shiftedValue (reflectOccurrence o) := by
      rw [shiftedValue_reflect]
      ring
    refine ⟨(reflectOccurrence o).1, ?_, heq⟩
    dsimp only at hs
    rw [heq] at hs
    change
      0 < (2 *
        ((reflectOccurrence o).1.val - 1 / 2)).re at hs
    norm_num at hs ⊢
    linarith

/-- The continued equation-(20) sum is meromorphic on the entire positive
half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e560f31e5c30ffbb345b0f13b82409af156896d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
