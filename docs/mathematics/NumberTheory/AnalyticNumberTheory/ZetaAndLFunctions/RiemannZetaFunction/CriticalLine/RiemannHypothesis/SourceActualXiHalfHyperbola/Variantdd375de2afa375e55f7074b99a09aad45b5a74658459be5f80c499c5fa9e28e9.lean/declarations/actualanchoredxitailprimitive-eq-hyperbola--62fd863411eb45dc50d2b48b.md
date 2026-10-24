# actualAnchoredXiTailPrimitive_eq_hyperbola

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ac810cf-484f-885c-1efc-2ed94eed4c0b",
  "kind": "theorem",
  "lexical_name": "actualAnchoredXiTailPrimitive_eq_hyperbola",
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
  "slug": "actualanchoredxitailprimitive-eq-hyperbola--62fd863411eb45dc50d2b48b",
  "source": {
    "blob": "6f12c181f49c57d60b93fbc2b09334372f7f1897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variantdd375de2afa375e55f7074b99a09aad45b5a74658459be5f80c499c5fa9e28e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62fd863411eb45dc50d2b48bf589dea7c5fbff661b58db4ed20357afceeacf8c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variantdd375de2afa375e55f7074b99a09aad45b5a74658459be5f80c499c5fa9e28e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ac810cf-484f-885c-1efc-2ed94eed4c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAnchoredXiTailPrimitive_eq_hyperbola {t : ℝ} (ht : Real.log 7 ≤ t) :
    actualAnchoredXiTailPrimitive t =
      2 * (actualMoebiusLogHalfHyperbola (Nat.floor (Real.exp t)) -
        actualMoebiusLogHalfHyperbola 7) -
        2 * (Chebyshev.psi (Real.exp t) + Real.exp t +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt (Real.exp t) +
        2 * (Chebyshev.psi 7 + 7 +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 := by
  rw [actualAnchoredXiTailPrimitive_eq_finite ht,
    actualMangoldtHalfWindowSeven_eq_hyperbola]
  simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht

end
end FormalResearch.RiemannHypothesis.SourceActualXiHalfHyperbola
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variantdd375de2afa375e55f7074b99a09aad45b5a74658459be5f80c499c5fa9e28e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variantdd375de2afa375e55f7074b99a09aad45b5a74658459be5f80c499c5fa9e28e9.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f12c181f49c57d60b93fbc2b09334372f7f1897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
