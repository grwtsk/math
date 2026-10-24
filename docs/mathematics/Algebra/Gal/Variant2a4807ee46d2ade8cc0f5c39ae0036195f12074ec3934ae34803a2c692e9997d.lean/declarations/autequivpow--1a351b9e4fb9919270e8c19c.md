# autEquivPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b6e04c39a867617ad3e633d58001d41f5c4fb703357654ea6846904cc1dc580",
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
  "slug": "autequivpow--1a351b9e4fb9919270e8c19c",
  "source": {
    "blob": "ef2d433971d719feeb35931bfdcf576ae9bc9659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 91,
    "path": "GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a351b9e4fb9919270e8c19c08bfbba927b434f28d6694c2a16509289b30f700",
  "verification": {
    "reference": "docs/verification/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b6e04c39a867617ad3e633d58001d41f5c4fb703357654ea6846904cc1dc580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def autEquivPow (h : Irreducible (cyclotomic n K)) : (L ≃ₐ[K] L) ≃* (ZMod n)ˣ :=
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
      simp only [AlgHom.coe_coe]
      rw [PowerBasis.equivOfMinpoly_gen]
      simp only [IsPrimitiveRoot.powerBasis_gen, IsPrimitiveRoot.autToPow_spec]
    right_inv := fun x => by
      simp only [MonoidHom.toFun_eq_coe]
      generalize_proofs _ _ h
      have key := hζ.autToPow_spec K ((hζ.powerBasis K).equivOfMinpoly ((hμ x).powerBasis K) h)
      have := (hζ.powerBasis K).equivOfMinpoly_gen ((hμ x).powerBasis K) h
      rw [hζ.powerBasis_gen K] at this
      rw [this, IsPrimitiveRoot.powerBasis_gen] at key
      -- Porting note: was
      -- `rw ← hζ.coe_to_roots_of_unity_coe at key {occs := occurrences.pos [1, 5]}`.
      conv at key =>
        congr; congr
        rw [← hζ.val_toRootsOfUnity_coe]
        rfl; rfl
        rw [← hζ.val_toRootsOfUnity_coe]
      simp only [← rootsOfUnity.coe_pow] at key
      replace key := rootsOfUnity.coe_injective key
      rw [pow_eq_pow_iff_modEq, ← Subgroup.orderOf_coe, ← orderOf_units, hζ.val_toRootsOfUnity_coe,
        ← (zeta_spec n K L).eq_orderOf, ← ZMod.eq_iff_modEq_nat] at key
      simp only [ZMod.natCast_val, ZMod.cast_id', id] at key
      exact Units.ext key }

variable (h : Irreducible (cyclotomic n K)) {L}

/-- Maps `μ` to the `AlgEquiv` that sends `IsCyclotomicExtension.zeta` to `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef2d433971d719feeb35931bfdcf576ae9bc9659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
