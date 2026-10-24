# sum_truncatedMoebius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63a6eadb-beb9-ece4-f539-a74e24a16e32",
  "kind": "theorem",
  "lexical_name": "sum_truncatedMoebius",
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
  "slug": "sum-truncatedmoebius--1c5e812e27e3773aa32a208b",
  "source": {
    "blob": "ff7a54ab935c2fec7644c039196d0bca32c91eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 205,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c5e812e27e3773aa32a208b37960666799147d68b6b3b84c2074601dfcc77c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63a6eadb-beb9-ece4-f539-a74e24a16e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_truncatedMoebius (B N : ℕ) (hNB : N ≤ B) (V : ℕ → ℝ) :
    (∑ i ∈ Icc 1 B, truncatedMoebius N i * V i) =
      ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) * V i := by
  have hsub : Icc 1 N ⊆ Icc 1 B := by
    intro i hi
    exact mem_Icc.mpr ⟨(mem_Icc.mp hi).1, (mem_Icc.mp hi).2.trans hNB⟩
  calc
    _ = ∑ i ∈ Icc 1 N, truncatedMoebius N i * V i := by
      symm
      apply sum_subset hsub
      intro i hi hout
      have hiN : ¬i ≤ N := by
        intro h
        exact hout (mem_Icc.mpr ⟨(mem_Icc.mp hi).1, h⟩)
      simp [truncatedMoebius, hiN]
    _ = _ := by
      apply sum_congr rfl
      intro i hi
      simp [truncatedMoebius, (mem_Icc.mp hi).2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff7a54ab935c2fec7644c039196d0bca32c91eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
