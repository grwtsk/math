# squareFiniteSum_evaluation_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbd5919f-8a9f-d1b2-3ece-c972f4cacdcb",
  "kind": "theorem",
  "lexical_name": "squareFiniteSum_evaluation_error",
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
  "slug": "squarefinitesum-evaluation-error--28bea4a323838266d38d8df4",
  "source": {
    "blob": "37791a0fffb75ba9d925874de1e67d613344a8b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28bea4a323838266d38d8df41dee9e29c1e0244ab7a0cbc4d3dd4d8864893119",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbd5919f-8a9f-d1b2-3ece-c972f4cacdcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareFiniteSum_evaluation_error (n : ℕ) (hn : 1 ≤ n)
    (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j)
    (evaluated : ℂ) (evaluationError : ℝ)
    (hevaluation : ‖squareFiniteSum n S m c - evaluated‖ ≤ evaluationError) :
    ‖squareFiniteSum n S m ρ - evaluated‖ ≤
      squareEnclosureBudget n S m r β + evaluationError := by
  calc
    _ = ‖(squareFiniteSum n S m ρ - squareFiniteSum n S m c) +
        (squareFiniteSum n S m c - evaluated)‖ := by congr 1; ring
    _ ≤ ‖squareFiniteSum n S m ρ - squareFiniteSum n S m c‖ +
        ‖squareFiniteSum n S m c - evaluated‖ := norm_add_le _ _
    _ ≤ _ := add_le_add (squareFiniteSum_enclosure_error n hn S m ρ c r β hρ hc hr)
      hevaluation

/-- A genuine one-sided source lower bound above the proved correction yields a prime count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37791a0fffb75ba9d925874de1e67d613344a8b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
