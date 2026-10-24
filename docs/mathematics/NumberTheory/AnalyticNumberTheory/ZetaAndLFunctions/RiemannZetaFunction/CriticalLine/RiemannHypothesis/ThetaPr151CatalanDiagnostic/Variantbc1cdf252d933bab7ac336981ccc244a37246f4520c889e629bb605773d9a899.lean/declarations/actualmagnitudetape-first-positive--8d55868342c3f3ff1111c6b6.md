# actualMagnitudeTape_first_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e049d0a7-8ee5-7101-55a9-0343edefd16d",
  "kind": "theorem",
  "lexical_name": "actualMagnitudeTape_first_positive",
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
  "slug": "actualmagnitudetape-first-positive--8d55868342c3f3ff1111c6b6",
  "source": {
    "blob": "8eb43cb00722617b93aa5e058f849cb387bf07f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPr151CatalanDiagnostic/Variantbc1cdf252d933bab7ac336981ccc244a37246f4520c889e629bb605773d9a899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d55868342c3f3ff1111c6b627232f0b2ef865961a1322d398ef654cfb0e6633",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPr151CatalanDiagnostic/Variantbc1cdf252d933bab7ac336981ccc244a37246f4520c889e629bb605773d9a899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e049d0a7-8ee5-7101-55a9-0343edefd16d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMagnitudeTape_first_positive {L N : ℕ} (hL : 0 < L) (hN : 0 < N)
    (t : ℝ) : 0 < actualMagnitudeTape L N t 1 := by
  unfold actualMagnitudeTape
  simp only [pow_one]
  apply Finset.sum_pos
  · intro l _
    apply mul_pos (thetaPhiBaseMomentMagnitude_pos hN t l.val)
    unfold thetaPhiSignedMomentNode
    positivity
  · exact ⟨⟨0, hL⟩, Finset.mem_univ _⟩

/-- Even rescaling the canonical free cyclic vector cannot produce the
actual positive PR151 magnitude tape: its first moment remains zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPr151CatalanDiagnostic/Variantbc1cdf252d933bab7ac336981ccc244a37246f4520c889e629bb605773d9a899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPr151CatalanDiagnostic/Variantbc1cdf252d933bab7ac336981ccc244a37246f4520c889e629bb605773d9a899.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eb43cb00722617b93aa5e058f849cb387bf07f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
