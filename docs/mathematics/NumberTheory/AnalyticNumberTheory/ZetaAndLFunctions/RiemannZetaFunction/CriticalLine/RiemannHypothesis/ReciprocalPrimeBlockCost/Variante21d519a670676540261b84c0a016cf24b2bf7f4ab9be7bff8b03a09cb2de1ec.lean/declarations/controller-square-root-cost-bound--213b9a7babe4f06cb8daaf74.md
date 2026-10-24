# controller_square_root_cost_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f71a038e3d724197e4180c3fdeca14af72e59a90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeBlockCost.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c77b9d0-4539-2974-c7a9-c20d592975c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "f71a038e3d724197e4180c3fdeca14af72e59a90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeBlockCost.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad463f38-26e3-e7af-04aa-c96def933d59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89794474-30f1-bd6e-2e6e-31dc1496626e",
  "kind": "theorem",
  "lexical_name": "controller_square_root_cost_bound",
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
  "slug": "controller-square-root-cost-bound--213b9a7babe4f06cb8daaf74",
  "source": {
    "blob": "f71a038e3d724197e4180c3fdeca14af72e59a90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 14,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrimeBlockCost/Variante21d519a670676540261b84c0a016cf24b2bf7f4ab9be7bff8b03a09cb2de1ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:213b9a7babe4f06cb8daaf74f532b6e1bdc78f2561797bad050f2534d495da36",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrimeBlockCost/Variante21d519a670676540261b84c0a016cf24b2bf7f4ab9be7bff8b03a09cb2de1ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89794474-30f1-bd6e-2e6e-31dc1496626e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controller_square_root_cost_bound {T η κ : ℝ}
    (controller : ActualDiagnostics.AdmissibleController T η) (hκ : 0 ≤ κ) :
    (∑ j, Cost.blockCost κ (Obstruction.harmonicMass (controller.blocks j))) ≤
      Cost.massCostConstant κ η*Obstruction.harmonicMass (primeInventory T)+
        (2*κ*Real.sqrt η+η) := by
  have hc : 0 ≤ Cost.massCostConstant κ η := by
    unfold Cost.massCostConstant
    positivity
  have htail : 0 ≤ 2*κ*Real.sqrt η+η := by
    have hη := controller.eta_positive
    positivity
  cases hrem : controller.remainder with
  | none =>
      have hsum : (∑ j, Cost.blockCost κ (Obstruction.harmonicMass (controller.blocks j))) ≤
          Cost.massCostConstant κ η*(∑ j, Obstruction.harmonicMass (controller.blocks j)) := by
        rw [Finset.mul_sum]
        apply Finset.sum_le_sum
        intro j hj
        apply Cost.blockCost_le_mass hκ controller.eta_positive
        exact controller.mass_lower_regular j (by simp [hrem])
      rw [controller.total_mass_is_inventory_mass] at hsum
      linarith
  | some remainder =>
      have hbound := Cost.sum_cost_with_remainder Finset.univ
        (fun j => Obstruction.harmonicMass (controller.blocks j)) κ η remainder
        hκ controller.eta_positive
        (fun j _ => Finset.sum_nonneg (fun p _ => by positivity))
        (fun j _ => controller.mass_upper j)
        (fun j _ hne => controller.mass_lower_regular j (by
          intro h
          rw [hrem] at h
          exact hne (Option.some.inj h).symm))
      rw [controller.total_mass_is_inventory_mass] at hbound
      exact hbound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrimeBlockCost/Variante21d519a670676540261b84c0a016cf24b2bf7f4ab9be7bff8b03a09cb2de1ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrimeBlockCost/Variante21d519a670676540261b84c0a016cf24b2bf7f4ab9be7bff8b03a09cb2de1ec.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71a038e3d724197e4180c3fdeca14af72e59a90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
