# all_real_lower_of_overlap_with_exact_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:614e7001-f2a0-649b-404f-d97912d1b4c4",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_overlap_with_exact_strip",
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
  "slug": "all-real-lower-of-overlap-with-exact-strip--4ca77b6aa7e1c81910551a21",
  "source": {
    "blob": "3cced8eaccaa77f9e81a205514fde9f58f482cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ca77b6aa7e1c81910551a21669100de5e2b9d29f01bbf542e0abefa96b0406b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:614e7001-f2a0-649b-404f-d97912d1b4c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_overlap_with_exact_strip (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices (max 91 R),
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * exactOverlapResidualBudget D (max 91 R) C_F) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  exact ⟨C_F, hF0, all_real_lower_of_overlap_with_ledger D R C_F hF hover⟩

/-- Directly instantiate the existing exact RH estimate consumer at max(91,R). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cced8eaccaa77f9e81a205514fde9f58f482cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
