# remaining_lower_of_literal_full_Xi_kernel_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21cef083-6c4d-ac98-d6b7-0a4fb41b7b99",
  "kind": "theorem",
  "lexical_name": "remaining_lower_of_literal_full_Xi_kernel_budget",
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
  "slug": "remaining-lower-of-literal-full-xi-kernel-budget--49f28a84cf0552895bc62436",
  "source": {
    "blob": "1f452d5812e7137f194d8503eac55b79226bd770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCesaroConsumer/Variant44e5e718c6a1fb2a36b9cbb67d7818537b95eb2dbc30b0d08c00a7933c2322ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49f28a84cf0552895bc6243665c9761c7769a045060c709cff9fa0a605a1064c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCesaroConsumer/Variant44e5e718c6a1fb2a36b9cbb67d7818537b95eb2dbc30b0d08c00a7933c2322ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21cef083-6c4d-ac98-d6b7-0a4fb41b7b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remaining_lower_of_literal_full_Xi_kernel_budget (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |shiftedPsiFullPrimitive t| ≤ M * (t - Real.log 2)) :
    -((522 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  apply remaining_lower_of_actual_finite_row_five M A hM hA
  intro t ht
  rw [← shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht]
  exact hG t ht

/-- A future complete Xi-kernel arithmetic witness instantiates the improved all-real consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCesaroConsumer/Variant44e5e718c6a1fb2a36b9cbb67d7818537b95eb2dbc30b0d08c00a7933c2322ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCesaroConsumer/Variant44e5e718c6a1fb2a36b9cbb67d7818537b95eb2dbc30b0d08c00a7933c2322ca.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f452d5812e7137f194d8503eac55b79226bd770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
