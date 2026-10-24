# ZariskisMainProperty.of_adjoin_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 463,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af6b7fd5-79cf-1e5c-3e6f-0e98bba2f0c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c25da35-9cf7-aae5-fda6-b3827ebbee24",
  "kind": "lemma",
  "lexical_name": "ZariskisMainProperty.of_adjoin_eq_top",
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
  "slug": "zariskismainproperty-of-adjoin-eq-top--4b0b3dce9dcb66c70390bca3",
  "source": {
    "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 463,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b0b3dce9dcb66c70390bca3a651879a2adb251675012ee0dce7a787b633e584",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c25da35-9cf7-aae5-fda6-b3827ebbee24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ZariskisMainProperty.of_adjoin_eq_top
    (p : Ideal S) [p.IsPrime] [Algebra.WeaklyQuasiFiniteAt R p]
    (x : S) (hx : Algebra.adjoin R {x} = ⊤) : ZariskisMainProperty R p := by
  wlog H : integralClosure R S = ⊥
  · let inst : Algebra (integralClosure R S) (Localization.AtPrime p) :=
      OreLocalization.instAlgebra
    have inst : Algebra.WeaklyQuasiFiniteAt (integralClosure R S) p :=
      .of_restrictScalars R (integralClosure R S) _
    refine .restrictScalars (this p x ?_ (integralClosure_idem (R := R)))
    suffices ⊤ ≤ (Algebra.adjoin (integralClosure R S) {x}).restrictScalars R from
      top_le_iff.mp fun x _ ↦ (Subalgebra.mem_restrictScalars _).mp (this trivial)
    refine hx.ge.trans ?_
    rw [Algebra.restrictScalars_adjoin]
    exact Algebra.adjoin_mono (by simp)
  have H₀ : Function.Surjective (aeval (R := R) x) := by
    rwa [← AlgHom.range_eq_top, ← Algebra.adjoin_singleton_eq_range_aeval]
  have ⟨f, (hf : aeval x f = 0), hfp⟩ := SetLike.not_le_iff_exists.mp
    (Polynomial.not_ker_le_map_C_of_surjective_of_weaklyQuasiFiniteAt _ H₀ p)
  obtain ⟨n, hfn⟩ : ∃ x, algebraMap R S (f.coeff x) ∉ p := by simpa [Ideal.mem_map_C_iff] using! hfp
  clear hfp
  induction hm : f.natDegree using Nat.strong_induction_on generalizing f n with | h m IH =>
  obtain (_ | m) := m
  · obtain ⟨r, rfl⟩ := natDegree_eq_zero.mp hm
    cases n <;> aesop
  by_cases Hfp : algebraMap _ _ f.leadingCoeff ∈ p
  · obtain ⟨a, ha⟩ := H.le (isIntegral_leadingCoeff_smul f x hf)
    refine IH _ ?_ (f.eraseLead + C a * X ^ m) (hm := rfl) ?_ n ?_
    · suffices f.eraseLead.natDegree ≤ m by compute_degree!
      exact (eraseLead_natDegree_le ..).trans (by lia)
    · simp [← self_sub_monomial_natDegree_leadingCoeff, hf, hm, pow_succ', ← Algebra.smul_def,
        ← Algebra.smul_mul_assoc, ← ha]
    · suffices algebraMap R S (f.coeff n) + algebraMap R S (if n = m then a else 0) ∉ p by
        simpa [eraseLead_coeff, show n ≠ f.natDegree by rintro rfl; exact hfn (by simpa)]
      rwa [Ideal.add_mem_iff_left]
      split_ifs
      · convert p.mul_mem_right x Hfp
        simpa [Algebra.smul_def] using! ha
      · simp
  · refine zariskisMainProperty_iff_exists_saturation_eq_top.mpr ⟨_, Hfp, isIntegral_algebraMap, ?_⟩
    rw [← top_le_iff, ← hx]
    refine Algebra.adjoin_singleton_le ⟨_, ⟨1, rfl⟩, ?_⟩
    simpa [Algebra.smul_def] using! isIntegral_leadingCoeff_smul f x hf

-- Subsumed by `ZariskisMainProperty.of_finiteType`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98122731c6ffb3714ba0aa2e741c563b58befd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
