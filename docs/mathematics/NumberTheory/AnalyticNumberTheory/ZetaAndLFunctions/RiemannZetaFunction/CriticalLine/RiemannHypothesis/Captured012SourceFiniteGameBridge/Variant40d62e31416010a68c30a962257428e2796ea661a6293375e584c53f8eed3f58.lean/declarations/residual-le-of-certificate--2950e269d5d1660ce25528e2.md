# residual_le_of_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5fa0680-3f84-3cdb-e62a-79d40fc0964f",
  "kind": "theorem",
  "lexical_name": "residual_le_of_certificate",
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
  "slug": "residual-le-of-certificate--2950e269d5d1660ce25528e2",
  "source": {
    "blob": "07206edb0144f9a251a29f8c4d26e1e6a88d9fd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 355,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant40d62e31416010a68c30a962257428e2796ea661a6293375e584c53f8eed3f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2950e269d5d1660ce25528e219a91b5b55c5f79ec564879963f8ce1dc5c2450d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant40d62e31416010a68c30a962257428e2796ea661a6293375e584c53f8eed3f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5fa0680-3f84-3cdb-e62a-79d40fc0964f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_le_of_certificate (A C : ℝ) (hA : 1 ≤ A)
    (h g e : ℕ → ℝ)
    (hc : ∀ i < sourceEventCount A, 0 ≤ g i + h i - h (i + 1))
    (hb : ∀ i < sourceEventCount A, g i - e i ≤ sourceEventGain A i)
    (hbudget : h 0 - h (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e i ≤ C) :
    mertensResidual A ≤ C / 2 := by
  have ht := FiniteGainCertificates.terminal_lower id h g (sourceEventGain A) e
    (sourceEventCount A) C hc hb hbudget
  rw [sum_sourceEventGain A hA] at ht
  linarith

/-- The smaller certificate consumes the actual relative first-prime target;
the square main term is already included with its correct unfavorable sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant40d62e31416010a68c30a962257428e2796ea661a6293375e584c53f8eed3f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant40d62e31416010a68c30a962257428e2796ea661a6293375e584c53f8eed3f58.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07206edb0144f9a251a29f8c4d26e1e6a88d9fd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
