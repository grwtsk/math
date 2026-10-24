# column_sub_strip_eq_closed_quotient_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2b15ed0-f129-97f9-8381-fe2b7f8d1b90",
  "kind": "theorem",
  "lexical_name": "column_sub_strip_eq_closed_quotient_rows",
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
  "slug": "column-sub-strip-eq-closed-quotient-rows--f9ee3093e84eab8d888881d8",
  "source": {
    "blob": "cbef27e04d908016dc2cd0372dc5d7a53a70de88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ee3093e84eab8d888881d88419f094fc2c2711aa457076de8ff3ae43c39de9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2b15ed0-f129-97f9-8381-fe2b7f8d1b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem column_sub_strip_eq_closed_quotient_rows (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) :
    shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U =
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
        ∑ k ∈ Finset.Icc 1 (U / d),
          sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
  classical
  have hs : Finset.Icc 1 U = Finset.Icc 1 (U / d) ∪ Finset.Ioc (U / d) U := by
    ext k
    have hq : U / d ≤ U := Nat.div_le_self U d
    simp only [Finset.mem_Icc, Finset.mem_Ioc, Finset.mem_union]
    omega
  have hj : Disjoint (Finset.Icc 1 (U / d)) (Finset.Ioc (U / d) U) := by
    apply Finset.disjoint_left.mpr
    intro k hk hk'
    have hl := (Finset.mem_Icc.mp hk).2
    have hu := (Finset.mem_Ioc.mp hk').1
    omega
  unfold shortColumnPlainRowsAt quotientStripRowsAt
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [hs, Finset.sum_union hj,
    closed_strip_inner_support_clip A hA d hd U m
      (by have := (Finset.mem_Ioc.mp hm).1; omega)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbef27e04d908016dc2cd0372dc5d7a53a70de88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
