# jointAt_eq_reflected_profiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:727d88c2-a8d3-5b26-2aae-ca2410785d86",
  "kind": "theorem",
  "lexical_name": "jointAt_eq_reflected_profiles",
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
  "slug": "jointat-eq-reflected-profiles--50cbb3c3da2f08907dbbd414",
  "source": {
    "blob": "4cc8be726ec8a5efc99cfda0beb2d46a6ebcd198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 211,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variante40ed61477fd8c8b3f64f14e8b8a5057a3ec07bc3ee168bd388830cbe261a25c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50cbb3c3da2f08907dbbd414dd5dc087fbe850744770dadf3ab494e41c5a958a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variante40ed61477fd8c8b3f64f14e8b8a5057a3ec07bc3ee168bd388830cbe261a25c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:727d88c2-a8d3-5b26-2aae-ca2410785d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointAt_eq_reflected_profiles (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    jointAt A U N =
      (⟪finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
          mangoldtCoefficient,
        reflection (finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
          (centeredCoefficient U))⟫_ℂ).re -
      centeredDiagonalAt A U N - mainTermAt A U N := by
  rw [← readoutAt_eq_jointAt]
  exact readoutAt_eq_reflected_profiles A hA U N

/-- At both actual floors, full centered deletion and the independent main formula remain intact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variante40ed61477fd8c8b3f64f14e8b8a5057a3ec07bc3ee168bd388830cbe261a25c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variante40ed61477fd8c8b3f64f14e8b8a5057a3ec07bc3ee168bd388830cbe261a25c.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cc8be726ec8a5efc99cfda0beb2d46a6ebcd198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
