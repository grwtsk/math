# finite_primes_mem_full_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b3f59fc-c604-b55c-7af7-ffe8783727af",
  "kind": "theorem",
  "lexical_name": "finite_primes_mem_full_inventory",
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
  "slug": "finite-primes-mem-full-inventory--4bf9f4bf60180b1b37c23982",
  "source": {
    "blob": "47689fea780a20fa04b1153a1b38fa6b94034f25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variantc7c0a5e7016e6e8c41d7cba24258db1d2df34de6830d1326de90915675a2b1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bf9f4bf60180b1b37c23982de1c9f5d7d10b7dc8e490e1675d1f80843d9c1c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variantc7c0a5e7016e6e8c41d7cba24258db1d2df34de6830d1326de90915675a2b1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b3f59fc-c604-b55c-7af7-ffe8783727af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_primes_mem_full_inventory (s : Finset Nat.Primes) :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ p ∈ s, (p : ℕ) ∈ primeIndices A := by
  classical
  let N := s.sup (fun p ↦ (p : ℕ))
  let A : ℝ := max 1 (Real.log ((N : ℝ) + 1))
  refine ⟨A, le_max_left _ _, ?_⟩
  intro p hp
  rw [mem_primeIndices_iff]
  refine ⟨p.prop.two_le, ?_⟩
  have hpN : (p : ℝ) ≤ N := by
    exact_mod_cast (Finset.le_sup (f := fun p : Nat.Primes ↦ (p : ℕ)) hp)
  have hA : Real.log ((N : ℝ) + 1) ≤ 2 * A := by
    have hA1 : 1 ≤ A := le_max_left _ _
    have hAl : Real.log ((N : ℝ) + 1) ≤ A := le_max_right _ _
    linarith
  calc
    (p : ℝ) < (N : ℝ) + 1 := by linarith
    _ = Real.exp (Real.log ((N : ℝ) + 1)) :=
      (Real.exp_log (by positivity)).symm
    _ ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr hA

/-- The complete finite prime-power budget has no radius-uniform upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variantc7c0a5e7016e6e8c41d7cba24258db1d2df34de6830d1326de90915675a2b1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variantc7c0a5e7016e6e8c41d7cba24258db1d2df34de6830d1326de90915675a2b1f8.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47689fea780a20fa04b1153a1b38fa6b94034f25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
