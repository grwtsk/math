# tensorProductComm_eq_refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07b3e6e2-5066-b5ec-e420-aca518d49af0",
  "kind": "theorem",
  "lexical_name": "tensorProductComm_eq_refl",
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
  "slug": "tensorproductcomm-eq-refl--129b8957be9f29f7b98b1644",
  "source": {
    "blob": "6b4966598f5e62181e195c60e1f0d3fd47894705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 637,
    "path": "GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:129b8957be9f29f7b98b164476ac54bf4c74dccf5021da817764fb103de32719",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07b3e6e2-5066-b5ec-e420-aca518d49af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorProductComm_eq_refl : TensorProduct.comm R M M = .refl .. := by
  let f (P : Ideal R) [P.IsMaximal] := LocalizedModule.mkLinearMap P.primeCompl M
  let ff (P : Ideal R) [P.IsMaximal] := TensorProduct.map (f P) (f P)
  refine LinearEquiv.toLinearMap_injective <| LinearMap.eq_of_localization_maximal _ ff _ ff _ _
    fun P _ ↦ .trans (b := (TensorProduct.comm ..).toLinearMap) ?_ ?_
  · apply IsLocalizedModule.linearMap_ext P.primeCompl (ff P) (ff P)
    ext; exact IsLocalizedModule.map_apply _ (ff P) ..
  let Rp := Localization P.primeCompl
  have ⟨e⟩ := free_iff_linearEquiv.mp (inferInstance : Free Rp (LocalizedModule P.primeCompl M))
  have e := e.restrictScalars R
  ext x y
  refine (congr e e ≪≫ₗ equivOfCompatibleSMul Rp ..).injective ?_
  suffices e y ⊗ₜ[Rp] e x = e x ⊗ₜ e y by simpa [equivOfCompatibleSMul]
  conv_lhs => rw [← mul_one (e y), ← smul_eq_mul, smul_tmul, smul_eq_mul,
    mul_comm, ← smul_eq_mul, ← smul_tmul, smul_eq_mul, mul_one]

variable {R M} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4966598f5e62181e195c60e1f0d3fd47894705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
