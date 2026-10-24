# comap_mem_associatedPrimes_of_mem_associatedPrimes_of_isLocalizedModule_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b9954e9-49b9-00a6-4c9d-329db97239af",
  "kind": "lemma",
  "lexical_name": "comap_mem_associatedPrimes_of_mem_associatedPrimes_of_isLocalizedModule_of_fg",
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
  "slug": "comap-mem-associatedprimes-of-mem-associatedprimes-of-islocalizedmodule--d9157d5c19d4e2062ee12a78",
  "source": {
    "blob": "3d672b2e9660e1c433add3a3d55c8a5da538d0d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant47d23fcb61fa543f55a6ced8ec441b0fc431612c9220c966fe209e0d5f88ddb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9157d5c19d4e2062ee12a7876f5f303d12c304905a4692b6314a43ccf950808",
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

Occurrence: `result:9b9954e9-49b9-00a6-4c9d-329db97239af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_mem_associatedPrimes_of_mem_associatedPrimes_of_isLocalizedModule_of_fg (p : Ideal R')
    (ass : p ∈ associatedPrimes R' M') (fg : (p.comap (algebraMap R R')).FG) :
    p.comap (algebraMap R R') ∈ associatedPrimes R M := by
  rcases ass with ⟨hp, x, hx⟩
  rcases fg with ⟨T, hT⟩
  rcases IsLocalizedModule.mk'_surjective S f x with ⟨⟨m, s⟩, rfl⟩
  simp only [Function.uncurry_apply_pair] at hx
  have mem (a : T) : algebraMap R R' a ∈ p := by
    simpa [← Ideal.mem_comap, ← hT] using Ideal.subset_span a.2
  simp only [hx, Ideal.mem_radical_iff, mem_bot, mem_colon_singleton, ← map_pow, algebraMap_smul,
    ← IsLocalizedModule.mk'_smul, IsLocalizedModule.mk'_eq_zero' f] at mem
  choose e g hg using mem
  refine ⟨.under R p, (∏ a, g a).1 • m, le_antisymm ?_ fun r hr ↦ ?_⟩
  · rw [← hT, Ideal.span_le]
    intro a ha
    simp only [SetLike.mem_coe, Ideal.mem_radical_iff, mem_bot, mem_colon_singleton]
    obtain ⟨u, hu⟩ : g ⟨a, ha⟩ ∣ (∏ a, g a) := by
      apply Finset.dvd_prod_of_mem g (Finset.mem_univ ⟨a, ha⟩)
    use e ⟨a, ha⟩
    rw [hu, Submonoid.coe_mul, smul_smul, ← mul_assoc, mul_comm, ← smul_smul, mul_comm, ← smul_smul]
    exact smul_eq_zero_of_right u.1 (hg ⟨a, ha⟩)
  · simp only [Ideal.mem_radical_iff, mem_bot, mem_colon_singleton, smul_smul] at hr
    obtain ⟨k, hk⟩ := hr
    have mem : r ^ k * (∏ a, g a).1 ∈ Ideal.comap (algebraMap R R') p := by
      rw [hx]
      use 1
      simp_rw [pow_one, mem_colon_singleton, algebraMap_smul, ← IsLocalizedModule.mk'_smul,
        hk, IsLocalizedModule.mk'_zero, mem_bot]
    apply hp.mem_of_pow_mem k
    rw [← map_pow]
    exact ((hp.under R).mul_mem_iff_mem_or_mem.mp mem).resolve_right
      (Set.disjoint_left.mp ((IsLocalization.disjoint_under_iff S R' p).mpr hp.1) (∏ a, g a).2)

variable (R')

include S f in
open Set in
@[stacks 0310 "(3)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variant47d23fcb61fa543f55a6ced8ec441b0fc431612c9220c966fe209e0d5f88ddb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variant47d23fcb61fa543f55a6ced8ec441b0fc431612c9220c966fe209e0d5f88ddb7.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d672b2e9660e1c433add3a3d55c8a5da538d0d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
