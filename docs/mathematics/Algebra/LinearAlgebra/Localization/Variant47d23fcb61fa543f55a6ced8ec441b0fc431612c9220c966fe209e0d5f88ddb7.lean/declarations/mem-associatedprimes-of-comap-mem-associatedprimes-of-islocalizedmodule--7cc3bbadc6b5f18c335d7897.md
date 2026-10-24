# mem_associatedPrimes_of_comap_mem_associatedPrimes_of_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5eb6df1-e365-5f57-0c77-e2a55a445013",
  "kind": "lemma",
  "lexical_name": "mem_associatedPrimes_of_comap_mem_associatedPrimes_of_isLocalizedModule",
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
  "slug": "mem-associatedprimes-of-comap-mem-associatedprimes-of-islocalizedmodule--7cc3bbadc6b5f18c335d7897",
  "source": {
    "blob": "3d672b2e9660e1c433add3a3d55c8a5da538d0d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant47d23fcb61fa543f55a6ced8ec441b0fc431612c9220c966fe209e0d5f88ddb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc3bbadc6b5f18c335d789794eec2853ec901fddfc6cd5db0209717b93c4526",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variant47d23fcb61fa543f55a6ced8ec441b0fc431612c9220c966fe209e0d5f88ddb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5eb6df1-e365-5f57-0c77-e2a55a445013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_associatedPrimes_of_comap_mem_associatedPrimes_of_isLocalizedModule
    (p : Ideal R') (ass : p.comap (algebraMap R R') ∈ associatedPrimes R M) :
    p ∈ associatedPrimes R' M' := by
  rcases ass with ⟨hp, x, hx⟩
  constructor
  · refine (IsLocalization.isPrime_iff_isPrime_disjoint S _ _).mpr
      ⟨hp, (IsLocalization.disjoint_under_iff S R' p).mpr ?_⟩
    by_contra eqtop
    simp [eqtop, Ideal.comap_top, Ideal.isPrime_iff] at hp
  · use f x
    ext t
    rcases IsLocalization.exists_mk'_eq S t with ⟨r, s, hrs⟩
    simp_rw [← hrs, Ideal.mem_radical_iff, mem_colon_singleton, ← IsLocalizedModule.mk'_one S f,
      ← IsLocalization.mk'_pow, IsLocalizedModule.mk'_smul_mk', mul_one, mem_bot,
      IsLocalizedModule.mk'_eq_zero']
    refine ⟨fun h ↦ exists_comm.mp ⟨1, ?_⟩, fun ⟨n, t, ht⟩ ↦ ?_⟩
    · simp only [← mem_colon_singleton, one_smul, ← mem_bot R, ← hx, ← Ideal.mem_radical_iff]
      exact hSR'.mk'_mem_iff.mp h
    · have : hSR'.mk' R' r s = hSR'.mk' R' (t.1 * r) 1 * hSR'.mk' R' 1 (t * s) := by
        rw [← hSR'.mk'_mul, mul_one, one_mul, ← sub_eq_zero, ← hSR'.mk'_sub, Submonoid.coe_mul]
        simp [← mul_assoc, mul_comm r t.1, IsLocalization.mk'_zero]
      rw [this]
      apply Ideal.IsTwoSided.mul_mem_of_left
      rw [IsLocalization.mk'_one, ← Ideal.mem_comap, hx]
      rcases eq_zero_or_pos n with rfl | hn
      · exact Ideal.IsTwoSided.mul_mem_of_left _ ⟨1, by simpa using! ht⟩
      · use n
        rw [mem_colon_singleton, mul_pow, mul_smul, ← mem_colon_singleton]
        exact Ideal.pow_mem_of_mem _ (by simpa using! ht) n hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variant47d23fcb61fa543f55a6ced8ec441b0fc431612c9220c966fe209e0d5f88ddb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variant47d23fcb61fa543f55a6ced8ec441b0fc431612c9220c966fe209e0d5f88ddb7.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d672b2e9660e1c433add3a3d55c8a5da538d0d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
