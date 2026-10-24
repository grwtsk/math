# bounded_radius_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afaf054b-0e04-5ad9-9da8-c24b384313fb",
  "kind": "theorem",
  "lexical_name": "bounded_radius_lower",
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
  "slug": "bounded-radius-lower--de97303c4919f669efb575b2",
  "source": {
    "blob": "89a5ecfd186f5bdf5b34b6cbe0b602d0c88acacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de97303c4919f669efb575b2612263904b52417a0aa0b4abad1d356707c891db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afaf054b-0e04-5ad9-9da8-c24b384313fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_radius_lower
    (R : ℝ) :
    ∃ lower : ℝ,
      ∀ A : ℝ, 1 ≤ A → A ≤ R →
        lower ≤
          sourceQuadraticValue
            Realization.explicitSecondDerivative A := by
  refine
    ⟨archimedeanMultiplier 0 -
      2 * ∑ n ∈ primeIndices R,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|,
      ?_⟩
  intro A hA hAR
  have hp :=
    prime_contribution_le_finite_budget A R hA hAR
  have ha :=
    SourceCorrectionEstimate.actual_archimedean_lower A hA
  unfold sourceQuadraticValue
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89a5ecfd186f5bdf5b34b6cbe0b602d0c88acacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
