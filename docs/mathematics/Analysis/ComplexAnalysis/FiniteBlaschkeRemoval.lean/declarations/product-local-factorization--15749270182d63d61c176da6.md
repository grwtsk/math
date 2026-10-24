# product_local_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a47383ac-71e1-6dca-dd0b-e774db354f6d",
  "kind": "theorem",
  "lexical_name": "product_local_factorization",
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
  "slug": "product-local-factorization--15749270182d63d61c176da6",
  "source": {
    "blob": "f2c4e83c3ba6f77c85034e3e7e570411827cccdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 71,
    "path": "GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15749270182d63d61c176da62a7dd858ee52016c32c6f2bf8db38e2b9b1dff72",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a47383ac-71e1-6dca-dd0b-e774db354f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_local_factorization {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (hinj : Set.InjOn a (S : Set ι))
    (i : ι) (hi : i ∈ S) :
    ∃ d : ℂ → ℂ, AnalyticAt ℂ d (a i) ∧ d (a i) ≠ 0 ∧
      ∀ w, (∏ j ∈ S, (factor 3 (a j) w) ^ m j) = (w - a i) ^ m i * d w := by
  classical
  let d : ℂ → ℂ := fun w => (unitCoefficient (a i) w) ^ m i *
    ∏ j ∈ S.erase i, (factor 3 (a j) w) ^ m j
  have hw : ‖a i‖ ≤ 3 := by linarith [ha i hi]
  have herase : ∀ j ∈ S.erase i, ‖a j‖ ≤ 11 / 4 :=
    fun j hj => ha j (Finset.mem_of_mem_erase hj)
  have hne : ∀ j ∈ S.erase i, a i ≠ a j := by
    intro j hj he
    exact (Finset.mem_erase.mp hj).1 (hinj (Finset.mem_of_mem_erase hj) hi he.symm)
  refine ⟨d, ?_, ?_, ?_⟩
  · exact ((analyticAt_unit (a i) (a i) (ha i hi) hw).pow (m i)).mul
      (analyticAt_product (S.erase i) a m herase (a i) hw)
  · exact mul_ne_zero (pow_ne_zero _ (unit_ne_zero (a i) (a i) (ha i hi) hw))
      (product_ne_zero_off_roots (S.erase i) a m herase (a i) hw hne)
  · intro w
    rw [← Finset.mul_prod_erase S (fun j => (factor 3 (a j) w) ^ m j) hi,
      factor_eq_sub_mul_unit, mul_pow]
    dsimp [d]
    ring

/-- Punctured agreement with an analytic germ identifies the SAME global normal form.
This is stronger than merely knowing that a removable limit exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c4e83c3ba6f77c85034e3e7e570411827cccdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
