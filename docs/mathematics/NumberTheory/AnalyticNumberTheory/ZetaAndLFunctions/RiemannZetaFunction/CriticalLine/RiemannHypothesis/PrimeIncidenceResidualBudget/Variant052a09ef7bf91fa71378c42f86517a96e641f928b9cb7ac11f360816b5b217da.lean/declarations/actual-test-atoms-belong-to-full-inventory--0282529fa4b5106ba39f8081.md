# actual_test_atoms_belong_to_full_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e83b189-0002-dd4e-f35a-7c4c39025e94",
  "kind": "theorem",
  "lexical_name": "actual_test_atoms_belong_to_full_inventory",
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
  "slug": "actual-test-atoms-belong-to-full-inventory--0282529fa4b5106ba39f8081",
  "source": {
    "blob": "76083cf523bad17925661fa7d2d66591ae3855ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeIncidenceResidualBudget/Variant052a09ef7bf91fa71378c42f86517a96e641f928b9cb7ac11f360816b5b217da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0282529fa4b5106ba39f8081c8bfd2cb44e20ffb0df04ec401a2df4a9986215d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeIncidenceResidualBudget/Variant052a09ef7bf91fa71378c42f86517a96e641f928b9cb7ac11f360816b5b217da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e83b189-0002-dd4e-f35a-7c4c39025e94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_test_atoms_belong_to_full_inventory {A : ℝ} (hA : 8 ≤ A) :
    2 ∈ primePowerInventory (2 * A) ∧ 3 ∈ primePowerInventory (2 * A) := by
  have he : Real.exp (2 : ℝ) = Real.exp 1 ^ 2 := by simp [← Real.exp_nat_mul]
  have h3 : (3 : ℝ) < Real.exp (2 : ℝ) := by
    rw [he]; nlinarith [Real.exp_one_gt_two]
  have hsource : (3 : ℝ) ≤ Real.exp (2 * A) := h3.le.trans
    (Real.exp_le_exp.mpr (by linarith))
  have hf : 3 ≤ ⌊Real.exp (2 * A)⌋₊ := Nat.le_floor hsource
  constructor <;> apply Finset.mem_Icc.mpr <;> constructor <;> omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeIncidenceResidualBudget/Variant052a09ef7bf91fa71378c42f86517a96e641f928b9cb7ac11f360816b5b217da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeIncidenceResidualBudget/Variant052a09ef7bf91fa71378c42f86517a96e641f928b9cb7ac11f360816b5b217da.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76083cf523bad17925661fa7d2d66591ae3855ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
