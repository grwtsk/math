# natAbs_discr_eq_natAbs_discr_pow_mul_natAbs_discr_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bba52a8-5c8b-da3a-c39b-cbd423503108",
  "kind": "theorem",
  "lexical_name": "natAbs_discr_eq_natAbs_discr_pow_mul_natAbs_discr_pow",
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
  "slug": "natabs-discr-eq-natabs-discr-pow-mul-natabs-discr-pow--7af78ebe99e7698b49266039",
  "source": {
    "blob": "c704435797008f41895577f65f1cf04d114bd5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7af78ebe99e7698b49266039e35a89709b362c4ab969b770327fcd290f8d2083",
  "verification": {
    "reference": "docs/verification/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bba52a8-5c8b-da3a-c39b-cbd423503108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_discr_eq_natAbs_discr_pow_mul_natAbs_discr_pow (K₁ K₂ : IntermediateField ℚ L)
    (h₁ : K₁.LinearDisjoint K₂) (h₂ : K₁ ⊔ K₂ = ⊤)
    (h₃ : IsCoprime ((differentIdeal ℤ (𝓞 K₁)).map (algebraMap (𝓞 K₁) (𝓞 L)))
      ((differentIdeal ℤ (𝓞 K₂)).map (algebraMap (𝓞 K₂) (𝓞 L)))) :
    (discr L).natAbs =
      (discr K₁).natAbs ^ Module.finrank ℚ K₂ * (discr K₂).natAbs ^ Module.finrank ℚ K₁ := by
  let _ : Algebra (FractionRing (𝓞 K₁)) (FractionRing (𝓞 L)) := FractionRing.liftAlgebra _ _
  have h_main := natAbs_discr_eq_absNorm_differentIdeal_mul_natAbs_discr_pow K₂ (𝓞 K₂) L (𝓞 L)
  rwa [differentIdeal_eq_map_differentIdeal ℤ (𝓞 L) (𝓞 K₂) (𝓞 K₁) (F₁ := K₂) (F₂ := K₁)
    (by rwa [linearDisjoint_comm]) (by rwa [sup_comm]) (by rwa [isCoprime_comm]),
    Ideal.absNorm_algebraMap, absNorm_differentIdeal K₁, h₁.finrank_right_eq_finrank h₂,
    ← IsFractionRing.finrank_eq (𝓞 K₁) K₁ (𝓞 L) L, h₁.finrank_left_eq_finrank h₂] at h_main

end

/-- Also see `not_dvd_discr_iff_forall_mem` for a slightly easier to use RHS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704435797008f41895577f65f1cf04d114bd5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
