# inventoryPrimeDiagonal_eq_retainedPrimeDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85b823590a9499054ba84533b8da944aadec051f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:805f2cd4-6fa0-a4ea-1c70-457df703ee00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5dba01c-d1dd-4acd-2b4f-fc41cfbc68c8",
  "kind": "theorem",
  "lexical_name": "inventoryPrimeDiagonal_eq_retainedPrimeDiagonal",
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
  "slug": "inventoryprimediagonal-eq-retainedprimediagonal--d2d0bf7306a710eba8636e6b",
  "source": {
    "blob": "85b823590a9499054ba84533b8da944aadec051f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2d0bf7306a710eba8636e6b5338c1784d7a5accc57f826e7901a7c96839f22c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5dba01c-d1dd-4acd-2b4f-fc41cfbc68c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inventoryPrimeDiagonal_eq_retainedPrimeDiagonal (A : ℝ) (hA : 1 ≤ A) :
    inventoryPrimeDiagonal A = retainedPrimeDiagonal A := by
  have hMN : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith : A ≤ 2 * A))
  have hsub : (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime := by
    intro p hp
    have hp' := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
      ⟨(Finset.mem_Ioc.mp hp'.1).1, (Finset.mem_Ioc.mp hp'.1).2.trans hMN⟩, hp'.2⟩
  have hs := Finset.sum_subset hsub
    (f := fun p : ℕ => Real.log (p : ℝ) / (p : ℝ) * diagonalCorrelation A (Real.log p))
    (by
      intro p hp hpnot
      have hp' := Finset.mem_filter.mp hp
      have hpR : 0 < (p : ℝ) := by exact_mod_cast hp'.2.pos
      have hMp : ⌊Real.exp A⌋₊ < p := by
        by_contra h
        have hpM : p ≤ ⌊Real.exp A⌋₊ := Nat.not_lt.mp h
        exact hpnot (Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
          ⟨(Finset.mem_Ioc.mp hp'.1).1, hpM⟩, hp'.2⟩)
      have hlog : A < Real.log (p : ℝ) :=
        (Real.lt_log_iff_exp_lt hpR).mpr ((Nat.floor_lt (Real.exp_pos A).le).mp hMp)
      have hzero : diagonalCorrelation A (Real.log p) = 0 := by
        apply sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * Real.log p) (by linarith)
        rw [abs_of_pos (by linarith : 0 < 2 * Real.log (p : ℝ))]
        linarith
      rw [hzero, mul_zero])
  unfold inventoryPrimeDiagonal retainedPrimeDiagonal
  rw [← hs]
  rfl

/-- The actual retained diagonal is minus its literal correlation integral, up to one fixed error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85b823590a9499054ba84533b8da944aadec051f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
