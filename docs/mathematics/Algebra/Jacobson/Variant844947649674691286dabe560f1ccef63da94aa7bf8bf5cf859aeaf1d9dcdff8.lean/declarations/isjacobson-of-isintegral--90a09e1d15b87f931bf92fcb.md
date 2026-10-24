# isJacobson_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64d63208-51d5-c426-155f-f67a1e77d1f3",
  "kind": "theorem",
  "lexical_name": "isJacobson_of_isIntegral",
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
  "slug": "isjacobson-of-isintegral--90a09e1d15b87f931bf92fcb",
  "source": {
    "blob": "e8468b041b4419287f77937e8b89c347f23bf87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 140,
    "path": "GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90a09e1d15b87f931bf92fcbd6696048b1d74a92dae8c13e661a5debb2acda1c",
  "verification": {
    "reference": "docs/verification/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64d63208-51d5-c426-155f-f67a1e77d1f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isJacobson_of_isIntegral [Algebra R S] (hRS : Algebra.IsIntegral R S) (hR : IsJacobson R) :
    IsJacobson S := by
  rw [isJacobson_iff_prime_eq]
  intro P hP
  by_cases hP_top : comap (algebraMap R S) P = ⊤
  · simp [comap_eq_top_iff.1 hP_top]
  · haveI : Nontrivial (R ⧸ comap (algebraMap R S) P) := Quotient.nontrivial hP_top
    rw [jacobson_eq_iff_jacobson_quotient_eq_bot]
    refine' eq_bot_of_comap_eq_bot (isIntegral_quotient_of_isIntegral hRS) _
    rw [eq_bot_iff, ← jacobson_eq_iff_jacobson_quotient_eq_bot.1
      ((isJacobson_iff_prime_eq.1 hR) (comap (algebraMap R S) P) (comap_isPrime _ _)),
      comap_jacobson]
    refine' sInf_le_sInf fun J hJ => _
    simp only [true_and_iff, Set.mem_image, bot_le, Set.mem_setOf_eq]
    have : J.IsMaximal := by simpa using hJ
    exact exists_ideal_over_maximal_of_isIntegral (isIntegral_quotient_of_isIntegral hRS) J
      (comap_bot_le_of_injective _ algebraMap_quotient_injective)
#align ideal.is_jacobson_of_is_integral Ideal.isJacobson_of_isIntegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8468b041b4419287f77937e8b89c347f23bf87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
