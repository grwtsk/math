# correctedNumerator_eq_sum_increments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "556ef46eda5af9be110c8db193bc887dd223ea9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bc35f29-cbdd-6726-b414-413f5683c7cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d36e5e8-3e5c-9662-2e65-be180dc27b2b",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_eq_sum_increments",
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
  "slug": "correctednumerator-eq-sum-increments--4ec5df357d061281c7392b2f",
  "source": {
    "blob": "556ef46eda5af9be110c8db193bc887dd223ea9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ec5df357d061281c7392b2f0e5694791aef9a6bfa0cabe610b0bffe1903c8b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d36e5e8-3e5c-9662-2e65-be180dc27b2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_eq_sum_increments (N : ℕ) (hN : 1 ≤ N) (z : ℂ) :
    correctedNumerator N z =
      ∑ n ∈ Finset.Ico 1 N, (mobiusReciprocalSum n : ℂ) * cutoffShape n z := by
  induction N, hN using Nat.le_induction with
  | base => simp [correctedNumerator_one]
  | succ N hN ih =>
    rw [Finset.sum_Ico_succ_top hN, ← ih]
    have hs := correctedNumerator_succ_sub N hN z
    linear_combination hs

/-- The actual boundary residual whose squared integral defines arithmeticErrorSq. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `556ef46eda5af9be110c8db193bc887dd223ea9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
