# mem_associatePrimes_of_comap_mem_associatePrimes_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50706b0a-730e-3ca9-3548-38449404252b",
  "kind": "lemma",
  "lexical_name": "mem_associatePrimes_of_comap_mem_associatePrimes_isLocalizedModule",
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
  "slug": "mem-associateprimes-of-comap-mem-associateprimes-islocalizedmodule--8bdc7178b6c37d72fbd89c94",
  "source": {
    "blob": "c4fc95b65fdca83d81f42c578c3704a6dad3825d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bdc7178b6c37d72fbd89c94a8d3cc254b8d5d9fa2b32269a95c9a95183ef640",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50706b0a-730e-3ca9-3548-38449404252b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_associatePrimes_of_comap_mem_associatePrimes_isLocalizedModule
    (p : Ideal R') [p.IsPrime]
    (ass : p.comap (algebraMap R R') ∈ associatedPrimes R M) :
    p ∈ associatedPrimes R' M' := by
  rcases ass with ⟨hp, x, hx⟩
  constructor
  · /- use the following to  remove `p.IsPrime`
      exact (IsLocalization.isPrime_iff_isPrime_disjoint S _ _).mpr
      ⟨hp, (IsLocalization.disjoint_comap_iff S R' p).mpr (p ≠ ⊤)⟩ -/
    assumption
  · use f x
    ext t
    rcases IsLocalization.mk'_surjective S t with ⟨r, s, hrs⟩
    rw [← IsLocalizedModule.mk'_one S, ← hrs, mem_ker, toSpanSingleton_apply,
      IsLocalizedModule.mk'_smul_mk', mul_one, IsLocalizedModule.mk'_eq_zero']
    refine ⟨fun h ↦ ?_, fun ⟨t, ht⟩ ↦ ?_⟩
    · use 1
      simp only [← toSpanSingleton_apply, one_smul, ← mem_ker, ← hx, Ideal.mem_comap]
      have : (algebraMap R R') r =
        IsLocalization.mk' R' r s * IsLocalization.mk' R' s.1 (1 : S) := by
        rw [← IsLocalization.mk'_one (M := S) R', ← sub_eq_zero, ← IsLocalization.mk'_mul,
          ← IsLocalization.mk'_sub]
        simp
      rw [this]
      exact Ideal.IsTwoSided.mul_mem_of_left _ h
    · have : t • r • x = (t.1 * r) • x := smul_smul t.1 r x
      rw [this, ← LinearMap.toSpanSingleton_apply, ← LinearMap.mem_ker, ← hx, Ideal.mem_comap,
        ← IsLocalization.mk'_one (M := S) R'] at ht
      have : IsLocalization.mk' R' r s =
        IsLocalization.mk' (M := S) R' (t.1 * r) 1 * IsLocalization.mk' R' 1 (t * s) := by
        rw [← IsLocalization.mk'_mul, mul_one, one_mul, ← sub_eq_zero, ← IsLocalization.mk'_sub,
          Submonoid.coe_mul]
        simp [← mul_assoc, mul_comm r t.1, IsLocalization.mk'_zero]
      simpa [this] using Ideal.IsTwoSided.mul_mem_of_left _ ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4fc95b65fdca83d81f42c578c3704a6dad3825d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
