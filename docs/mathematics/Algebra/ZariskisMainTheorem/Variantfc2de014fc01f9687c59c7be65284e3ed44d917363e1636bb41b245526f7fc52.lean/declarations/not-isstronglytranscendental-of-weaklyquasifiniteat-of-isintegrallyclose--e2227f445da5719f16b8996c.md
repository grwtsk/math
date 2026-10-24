# not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isIntegrallyClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7039d772-e018-ae67-689a-910c2b232021",
  "kind": "lemma",
  "lexical_name": "not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isIntegrallyClosed",
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
  "slug": "not-isstronglytranscendental-of-weaklyquasifiniteat-of-isintegrallyclose--e2227f445da5719f16b8996c",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 323,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2227f445da5719f16b8996cf64957c1fdb87855ad2c74c4a3b1e5be39cb935a",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7039d772-e018-ae67-689a-910c2b232021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isIntegrallyClosed
    [FaithfulSMul R S] [IsIntegrallyClosed R] [IsDomain S]
    {x : S} (hx' : (aeval (R := R) x).Finite)
    (P : Ideal S) [P.IsPrime] [Algebra.WeaklyQuasiFiniteAt R P] :
      ¬ IsStronglyTranscendental R x := by
  intro hx
  have : IsDomain R := (FaithfulSMul.algebraMap_injective R S).isDomain
  have hf' : Function.Injective (aeval (R := R) x) := (injective_iff_map_eq_zero _).mpr
    fun p hp ↦ not_not.mp fun hp' ↦ hx.transcendental ⟨p, hp', hp⟩
  generalize hf : aeval (R := R) x = f at *
  obtain rfl : f X = x := by simp [← hf]
  let := f.toRingHom.toAlgebra
  have := IsScalarTower.of_algebraMap_eq' f.comp_algebraMap.symm
  have : Module.Finite R[X] S := RingHom.finite_algebraMap.mpr hx'
  have : FaithfulSMul R[X] S := by
    rw [faithfulSMul_iff_algebraMap_injective, injective_iff_map_eq_zero]
    intro p hp
    by_contra hp'
    exact hx.transcendental ⟨p, hp', by rwa [aeval_algHom_apply, aeval_X_left_apply]⟩
  have : (P.under R).map C < P.under R[X] := map_under_lt_comap_of_weaklyQuasiFiniteAt _ _
  obtain ⟨Q, hQ, _, ⟨e⟩⟩ := Ideal.exists_ideal_lt_liesOver_of_lt (S := S) P this
  refine hQ.ne (Algebra.WeaklyQuasiFiniteAt.eq_of_le_of_under_eq (R := R) hQ.le ?_)
  rw [← Ideal.under_under (B := R[X]), ← e]
  ext
  simp [Ideal.mem_map_C_iff, coeff_C, apply_ite]

/-- This asks for an explicit `K = Frac(R)`, `L = Frac(S)`,
`R'` the integral closure of `R` in `K`, and `S' ⊆ L` the subalgebra spanned by `R'` and `S`,
to aid typeclass synthesis.

Use `not_isStronglyTranscendental_of_quasiFiniteAt` below instead. -/
@[stacks 00Q1]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
