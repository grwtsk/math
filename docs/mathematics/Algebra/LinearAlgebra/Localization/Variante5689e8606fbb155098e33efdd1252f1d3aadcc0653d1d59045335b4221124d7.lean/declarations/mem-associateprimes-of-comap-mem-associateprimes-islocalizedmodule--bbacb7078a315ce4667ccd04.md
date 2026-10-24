# mem_associatePrimes_of_comap_mem_associatePrimes_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63f824f43c04de96baeb28c5fb9aa974680d2e20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc099dcf-49e7-4f8d-f189-a240211970a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7af9a499-d8fe-9199-a658-10cf050bf063",
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
  "slug": "mem-associateprimes-of-comap-mem-associateprimes-islocalizedmodule--bbacb7078a315ce4667ccd04",
  "source": {
    "blob": "63f824f43c04de96baeb28c5fb9aa974680d2e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbacb7078a315ce4667ccd04c8ac2e2b515a52050b7a41c67dd8bba540dcaf54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7af9a499-d8fe-9199-a658-10cf050bf063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–74.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f824f43c04de96baeb28c5fb9aa974680d2e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
