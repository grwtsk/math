# actual_leading_upper_of_literal_full_Xi_signed_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d831571b-bfba-54ca-d643-4b048fcbe6b5",
  "kind": "theorem",
  "lexical_name": "actual_leading_upper_of_literal_full_Xi_signed_pairing",
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
  "slug": "actual-leading-upper-of-literal-full-xi-signed-pairing--14a33b601604d9ca1d6f5b91",
  "source": {
    "blob": "6647f64af6bfaf2225ad9b198b88eb8855def44d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiLeadingPropagation/Variant15ef43b7805fe4d3c058dde95a39b3c1a2819acf100a5d2dd00370c53d760211.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14a33b601604d9ca1d6f5b91285b55dc0688af73a41d210a6085c03496f17b57",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiLeadingPropagation/Variant15ef43b7805fe4d3c058dde95a39b3c1a2819acf100a5d2dd00370c53d760211.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d831571b-bfba-54ca-d643-4b048fcbe6b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_leading_upper_of_literal_full_Xi_signed_pairing
    (J A : ℝ) (hA : 25600 ≤ A)
    (hJ : -J ≤ ∫ t in Real.log 2..2 * A,
      shiftedPsiFullPrimitive t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection 91 -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_signed_cesaro J A hA
  rw [signed_pairing_eq_literalXiKernel A (by linarith : 1 ≤ A)]
  exact hJ

end
end FormalResearch.RiemannHypothesis.SourceFullXiLeadingPropagation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiLeadingPropagation/Variant15ef43b7805fe4d3c058dde95a39b3c1a2819acf100a5d2dd00370c53d760211.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiLeadingPropagation/Variant15ef43b7805fe4d3c058dde95a39b3c1a2819acf100a5d2dd00370c53d760211.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6647f64af6bfaf2225ad9b198b88eb8855def44d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
