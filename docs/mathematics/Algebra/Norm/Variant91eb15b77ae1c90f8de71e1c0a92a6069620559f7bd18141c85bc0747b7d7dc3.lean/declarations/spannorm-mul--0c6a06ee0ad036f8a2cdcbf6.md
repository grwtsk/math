# spanNorm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fd1a0d3-9126-192b-24ea-56d209f95abb",
  "kind": "theorem",
  "lexical_name": "spanNorm_mul",
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
  "slug": "spannorm-mul--0c6a06ee0ad036f8a2cdcbf6",
  "source": {
    "blob": "6d923f2e4dd9a2557437ebe2b2d61abf55144b8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 592,
    "path": "GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c6a06ee0ad036f8a2cdcbf6cd1cbd8048861e7d8e2089038b074ecb0ab23f31",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fd1a0d3-9126-192b-24ea-56d209f95abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spanNorm_mul (I J : Ideal S) : spanNorm R (I * J) = spanNorm R I * spanNorm R J := by
  nontriviality R
  cases subsingleton_or_nontrivial S
  · have : ∀ I : Ideal S, I = ⊤ := fun I => Subsingleton.elim I ⊤
    simp [this I, this J, this (I * J)]
  refine eq_of_localization_maximal ?_
  intro P hP
  by_cases hP0 : P = ⊥
  · subst hP0
    rw [spanNorm_mul_of_bot_or_top]
    intro I
    refine or_iff_not_imp_right.mpr fun hI => ?_
    exact (hP.eq_of_le hI bot_le).symm
  let P' := Algebra.algebraMapSubmonoid S P.primeCompl
  letI : Algebra (Localization.AtPrime P) (Localization P') := localizationAlgebra P.primeCompl S
  haveI : IsScalarTower R (Localization.AtPrime P) (Localization P') :=
    IsScalarTower.of_algebraMap_eq (fun x =>
      (IsLocalization.map_eq (T := P') (Q := Localization P') P.primeCompl.le_comap_map x).symm)
  have h : P' ≤ S⁰ :=
    map_le_nonZeroDivisors_of_injective _ (NoZeroSMulDivisors.algebraMap_injective _ _)
      P.primeCompl_le_nonZeroDivisors
  haveI : IsDomain (Localization P') := IsLocalization.isDomain_localization h
  haveI : IsDedekindDomain (Localization P') := IsLocalization.isDedekindDomain S h _
  letI := Classical.decEq (Ideal (Localization P'))
  haveI : IsPrincipalIdealRing (Localization P') :=
    IsDedekindDomain.isPrincipalIdealRing_localization_over_prime S P hP0
  rw [Ideal.map_mul, ← spanNorm_localization R I P.primeCompl (Localization P'),
    ← spanNorm_localization R J P.primeCompl (Localization P'),
    ← spanNorm_localization R (I * J) P.primeCompl (Localization P'), Ideal.map_mul,
    ← (I.map _).span_singleton_generator, ← (J.map _).span_singleton_generator,
    span_singleton_mul_span_singleton, spanNorm_singleton, spanNorm_singleton,
    spanNorm_singleton, span_singleton_mul_span_singleton, _root_.map_mul]
#align ideal.span_norm_mul Ideal.spanNorm_mul

/-- The relative norm `Ideal.relNorm R (I : Ideal S)`, where `R` and `S` are Dedekind domains,
and `S` is an extension of `R` that is finite and free as a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d923f2e4dd9a2557437ebe2b2d61abf55144b8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
