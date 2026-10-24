# middle_overlap_product_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18c45908-17ec-5b14-5afb-bf9575fedd93",
  "kind": "theorem",
  "lexical_name": "middle_overlap_product_lower",
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
  "slug": "middle-overlap-product-lower--ab03b51160ac1b411336e809",
  "source": {
    "blob": "60e9fb419b1af20120c0d0b6a20723cd202fdb27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab03b51160ac1b411336e809d64a6c5c9d8555a0168cc63f795581986cd93b60",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18c45908-17ec-5b14-5afb-bf9575fedd93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem middle_overlap_product_lower {A y x : ℝ} (hA : 8 ≤ A)
    (hy1 : 1 ≤ y) (hy2 : y ≤ 2)
    (hx : x ∈ Icc (A - 3 * y / 4) (A - y / 4)) :
    1 / (256 * A ^ 9) ≤ v A x * v A (x - (2 * A - y)) := by
  have hpos : 0 < A := by linarith
  have hl := interior_edge_point_lower hA
    (by linarith [hx.2] : 1 / 4 ≤ A - x)
    (by linarith [hx.1] : A - x ≤ 2)
  have hr := interior_edge_point_lower hA
    (by linarith [hx.1] : 1 / 4 ≤ y - (A - x))
    (by linarith [hx.2] : y - (A - x) ≤ 2)
  have heq : x - (2 * A - y) = -(A - (y - (A - x))) := by ring
  rw [heq, actual_normalized_test_even hpos]
  have hl' : 1 / (16 * (A ^ 4 * Real.sqrt A)) ≤ v A x := by simpa using hl
  have hc : 0 ≤ 1 / (16 * (A ^ 4 * Real.sqrt A)) := by positivity
  have hmul := mul_le_mul hl' hr hc (hc.trans hl')
  have hprice : (1 / (16 * (A ^ 4 * Real.sqrt A))) *
      (1 / (16 * (A ^ 4 * Real.sqrt A))) = 1 / (256 * A ^ 9) := by
    calc
      _ = 1 / (256 * (A ^ 4) ^ 2 * (Real.sqrt A) ^ 2) := by ring
      _ = _ := by rw [Real.sq_sqrt hpos.le]; congr 1; ring
  rw [hprice] at hmul
  exact hmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e9fb419b1af20120c0d0b6a20723cd202fdb27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
