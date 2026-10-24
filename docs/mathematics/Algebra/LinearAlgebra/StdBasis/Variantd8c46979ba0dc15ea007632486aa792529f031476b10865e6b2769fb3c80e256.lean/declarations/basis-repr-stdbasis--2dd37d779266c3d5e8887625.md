# basis_repr_stdBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e267925-d33e-3fd0-69df-a2996b2a4860",
  "kind": "theorem",
  "lexical_name": "basis_repr_stdBasis",
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
  "slug": "basis-repr-stdbasis--2dd37d779266c3d5e8887625",
  "source": {
    "blob": "e5ee7fce804fdf1004b65c281aa892a32fc9eb89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 241,
    "path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dd37d779266c3d5e8887625723ae933634cd96d07f76f5129d830447dd90b29",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e267925-d33e-3fd0-69df-a2996b2a4860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basis_repr_stdBasis [DecidableEq η] (s : ∀ j, Basis (ιs j) R (Ms j)) (j i) :
    (Pi.basis s).repr (stdBasis R _ j (s j i)) = Finsupp.single ⟨j, i⟩ 1 := by
  ext ⟨j', i'⟩
  by_cases hj : j = j'
  · subst hj
    -- Porting note: needed to add more lemmas
    simp only [Pi.basis, LinearEquiv.trans_apply, Basis.repr_self, stdBasis_same,
      LinearEquiv.piCongrRight, Finsupp.sigmaFinsuppLEquivPiFinsupp_symm_apply,
      Basis.repr_symm_apply, LinearEquiv.coe_mk, ne_eq, Sigma.mk.inj_iff, heq_eq_eq, true_and]
    symm
    -- Porting note: `Sigma.mk.inj` not found in the following, replaced by `Sigma.mk.inj_iff.mp`
    exact
      Finsupp.single_apply_left
        (fun i i' (h : (⟨j, i⟩ : Σj, ιs j) = ⟨j, i'⟩) => eq_of_heq (Sigma.mk.inj_iff.mp h).2) _ _ _
  simp only [Pi.basis, LinearEquiv.trans_apply, Finsupp.sigmaFinsuppLEquivPiFinsupp_symm_apply,
    LinearEquiv.piCongrRight]
  dsimp
  rw [stdBasis_ne _ _ _ _ (Ne.symm hj), LinearEquiv.map_zero, Finsupp.zero_apply,
    Finsupp.single_eq_of_ne]
  rintro ⟨⟩
  contradiction
#align pi.basis_repr_std_basis Pi.basis_repr_stdBasis

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ee7fce804fdf1004b65c281aa892a32fc9eb89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
