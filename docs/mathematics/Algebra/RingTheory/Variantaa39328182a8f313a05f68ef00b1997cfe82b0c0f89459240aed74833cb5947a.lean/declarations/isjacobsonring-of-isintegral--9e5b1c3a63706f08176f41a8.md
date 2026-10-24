# isJacobsonRing_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8f2f464-3ce5-b93d-3145-04bf3351658a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff09b71b-0a16-aaf7-4bda-675ac0c4db95",
  "kind": "theorem",
  "lexical_name": "isJacobsonRing_of_isIntegral",
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
  "slug": "isjacobsonring-of-isintegral--9e5b1c3a63706f08176f41a8",
  "source": {
    "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 119,
    "path": "GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e5b1c3a63706f08176f41a8c1c0e6000e5098d19bb368d351cf6f8403a229fd",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff09b71b-0a16-aaf7-4bda-675ac0c4db95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isJacobsonRing_of_isIntegral [Algebra R S] [Algebra.IsIntegral R S] [IsJacobsonRing R] :
    IsJacobsonRing S := by
  rw [isJacobsonRing_iff_prime_eq]
  intro P hP
  by_cases hP_top : comap (algebraMap R S) P = ⊤
  · simp [comap_eq_top_iff.1 hP_top]
  · haveI : Nontrivial (R ⧸ comap (algebraMap R S) P) := Quotient.nontrivial hP_top
    rw [jacobson_eq_iff_jacobson_quotient_eq_bot]
    refine eq_bot_of_comap_eq_bot (R := R ⧸ comap (algebraMap R S) P) ?_
    rw [eq_bot_iff, ← jacobson_eq_iff_jacobson_quotient_eq_bot.1
      ((isJacobsonRing_iff_prime_eq.1 ‹_›) (comap (algebraMap R S) P) (comap_isPrime _ _)),
      comap_jacobson]
    refine sInf_le_sInf fun J hJ => ?_
    simp only [true_and, Set.mem_image, bot_le, Set.mem_setOf_eq]
    have : J.IsMaximal := by simpa using hJ
    exact exists_ideal_over_maximal_of_isIntegral J
      (comap_bot_le_of_injective _ algebraMap_quotient_injective)

/-- A variant of `isJacobsonRing_of_isIntegral` that takes `RingHom.IsIntegral` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e34e0f184baf6a3ede242a0820c02ea4e616a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
