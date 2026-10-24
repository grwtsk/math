# autEquivPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e58012eba90a834829b714d1df33c62246c4ea164bb36a7cdb17ba8a3e8b47b3",
  "kind": "def",
  "lexical_name": "autEquivPow",
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
  "slug": "autequivpow--ce8006196ca1eff7501d0f9e",
  "source": {
    "blob": "1f3aebcb5b203e621a7da2cebcac931285e3c2a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 111,
    "path": "GRWTSK/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce8006196ca1eff7501d0f9e191981175b1f0b8018cec1970c73ab2e1be42b33",
  "verification": {
    "reference": "docs/verification/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e58012eba90a834829b714d1df33c62246c4ea164bb36a7cdb17ba8a3e8b47b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def autEquivPow : (L ≃ₐ[K] L) ≃* (ZMod n)ˣ :=
  let hζ := zeta_spec n K L
  let hμ t := hζ.pow_of_coprime _ (ZMod.val_coe_unit_coprime t)
  { (zeta_spec n K L).autToPow K with
    invFun := fun t =>
      (hζ.powerBasis K).equivOfMinpoly ((hμ t).powerBasis K)
        (by
          haveI := IsCyclotomicExtension.neZero' n K L
          simp only [IsPrimitiveRoot.powerBasis_gen]
          have hr :=
            IsPrimitiveRoot.minpoly_eq_cyclotomic_of_irreducible
              ((zeta_spec n K L).pow_of_coprime _ (ZMod.val_coe_unit_coprime t)) h
          exact ((zeta_spec n K L).minpoly_eq_cyclotomic_of_irreducible h).symm.trans hr)
    left_inv := fun f => by
      simp only [MonoidHom.toFun_eq_coe]
      apply AlgEquiv.coe_algHom_injective
      apply (hζ.powerBasis K).algHom_ext
-- Porting note: the proof is slightly different because of coercions.
      simp only [AlgHom.coe_coe]
      rw [PowerBasis.equivOfMinpoly_gen]
      simp only [IsPrimitiveRoot.powerBasis_gen, IsPrimitiveRoot.autToPow_spec]
    right_inv := fun x => by
      simp only [MonoidHom.toFun_eq_coe]
      generalize_proofs _ h
      have key := hζ.autToPow_spec K ((hζ.powerBasis K).equivOfMinpoly ((hμ x).powerBasis K) h)
      have := (hζ.powerBasis K).equivOfMinpoly_gen ((hμ x).powerBasis K) h
      rw [hζ.powerBasis_gen K] at this
      rw [this, IsPrimitiveRoot.powerBasis_gen] at key
-- Porting note: was `rw ← hζ.coe_to_roots_of_unity_coe at key {occs := occurrences.pos [1, 5]}`.
      conv at key =>
        congr; congr
        rw [← hζ.val_toRootsOfUnity_coe]
        rfl; rfl
        rw [← hζ.val_toRootsOfUnity_coe]
      simp only [← rootsOfUnity.coe_pow] at key
      replace key := rootsOfUnity.coe_injective key
      rw [pow_eq_pow_iff_modEq, ← orderOf_subgroup, ← orderOf_units, hζ.val_toRootsOfUnity_coe, ←
        (zeta_spec n K L).eq_orderOf, ← ZMod.eq_iff_modEq_nat] at key
      simp only [ZMod.nat_cast_val, ZMod.cast_id', id.def] at key
      exact Units.ext key }
#align is_cyclotomic_extension.aut_equiv_pow IsCyclotomicExtension.autEquivPow

variable {L}

/-- Maps `μ` to the `AlgEquiv` that sends `IsCyclotomicExtension.zeta` to `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f3aebcb5b203e621a7da2cebcac931285e3c2a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
