# augmented_gram_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e7d2fac-53e7-0c7d-2845-d2c36ca3c669",
  "kind": "theorem",
  "lexical_name": "augmented_gram_nonneg",
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
  "slug": "augmented-gram-nonneg--2e354153ddf341c7f55da936",
  "source": {
    "blob": "b2428fc8ad59a83a3765ce656e25d20092284ab6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramQuotient/Variantf0908d714aa996708dc2460ad72f79fb67fe73aa7cb26e1dabffae46d84be82e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e354153ddf341c7f55da9361f2980375d98a518123c54045b480045572f3295",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramQuotient/Variantf0908d714aa996708dc2460ad72f79fb67fe73aa7cb26e1dabffae46d84be82e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e7d2fac-53e7-0c7d-2845-d2c36ca3c669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem augmented_gram_nonneg (q : ComplexL2) (I : Finset ℕ)
    (x y : GramQuotient q I) :
    0 ≤ (⟪x, x⟫_ℂ + signedForm q I x y + signedForm q I y x + ⟪y, y⟫_ℂ).re := by
  let u : ComplexL2 := sourceEquiv q I x
  let v : ComplexL2 := sourceEquiv q I y
  have h : ⟪u + reflection v, u + reflection v⟫_ℂ =
      ⟪u, u⟫_ℂ + ⟪u, reflection v⟫_ℂ + ⟪v, reflection u⟫_ℂ + ⟪v, v⟫_ℂ := by
    rw [inner_add_left, inner_add_right, inner_add_right,
      reflection.inner_map_map, reflection_inner_symmetric]
    ring
  have hp := inner_self_nonneg (𝕜 := ℂ) (x := u + reflection v)
  change 0 ≤ (⟪u, u⟫_ℂ + ⟪u, reflection v⟫_ℂ +
    ⟪v, reflection u⟫_ℂ + ⟪v, v⟫_ℂ).re
  rw [← h]
  exact hp

/-- Both signs of the reflected diagonal are controlled by the positive Gram metric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramQuotient/Variantf0908d714aa996708dc2460ad72f79fb67fe73aa7cb26e1dabffae46d84be82e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramQuotient/Variantf0908d714aa996708dc2460ad72f79fb67fe73aa7cb26e1dabffae46d84be82e.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2428fc8ad59a83a3765ce656e25d20092284ab6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
