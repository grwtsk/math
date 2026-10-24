# quotEquivPowQuotPowSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26edd6c070ed029c181b4701b31a6382db5777d0921670b1425d35ba1231a1f1",
  "kind": "def",
  "lexical_name": "quotEquivPowQuotPowSucc",
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
  "slug": "quotequivpowquotpowsucc--68adbd2548f2725912761ebe",
  "source": {
    "blob": "a6878dfffaffeb7d01c2cfb63c2b85ef32ba7c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 48,
    "path": "GRWTSK/Algebra/IsPrincipalPowQuotient/Variant18abfb4476a44768dedc94bb4d712ec42300ade72a789fe549ed9cb584ce267b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68adbd2548f2725912761ebe948e4ca574035bb8910f31a098c9fab8c4205e2e",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrincipalPowQuotient/Variant18abfb4476a44768dedc94bb4d712ec42300ade72a789fe549ed9cb584ce267b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26edd6c070ed029c181b4701b31a6382db5777d0921670b1425d35ba1231a1f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotEquivPowQuotPowSucc (h : I.IsPrincipal) (h' : I ≠ ⊥) (n : ℕ) :
    (R ⧸ I) ≃ₗ[R] (I ^ n : Ideal R) ⧸ (I • ⊤ : Submodule R (I ^ n : Ideal R)) := by
  let f : (I ^ n : Ideal R) →ₗ[R] (I ^ n : Ideal R) ⧸ (I • ⊤ : Submodule R (I ^ n : Ideal R)) :=
    Submodule.mkQ _
  let ϖ := h.principal.choose
  have hI : I = Ideal.span {ϖ} := h.principal.choose_spec
  have hϖ : ϖ ^ n ∈ I ^ n := hI ▸ (Ideal.pow_mem_pow (Ideal.mem_span_singleton_self _) n)
  let g : R →ₗ[R] (I ^ n : Ideal R) := (LinearMap.mulRight R ϖ^n).codRestrict _ fun x ↦ by
    simp only [LinearMap.pow_mulRight, LinearMap.mulRight_apply, Ideal.submodule_span_eq]
    -- TODO: change argument of Ideal.pow_mem_of_mem
    exact Ideal.mul_mem_left _ _ hϖ
  have : I = LinearMap.ker (f.comp g) := by
    ext x
    simp only [LinearMap.codRestrict, LinearMap.pow_mulRight, LinearMap.mulRight_apply,
      LinearMap.mem_ker, LinearMap.coe_comp, LinearMap.coe_mk, AddHom.coe_mk, Function.comp_apply,
      Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, Submodule.mem_smul_top_iff, smul_eq_mul,
      f, g]
    constructor <;> intro hx
    · exact Submodule.mul_mem_mul hx hϖ
    · rw [← pow_succ', hI, Ideal.span_singleton_pow, Ideal.mem_span_singleton] at hx
      obtain ⟨y, hy⟩ := hx
      rw [mul_comm, pow_succ, mul_assoc, mul_right_inj' (pow_ne_zero _ _)] at hy
      · rw [hI, Ideal.mem_span_singleton]
        exact ⟨y, hy⟩
      · contrapose! h'
        rw [hI, h', Ideal.span_singleton_eq_bot]
  let e : (R ⧸ I) ≃ₗ[R] R ⧸ (LinearMap.ker (f.comp g)) :=
    Submodule.quotEquivOfEq I (LinearMap.ker (f ∘ₗ g)) this
  refine e.trans ((f.comp g).quotKerEquivOfSurjective ?_)
  refine (Submodule.mkQ_surjective _).comp ?_
  rintro ⟨x, hx⟩
  rw [hI, Ideal.span_singleton_pow, Ideal.mem_span_singleton] at hx
  refine hx.imp ?_
  simp [g, LinearMap.codRestrict, eq_comm, mul_comm]

/-- For a principal ideal `I`, `R ⧸ I ≃ I ^ n ⧸ I ^ (n + 1)`. Supplied as a plain equiv to bypass
typeclass synthesis issues on complex `Module` goals.  To convert into a form
that uses the ideal of `R ⧸ I ^ (n + 1)`, compose with
`Ideal.powQuotPowSuccEquivMapMkPowSuccPow`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrincipalPowQuotient/Variant18abfb4476a44768dedc94bb4d712ec42300ade72a789fe549ed9cb584ce267b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrincipalPowQuotient/Variant18abfb4476a44768dedc94bb4d712ec42300ade72a789fe549ed9cb584ce267b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6878dfffaffeb7d01c2cfb63c2b85ef32ba7c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
