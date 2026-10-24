# sourceLinear_two_difference_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd7c46fb-df7f-e5be-df72-dcbc34cc745e",
  "kind": "theorem",
  "lexical_name": "sourceLinear_two_difference_boundary",
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
  "slug": "sourcelinear-two-difference-boundary--6e6d480075a709ea041849d1",
  "source": {
    "blob": "bf2e33e73816d6c7d3ee1060c0d91043b5f23660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 197,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e6d480075a709ea041849d17917a0e626f51f5b251cb5ed5d2a639530eb6be4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd7c46fb-df7f-e5be-df72-dcbc34cc745e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLinear_two_difference_boundary (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
      ∑ d ∈ (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d := by
  have hfirst : ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)).filter
      (fun d ↦ d ≤ N / 2) = (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2) := by
    ext d
    simp only [mem_filter, mem_Icc]
    have hhalf := Nat.div_le_self N 2
    omega
  have hsecond : ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)).filter
      (fun d ↦ ¬d ≤ N / 2) = (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2) := by
    ext d
    simp only [mem_filter, mem_Icc, mem_Ioc]
    omega
  have hs := sum_filter_add_sum_filter_not
    ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun d ↦ d ≤ N / 2)
    (fun d ↦ (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d)
  rw [hfirst, hsecond] at hs
  rw [sourceLinear_two_split, ← hs]
  simp_rw [mul_sub]
  rw [sum_sub_distrib]
  ring

/-- The actual interior difference has a derivative budget, still of inverse square-root order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf2e33e73816d6c7d3ee1060c0d91043b5f23660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
