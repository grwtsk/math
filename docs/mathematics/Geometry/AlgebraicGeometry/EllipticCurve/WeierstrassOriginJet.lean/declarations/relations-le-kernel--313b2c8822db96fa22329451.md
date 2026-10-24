# relations_le_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9a43915-e8f3-15de-fc8e-9f8c7b8ca4f8",
  "kind": "theorem",
  "lexical_name": "relations_le_kernel",
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
  "slug": "relations-le-kernel--313b2c8822db96fa22329451",
  "source": {
    "blob": "806048d95c0afea23b62fad46c77974d55b4e9e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 87,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313b2c8822db96fa223294512ad98816b38d7c30e187e4b28d9f45600a83df69",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9a43915-e8f3-15de-fc8e-9f8c7b8ca4f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relations_le_kernel (A B j : R) (hj : B*j=1) (N : ℕ) :
    relations A B N ≤ RingHom.ker (evaluate A B j N) := by
  let c := FreyJetQuotient.parameterScalar R N
  let e := FreyJetQuotient.parameter R N
  let z := lift (c A) (c j) e (N+1)
  have he : e^(N+1)=0 := FreyJetQuotient.parameter_pow N
  have hs : (model (Parameter R N) (c A) (c B)).toAffine.Equation z e :=
    lift_equation (c A) (c B) (c j) e
      (by rw [← map_mul,hj,map_one]) (N+1) he
  have hem : e ∈ (Ideal.span {e} : Ideal (Parameter R N)) := Ideal.subset_span (by simp)
  have hmap : origin.map (evaluate A B j N) ≤ Ideal.span {e} := by
    apply Ideal.map_le_iff_le_comap.mpr
    apply Ideal.span_le.mpr
    intro p hp
    simp only [Set.mem_insert_iff,Set.mem_singleton_iff] at hp
    rcases hp with rfl | rfl
    · change evaluate A B j N (MvPolynomial.X 0) ∈ _
      simpa [evaluate,c,e,z] using lift_mem (Ideal.span {e}) (c A) (c j) e hem (N+1)
    · change evaluate A B j N (MvPolynomial.X 1) ∈ _
      simpa [evaluate,e] using hem
  have hpow : (origin^(N+1)).map (evaluate A B j N)=⊥ := by
    apply le_antisymm _ bot_le
    calc
      _ = (origin.map (evaluate A B j N))^(N+1) := Ideal.map_pow _ _ _
      _ ≤ (Ideal.span {e})^(N+1) := Ideal.pow_right_mono hmap _
      _ = ⊥ := by rw [Ideal.span_singleton_pow]; simp [he]
  apply sup_le
  · apply Ideal.span_le.mpr
    intro p hp
    have hp' : p=equation A B := Set.mem_singleton_iff.mp hp
    subst p
    change evaluate A B j N (equation A B)=0
    rw [Affine.equation_iff'] at hs
    simpa [evaluate,equation,c,e,z,model,sub_sub,add_assoc] using hs
  · exact Ideal.map_eq_bot_iff_le_ker.mp hpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `806048d95c0afea23b62fad46c77974d55b4e9e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
