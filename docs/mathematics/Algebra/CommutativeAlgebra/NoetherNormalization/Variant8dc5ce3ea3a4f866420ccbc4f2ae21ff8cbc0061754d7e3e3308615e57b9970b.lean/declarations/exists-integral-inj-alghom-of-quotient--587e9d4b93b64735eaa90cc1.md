# exists_integral_inj_algHom_of_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e925f6fb8cc35040a60733e0bd6105f58a49685a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dc5ce3ea3a4f866420ccbc4f2ae21ff8cbc0061754d7e3e3308615e57b9970b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfdd9998-900a-8e15-4897-372929ebd763",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa81797a-3e1c-db4f-3f43-a07184430d82",
  "kind": "theorem",
  "lexical_name": "exists_integral_inj_algHom_of_quotient",
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
  "slug": "exists-integral-inj-alghom-of-quotient--587e9d4b93b64735eaa90cc1",
  "source": {
    "blob": "e925f6fb8cc35040a60733e0bd6105f58a49685a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 238,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variant8dc5ce3ea3a4f866420ccbc4f2ae21ff8cbc0061754d7e3e3308615e57b9970b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:587e9d4b93b64735eaa90cc16780a987463a66240a22db32afcedcaa3cd14675",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variant8dc5ce3ea3a4f866420ccbc4f2ae21ff8cbc0061754d7e3e3308615e57b9970b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa81797a-3e1c-db4f-3f43-a07184430d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_integral_inj_algHom_of_quotient (I : Ideal (MvPolynomial (Fin n) k))
    (hi : I ≠ ⊤) : ∃ s ≤ n, ∃ g : (MvPolynomial (Fin s) k) →ₐ[k] ((MvPolynomial (Fin n) k) ⧸ I),
    Function.Injective g ∧ g.IsIntegral := by
  induction n with
  | zero =>
    refine ⟨0, le_rfl, Quotient.mkₐ k I, fun a b hab ↦ ?_,
      isIntegral_of_surjective _ (Quotient.mkₐ_surjective k I)⟩
    rw [Quotient.mkₐ_eq_mk, Ideal.Quotient.eq] at hab
    by_contra ne
    have eq := eq_C_of_isEmpty (a - b)
    have ne : (a - b).coeff 0 ≠ 0 := fun h ↦ h ▸ eq ▸ sub_ne_zero_of_ne ne <| map_zero _
    obtain ⟨c, _, eqr⟩ := isUnit_iff_exists.mp ne.isUnit
    have one : c • (a - b) = 1 := by
      rw [MvPolynomial.smul_eq_C_mul, eq, ← map_mul, eqr, MvPolynomial.C_1]
    exact hi ((eq_top_iff_one I).mpr (one ▸ I.smul_of_tower_mem c hab))
  | succ d hd =>
    by_cases eqi : I = 0
    · have bij : Function.Bijective (Quotient.mkₐ k I) :=
        (Quotient.mk_bijective_iff_eq_bot I).mpr eqi
      exact ⟨d + 1, le_rfl, _, bij.1, isIntegral_of_surjective _ bij.2⟩
    · obtain ⟨f, fi, fne⟩ := Submodule.exists_mem_ne_zero_of_ne_bot eqi
      set ϕ := kerLiftAlg <| hom2 f I
      have := Quotient.nontrivial_iff.mpr hi
      obtain ⟨s, _, g, injg, intg⟩ := hd (ker <| hom2 f I) (ker_ne_top <| hom2 f I)
      exact ⟨s, by lia, ϕ.comp g, (ϕ.coe_comp g) ▸ (kerLiftAlg_injective _).comp injg,
        intg.trans g.toRingHom ϕ.toRingHom (hom2_isIntegral f I fne fi).kerLift⟩

variable (k R : Type*) [Field k] [CommRing R] [Nontrivial R] [a : Algebra k R]
  [fin : Algebra.FiniteType k R]

/-- **Noether normalization lemma**
For a finitely generated algebra `A` over a field `k`,
there exists a natural number `s` and an injective homomorphism
from `k[X_0, X_1, ..., X_(s-1)]` to `A` such that `A` is integral over `k[X_0, X_1, ..., X_(s-1)]`.
-/
@[stacks 00OW]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variant8dc5ce3ea3a4f866420ccbc4f2ae21ff8cbc0061754d7e3e3308615e57b9970b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variant8dc5ce3ea3a4f866420ccbc4f2ae21ff8cbc0061754d7e3e3308615e57b9970b.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e925f6fb8cc35040a60733e0bd6105f58a49685a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
