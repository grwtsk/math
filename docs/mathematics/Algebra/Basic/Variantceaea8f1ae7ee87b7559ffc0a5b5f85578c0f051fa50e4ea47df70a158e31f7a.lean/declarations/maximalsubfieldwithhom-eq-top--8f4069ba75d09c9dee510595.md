# maximalSubfieldWithHom_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25567607-576c-23cb-bb2d-6e81d9ce12f8",
  "kind": "theorem",
  "lexical_name": "maximalSubfieldWithHom_eq_top",
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
  "slug": "maximalsubfieldwithhom-eq-top--8f4069ba75d09c9dee510595",
  "source": {
    "blob": "d05c2dddcddcc926e98a56952b70c6dbbde87a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 316,
    "path": "GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4069ba75d09c9dee510595cb79ab5bbfb1b0951d234653a3ade73fdce94423",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25567607-576c-23cb-bb2d-6e81d9ce12f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximalSubfieldWithHom_eq_top : (maximalSubfieldWithHom K L M).carrier = ⊤ := by
  rw [eq_top_iff]
  intro x _
  let N : Subalgebra K L := (maximalSubfieldWithHom K L M).carrier
  letI : Field N := (Subalgebra.isField_of_algebraic N hL).toField
  letI : Algebra N M := (maximalSubfieldWithHom K L M).emb.toRingHom.toAlgebra
  obtain ⟨y, hy⟩ := IsAlgClosed.exists_aeval_eq_zero M (minpoly N x) <|
    (minpoly.degree_pos
      (isAlgebraic_iff_isIntegral.1 (Algebra.isAlgebraic_of_larger_base _ hL x))).ne'
  let O : Subalgebra N L := Algebra.adjoin N {(x : L)}
  letI : Algebra N O := Subalgebra.algebra O
  -- Porting note: there are some tricky unfolds going on here:
  -- (O.restrictScalars K : Type*) is identified with (O : Type*) in a few places
  let larger_emb : O →ₐ[N] M := Algebra.adjoin.liftSingleton N x y hy
  let larger_emb' : O →ₐ[K] M := AlgHom.restrictScalars K (S := N) (A := O) (B := M) larger_emb
  have hNO : N ≤ O.restrictScalars K := by
    intro z hz
    show algebraMap N L ⟨z, hz⟩ ∈ O
    exact O.algebraMap_mem _
  let O' : SubfieldWithHom K L M :=
    ⟨O.restrictScalars K, larger_emb'⟩
  have hO' : maximalSubfieldWithHom K L M ≤ O' := by
    refine' ⟨hNO, _⟩
    intro z
    -- Porting note: have to help Lean unfold even more here
    show Algebra.adjoin.liftSingleton N x y hy (@algebraMap N O _ _ (Subalgebra.algebra O) z) =
        algebraMap N M z
    exact AlgHom.commutes _ _
  refine' (maximalSubfieldWithHom_is_maximal K L M O' hO').fst _
  show x ∈ Algebra.adjoin N {(x : L)}
  exact Algebra.subset_adjoin (Set.mem_singleton x)
#align lift.subfield_with_hom.maximal_subfield_with_hom_eq_top IsAlgClosed.lift.SubfieldWithHom.maximalSubfieldWithHom_eq_top

end SubfieldWithHom

end lift

variable {K : Type u} [Field K] {L : Type v} {M : Type w} [Field L] [Algebra K L] [Field M]
  [Algebra K M] [IsAlgClosed M] (hL : Algebra.IsAlgebraic K L)

variable (K L M)

/-- Less general version of `lift`. -/
private noncomputable irreducible_def lift_aux : L →ₐ[K] M :=
  (lift.SubfieldWithHom.maximalSubfieldWithHom K L M).emb.comp <|
    (lift.SubfieldWithHom.maximalSubfieldWithHom_eq_top (K := K) (L := L) (M := M) (hL := hL)).symm
      ▸ Algebra.toTop

variable {R : Type u} [CommRing R]

variable {S : Type v} [CommRing S] [IsDomain S] [Algebra R S] [Algebra R M] [NoZeroSMulDivisors R S]
  [NoZeroSMulDivisors R M] (hS : Algebra.IsAlgebraic R S)

variable {M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05c2dddcddcc926e98a56952b70c6dbbde87a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
