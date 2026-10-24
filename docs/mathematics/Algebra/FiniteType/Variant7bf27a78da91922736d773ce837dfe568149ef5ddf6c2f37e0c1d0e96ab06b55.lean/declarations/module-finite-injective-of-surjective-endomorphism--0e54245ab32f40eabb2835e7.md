# Module.Finite.injective_of_surjective_endomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16f79ffe-803c-b1ed-5771-e6d50d5f0264",
  "kind": "theorem",
  "lexical_name": "Module.Finite.injective_of_surjective_endomorphism",
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
  "slug": "module-finite-injective-of-surjective-endomorphism--0e54245ab32f40eabb2835e7",
  "source": {
    "blob": "1dda6c9206e6187b9b13d614c8cda4b511f625ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 676,
    "path": "GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e54245ab32f40eabb2835e727c528326a7ea39e3658b346027154b396339022",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f79ffe-803c-b1ed-5771-e6d50d5f0264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Finite.injective_of_surjective_endomorphism [hfg : Finite R M]
    (f_surj : Function.Surjective f) : Function.Injective f := by
  let _ := modulePolynomialOfEndo f
  haveI : IsScalarTower R R[X] M := modulePolynomialOfEndo.isScalarTower f
  have hfgpoly : Finite R[X] M := Finite.of_restrictScalars_finite R _ _
  have X_mul : ∀ o, (X : R[X]) • o = f o := by
    intro
    rw [modulePolynomialOfEndo_smul_def, aeval_X]
  have : (⊤ : Submodule R[X] M) ≤ Ideal.span {(X : R[X])} • ⊤ := by
    intro a ha
    obtain ⟨y, rfl⟩ := f_surj a
    rw [← X_mul y]
    exact Submodule.smul_mem_smul (Ideal.mem_span_singleton.mpr (dvd_refl _)) trivial
  obtain ⟨F, hFa, hFb⟩ :=
    Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul _ (⊤ : Submodule R[X] M)
      (finite_def.mp hfgpoly) this
  rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro m hm
  rw [Ideal.mem_span_singleton'] at hFa
  obtain ⟨G, hG⟩ := hFa
  suffices (F - 1) • m = 0 by
    have Fmzero := hFb m (by simp)
    rwa [← sub_add_cancel F 1, add_smul, one_smul, this, zero_add] at Fmzero
  rw [← hG, mul_smul, X_mul m, hm, smul_zero]
#align module.finite.injective_of_surjective_endomorphism Module.Finite.injective_of_surjective_endomorphism

end

end Vasconcelos
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dda6c9206e6187b9b13d614c8cda4b511f625ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
