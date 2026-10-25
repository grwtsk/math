# centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f015e38ec874784e589a32f7d68433f3504e6e0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e1f4444-7cd4-baf1-53e6-bc0aee4cfd61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5648c813-5503-6029-168c-bc44ece18f7f",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon",
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
  "slug": "centeredtwistedpsicriticalbound-implies-halfplusepsilon--0f232f204d710247ef7ccc9e",
  "source": {
    "blob": "f015e38ec874784e589a32f7d68433f3504e6e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f232f204d710247ef7ccc9ee775473b1db30f125fff2ed53675165ab4ac4b94",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5648c813-5503-6029-168c-bc44ece18f7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (hCritical : CenteredTwistedPsiCriticalBound χ) :
    CenteredTwistedPsiHalfPlusEpsilon χ := by
  rintro ε hε
  obtain ⟨C, hC, hBound⟩ := hCritical
  let K : ℝ := (4 / ε ^ 2) * (q : ℝ) ^ ε
  refine ⟨C * K, by positivity, ?_⟩
  intro x hx
  calc
    ‖centeredTwistedPsi χ x‖ ≤
        C * centeredTwistedPsiCriticalRate q x := hBound x hx
    _ ≤ C * (K * (x : ℝ) ^ (1 / 2 + ε)) := by
      exact mul_le_mul_of_nonneg_left
        (centeredTwistedPsiCriticalRate_le_halfPlusEpsilon q hε x hx) hC
    _ = (C * K) * (x : ℝ) ^ (1 / 2 + ε) := by ring

/-- Exact decomposition data for a smoothed primitive explicit formula.

The zero, gamma, trivial-zero, contour, and de-smoothing contributions are
separate functions.  No quantitative estimate is stored in this structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f015e38ec874784e589a32f7d68433f3504e6e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
