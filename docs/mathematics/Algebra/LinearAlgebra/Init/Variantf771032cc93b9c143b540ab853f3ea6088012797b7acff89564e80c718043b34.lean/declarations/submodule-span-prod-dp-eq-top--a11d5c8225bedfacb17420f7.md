# submodule_span_prod_dp_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e236c4d-9d0c-560e-701a-41591aece6c8",
  "kind": "theorem",
  "lexical_name": "submodule_span_prod_dp_eq_top",
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
  "slug": "submodule-span-prod-dp-eq-top--a11d5c8225bedfacb17420f7",
  "source": {
    "blob": "5c8edb599c09fbeac461dbedf7864010de1ebb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 260,
    "path": "GRWTSK/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a11d5c8225bedfacb17420f7f7d5336a28bad2799cb721941b199f7e0b3edc47",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e236c4d-9d0c-560e-701a-41591aece6c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submodule_span_prod_dp_eq_top (hv : span R (Set.range v) = ⊤) :
    span R (Set.range fun (n : ι →₀ ℕ) ↦ n.prod fun i k ↦ dp R k (v i)) = ⊤ := by
  rw [eq_top_iff]
  intro p hp
  clear hp
  induction p using DividedPowerAlgebra.induction_on with
  | C r =>
    simp only [Algebra.algebraMap_eq_smul_one]
    exact smul_mem _ _ (subset_span ⟨0, by simp⟩)
  | add x y hx hy => exact Submodule.add_mem _ hx hy
  | dp x k m hx =>
    have hm : m ∈ span R (Set.range v) := by simp [hv, mem_top]
    induction hm using span_induction generalizing x k with
    | zero => rw [dp_null]; split_ifs <;> simp [hx]
    | smul r m hm h => simp [dp_smul, smul_mem _ _ (h x k hx)]
    | mem y hy =>
      obtain ⟨i, rfl⟩ := hy
      induction hx using span_induction with
      | zero => simp
      | mem x hx =>
        obtain ⟨n, rfl⟩ := hx
        simp only
        rw [← n.mul_prod_erase' i _ (fun i ↦ dp_zero (m := v i)), mul_comm,
          ← mul_assoc, dp_mul, nsmul_eq_mul, mul_assoc, ← nsmul_eq_mul]
        refine smul_of_tower_mem _ _ (mem_span_of_mem ⟨Finsupp.single i k + n, ?_⟩)
        simp only
        rw [← (Finsupp.single i k + n).mul_prod_erase' i _ (fun i ↦ dp_zero (m := v i))]
        simp
      | add x y hxmem hymem hx hy =>
        rw [add_mul]
        exact Submodule.add_mem _ hx hy
      | smul r x hxmem hx =>
        rw [smul_mul_assoc]
        exact smul_mem _ _ hx
    | add m n hm_mem hn_mem hm hn =>
      rw [dp_add, mul_sum]
      apply sum_mem (fun c hc ↦ ?_)
      rw [← mul_assoc]
      exact hn (x * dp R c.1 m) c.2 (hm x c.1 hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c8edb599c09fbeac461dbedf7864010de1ebb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
