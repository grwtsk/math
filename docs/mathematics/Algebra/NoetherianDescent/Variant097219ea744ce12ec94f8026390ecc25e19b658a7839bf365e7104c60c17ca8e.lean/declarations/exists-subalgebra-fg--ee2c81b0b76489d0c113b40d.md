# exists_subalgebra_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9efeefd-02db-ad14-508b-fa3f4975462f",
  "kind": "theorem",
  "lexical_name": "exists_subalgebra_fg",
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
  "slug": "exists-subalgebra-fg--ee2c81b0b76489d0c113b40d",
  "source": {
    "blob": "2755b2b19d3f590bf08e0342c37f71ba9a7974d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 222,
    "path": "GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee2c81b0b76489d0c113b40d4674ebed2de3a1e9cf302c6fbb0cbb62002d8a6a",
  "verification": {
    "reference": "docs/verification/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9efeefd-02db-ad14-508b-fa3f4975462f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem exists_subalgebra_fg [Smooth A B] :
    ∃ (A₀ : Subalgebra R A) (B₀ : Type u) (_ : CommRing B₀) (_ : Algebra A₀ B₀),
      A₀.FG ∧ Smooth A₀ B₀ ∧ Nonempty (B ≃ₐ[A] A ⊗[A₀] B₀) := by
  let P := Presentation.ofFinitePresentation A B
  let f : P.Ring →ₐ[A] B := IsScalarTower.toAlgHom _ _ _
  have hkerf : RingHom.ker f = Ideal.span (.range P.relation) :=
    P.span_range_relation_eq_ker.symm
  obtain ⟨(σ : B →ₐ[A] MvPolynomial _ A ⧸ RingHom.ker f ^ 2), hsig⟩ :=
    (FormallySmooth.iff_split_surjection f P.algebraMap_surjective).mp inferInstance
  have (i : _) := Ideal.Quotient.mk_surjective (σ <| P.val i)
  choose h hh using this
  have hdiag : (Ideal.Quotient.mkₐ _ _).comp (aeval h) = σ.comp (aeval P.val) :=
    algHom_ext (by simp [hh])
  have (j : _) : Ideal.Quotient.mk (RingHom.ker f ^ 2) (aeval h (P.relation j)) = 0 := by
    suffices ho : σ (aeval P.val (P.relation j)) = 0 by
      convert! ho
      exact congr($hdiag _)
    simp
  simp_rw [Ideal.Quotient.eq_zero_iff_mem, hkerf,
    Ideal.mem_span_pow_iff_exists_isHomogeneous] at this
  choose p homog hp using this
  have hsig (i : _) : f (h i) = P.val i := by
    rw [← AlgHom.kerSquareLift_mk]
    -- Reducible def-eq issues caused by `RingHom.ker f.toRingHom` discrepancies
    -- Can be fixed after #25138.
    exact hh i ▸ congr($hsig (P.val i))
  have (i : Fin (Presentation.ofFinitePresentationVars A B)) :
      h i - X i ∈ Ideal.span (.range P.relation) := by
    simpa [P.span_range_relation_eq_ker, sub_eq_zero, f] using hsig i
  simp_rw [Ideal.mem_span_iff_exists_isHomogeneous] at this
  choose q hqhom hq using this
  let D : DescentAux A B :=
    { vars := _, rels := _, P := P, σ := σ, p := p, h := h, hphom := homog, hp := hp,
      q := q, hqhom := hqhom, hq := hq }
  have : P.HasCoeffs (D.subalgebra R) := D.hasCoeffs R
  obtain ⟨σ₀, hσ₀⟩ := D.exists_kerSquareLift_comp_eq_id R
  exact ⟨D.subalgebra R, P.ModelOfHasCoeffs (D.subalgebra R), inferInstance, inferInstance,
    D.fg_subalgebra R, ⟨.of_split _ σ₀ hσ₀, inferInstance⟩,
    ⟨(P.tensorModelOfHasCoeffsEquiv (D.subalgebra R)).symm⟩⟩

/--
Let `A` be an `R`-algebra. If `B` is a smooth `A`-algebra, there exists an
`R`-algebra of finite type `A₀` and a smooth `A₀`-algebra `B₀` such that `B ≃ₐ A ⊗[A₀] B₀`
with `A₀ → A` injective.
See `Algebra.Smooth.exists_subalgebra_fg` for a version in terms of `Subalgebra`.
-/
@[stacks 00TP]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2755b2b19d3f590bf08e0342c37f71ba9a7974d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
