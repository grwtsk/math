# instIsIrreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cd1da39d5c9f69aa9fc39e5f81de25da3b83425527f9484634ec90ecc2aefdd",
  "kind": "instance",
  "lexical_name": "instIsIrreducible",
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
  "slug": "instisirreducible--7a55adab0b156ef98412a977",
  "source": {
    "blob": "c750192c7811a4fb2f6beb84906214afdb067372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 367,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a55adab0b156ef98412a977d2b8713cee445d622b793f2a667500685608cc4a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cd1da39d5c9f69aa9fc39e5f81de25da3b83425527f9484634ec90ecc2aefdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsIrreducible [Nonempty ι] :
    LieModule.IsIrreducible K (lieAlgebra b) (b.support ⊕ ι → K) := by
  refine LieModule.IsIrreducible.mk fun U hU ↦ ?_
  suffices ∃ i, v b i ∈ U by obtain ⟨i, hi⟩ := this; exact instIsIrreducible_aux₂ hi
  let U' : LieSubmodule K H (b.support ⊕ ι → K) := { U with lie_mem := U.lie_mem }
  apply instIsIrreducible_aux₁ U'
  contrapose hU
  replace hU : U ≤ span K (range (u (b := b))) := by rwa [← coe_genWeightSpace_zero_eq_span_range_u]
  refine (LieSubmodule.eq_bot_iff _).mpr fun x hx ↦ ?_
  obtain ⟨c, hc⟩ : ∃ c : b.support → K, ∑ i, c i • u i = x :=
    (mem_span_range_iff_exists_fun K).mp <| hU hx
  suffices c = 0 by simp [this, ← hc]
  have hCM : (4 - b.cartanMatrix).det ≠ 0 :=
    RootPairing.Base.det_four_sub_cartanMatrix_ne_zero b
  contrapose! hCM
  suffices ((Int.castRingHom K).mapMatrix (4 - b.cartanMatrix)).det = 0 by
    simpa only [← RingHom.map_det, eq_intCast, Int.cast_eq_zero] using this
  rw [← exists_mulVec_eq_zero_iff]
  suffices (b.cartanMatrix.map abs).map (↑) *ᵥ c = 0 from ⟨c, hCM, by simpa using this⟩
  ext j
  suffices ∑ k, c k * |b.cartanMatrix j k| = 0 by
    simpa [mulVec_eq_sum, -Base.cartanMatrix_map_abs]
  by_contra contra
  have key : v b j ∈ U := by
    have : ⁅e j, x⁆ ∈ U := U.lie_mem (x := ⟨e j, e_mem_lieAlgebra j⟩) hx
    have aux (k : b.support) : ⁅e j, u k⁆ = |b.cartanMatrix j k| • v b j := e_lie_u j k
    simp_rw [← hc, lie_sum, lie_smul, aux, smul_comm (M := K), ← smul_assoc, ← Finset.sum_smul,
      zsmul_eq_mul, mul_comm, ← LieSubmodule.mem_toSubmodule, U.smul_mem_iff contra] at this
    assumption
  have : v b j ∉ U := fun hj ↦ by simpa [v] using apply_inr_eq_zero_of_mem_span_range_u b j (hU hj)
  contradiction

/-- Lemma 4.3 from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c750192c7811a4fb2f6beb84906214afdb067372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
