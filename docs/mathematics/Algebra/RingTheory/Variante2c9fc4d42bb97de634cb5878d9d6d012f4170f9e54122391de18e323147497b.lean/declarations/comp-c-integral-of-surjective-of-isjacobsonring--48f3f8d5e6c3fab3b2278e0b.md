# comp_C_integral_of_surjective_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9613649e0abfe831ca64b6019ba7500d3c2e9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 640,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:196ab4b2-5731-281d-37e0-491ecbcd5cd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41e9e997-fe59-ae7a-50c2-81ef2b7f2223",
  "kind": "theorem",
  "lexical_name": "comp_C_integral_of_surjective_of_isJacobsonRing",
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
  "slug": "comp-c-integral-of-surjective-of-isjacobsonring--48f3f8d5e6c3fab3b2278e0b",
  "source": {
    "blob": "6a9613649e0abfe831ca64b6019ba7500d3c2e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 640,
    "path": "GRWTSK/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48f3f8d5e6c3fab3b2278e0b50fe6cf4978cd4c894e743363a10714e5914a99e",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41e9e997-fe59-ae7a-50c2-81ef2b7f2223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_C_integral_of_surjective_of_isJacobsonRing {R : Type*} [CommRing R] [IsJacobsonRing R]
    {σ : Type*} [Finite σ] {S : Type*} [Field S] (f : MvPolynomial σ R →+* S)
    (hf : Function.Surjective ↑f) : (f.comp C).IsIntegral := by
  cases nonempty_fintype σ
  have e := (Fintype.equivFin σ).symm
  let f' : MvPolynomial (Fin _) R →+* S := f.comp (renameEquiv R e).toRingEquiv.toRingHom
  have hf' := Function.Surjective.comp hf (renameEquiv R e).surjective
  change Function.Surjective ↑f' at hf'
  have : (f'.comp C).IsIntegral := by
    have : (RingHom.ker f').IsMaximal := ker_isMaximal_of_surjective f' hf'
    let g : MvPolynomial _ R ⧸ (RingHom.ker f') →+* S :=
      Ideal.Quotient.lift (RingHom.ker f') f' fun _ h => h
    have hfg : g.comp (Ideal.Quotient.mk (RingHom.ker f')) = f' :=
      ringHom_ext (fun r => rfl) fun i => rfl
    rw [← hfg, RingHom.comp_assoc]
    refine (quotient_mk_comp_C_isIntegral_of_isJacobsonRing (RingHom.ker f')).trans _ g
      (g.isIntegral_of_surjective ?_)
    rw [← hfg, coe_comp] at hf'
    exact Function.Surjective.of_comp hf'
  rw [RingHom.comp_assoc] at this
  convert! this
  refine RingHom.ext fun x => ?_
  exact ((renameEquiv R e).commutes' x).symm

end MvPolynomial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9613649e0abfe831ca64b6019ba7500d3c2e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
