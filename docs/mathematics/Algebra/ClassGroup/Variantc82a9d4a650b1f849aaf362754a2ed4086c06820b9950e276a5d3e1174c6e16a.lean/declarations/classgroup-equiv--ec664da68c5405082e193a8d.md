# ClassGroup.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ee57cb5eba06fdcd1e91f022d2137d8784b9c84712ec5ef95d5ae576658b6c0",
  "kind": "def",
  "lexical_name": "ClassGroup.equiv",
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
  "slug": "classgroup-equiv--ec664da68c5405082e193a8d",
  "source": {
    "blob": "02e5f881947fef2b44892ea2db997205708cabf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 167,
    "path": "GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec664da68c5405082e193a8d4f3aac2371384ebd47044575c971c9d38d87d80b",
  "verification": {
    "reference": "docs/verification/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ee57cb5eba06fdcd1e91f022d2137d8784b9c84712ec5ef95d5ae576658b6c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ClassGroup.equiv :
    ClassGroup R ≃* (FractionalIdeal R⁰ K)ˣ ⧸ (toPrincipalIdeal R K).range := by
  haveI : Subgroup.map
    (Units.mapEquiv (canonicalEquiv R⁰ (FractionRing R) K).toMulEquiv).toMonoidHom
    (toPrincipalIdeal R (FractionRing R)).range = (toPrincipalIdeal R K).range := by
    ext I
    simp only [Subgroup.mem_map, mem_principal_ideals_iff]
    constructor
    · rintro ⟨I, ⟨x, hx⟩, rfl⟩
      refine ⟨FractionRing.algEquiv R K x, ?_⟩
      simp only [RingEquiv.toMulEquiv_eq_coe, MulEquiv.coe_toMonoidHom, coe_mapEquiv, ← hx,
        RingEquiv.coe_toMulEquiv, canonicalEquiv_spanSingleton]
      rfl
    · rintro ⟨x, hx⟩
      refine ⟨Units.mapEquiv (canonicalEquiv R⁰ K (FractionRing R)).toMulEquiv I,
        ⟨(FractionRing.algEquiv R K).symm x, ?_⟩, Units.ext ?_⟩
      · simp only [RingEquiv.toMulEquiv_eq_coe, coe_mapEquiv, ← hx, RingEquiv.coe_toMulEquiv,
          canonicalEquiv_spanSingleton]
        rfl
      · simp only [RingEquiv.toMulEquiv_eq_coe, MulEquiv.coe_toMonoidHom, coe_mapEquiv,
          RingEquiv.coe_toMulEquiv, canonicalEquiv_canonicalEquiv, canonicalEquiv_self,
          RingEquiv.refl_apply]
  exact @QuotientGroup.congr (FractionalIdeal R⁰ (FractionRing R))ˣ _ (FractionalIdeal R⁰ K)ˣ _
    (toPrincipalIdeal R (FractionRing R)).range (toPrincipalIdeal R K).range _ _
    (Units.mapEquiv (FractionalIdeal.canonicalEquiv R⁰ (FractionRing R) K).toMulEquiv) this

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02e5f881947fef2b44892ea2db997205708cabf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
