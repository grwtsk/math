# mem_zpowers_galEquivZMod_of_mem_stabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13765ff7-bb87-43c3-cc8b-b9bc2c61d041",
  "kind": "theorem",
  "lexical_name": "mem_zpowers_galEquivZMod_of_mem_stabilizer",
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
  "slug": "mem-zpowers-galequivzmod-of-mem-stabilizer--60713fa6b0fd634210223a57",
  "source": {
    "blob": "f0621d0eb3e646b0912432e86baa0800bb0bd0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 121,
    "path": "GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60713fa6b0fd634210223a577459233e527e100d2395bb66a5e93061438ba5a4",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13765ff7-bb87-43c3-cc8b-b9bc2c61d041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_zpowers_galEquivZMod_of_mem_stabilizer {σ : Gal(K/ℚ)} (hσ : σ ∈ stabilizer Gal(K/ℚ) P) :
    galEquivZMod n K σ ∈ Subgroup.zpowers (ZMod.unitOfCoprime p hn) := by
  have hζ := IsCyclotomicExtension.zeta_spec n ℚ K
  let τ := IsFractionRing.stabilizerHom Gal(K/ℚ) (Ideal.span {(p : ℤ)}) P
     (ℤ ⧸ span {(p : ℤ)}) (𝓞 K ⧸ P) ⟨σ, hσ⟩
  have : CharP (ℤ ⧸ span {(p : ℤ)}) p := ringChar.of_eq <| Int.ringChar_idealQuot p
  obtain ⟨i, hi⟩ := FiniteField.exists_forall_apply_eq_pow (ℤ ⧸ span {(p : ℤ)}) p (𝓞 K ⧸ P) τ
  refine ⟨i, ?_⟩
  have h₀ : IsPrimitiveRoot (Ideal.Quotient.mk P hζ.toInteger) n := by
    refine hζ.toInteger_isPrimitiveRoot.idealQuotient_mk
      (by simpa using IsMaximal.ne_top inferInstance) ?_
    rw [← pow_inertiaDeg p]
    exact Nat.Coprime.pow_left _ hn
  have h₁ := IsFractionRing.stabilizerHom_apply_apply_mk Gal(K/ℚ) (Ideal.span {(p : ℤ)}) P
      (ℤ ⧸ span {(p : ℤ)}) (𝓞 K ⧸ P) ⟨σ, hσ⟩ hζ.toInteger
  simp only [Algebra.algebraMap_self, RingHomCompTriple.comp_apply] at h₁
  specialize hi (Ideal.Quotient.mk P hζ.toInteger)
  rwa [h₁, Int.card_ideal_quot, galEquivZMod_smul_of_pow_eq n _ _
    (hζ.toInteger_isPrimitiveRoot.pow_eq_one), map_pow, (h₀.isOfFinOrder (NeZero.ne _)).pow_inj_mod,
    ← h₀.eq_orderOf, ← ZMod.natCast_eq_natCast_iff', Nat.cast_pow, ← ZMod.coe_unitOfCoprime p hn,
    ← Units.val_pow_eq_pow_val, ZMod.natCast_zmod_val, ← Units.ext_iff, eq_comm] at hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0621d0eb3e646b0912432e86baa0800bb0bd0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
