# isIntegral_ofLocalizationSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0822781dc03f4ca42802ca698db85fb72b71c11b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:394a1ddf-204f-40c4-d4ed-d8f2cdfeada8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:528fce85-b21f-180a-8be1-47b193db2177",
  "kind": "theorem",
  "lexical_name": "isIntegral_ofLocalizationSpan",
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
  "slug": "isintegral-oflocalizationspan--7386db662b69b9c86b04c401",
  "source": {
    "blob": "0822781dc03f4ca42802ca698db85fb72b71c11b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 42,
    "path": "GRWTSK/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7386db662b69b9c86b04c401828600f303523fd3f4a3e9cf4f560c9c85017574",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:528fce85-b21f-180a-8be1-47b193db2177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_ofLocalizationSpan :
    OfLocalizationSpan (RingHom.IsIntegral ·) := by
  introv R hs H r
  letI := f.toAlgebra
  show r ∈ (integralClosure R S).toSubmodule
  apply Submodule.mem_of_span_eq_top_of_smul_pow_mem _ s hs
  rintro ⟨t, ht⟩
  letI := (Localization.awayMap f t).toAlgebra
  haveI : IsScalarTower R (Localization.Away t) (Localization.Away (f t)) := .of_algebraMap_eq'
    (IsLocalization.lift_comp _).symm
  have : _root_.IsIntegral (Localization.Away t) (algebraMap S (Localization.Away (f t)) r) :=
    H ⟨t, ht⟩ (algebraMap _ _ r)
  obtain ⟨⟨_, n, rfl⟩, p, hp, hp'⟩ := this.exists_multiple_integral_of_isLocalization (.powers t)
  rw [IsScalarTower.algebraMap_eq R S, Submonoid.smul_def, Algebra.smul_def,
    IsScalarTower.algebraMap_apply R S, ← map_mul, ← hom_eval₂,
    IsLocalization.map_eq_zero_iff (.powers (f t))] at hp'
  obtain ⟨⟨x, m, (rfl : algebraMap R S t ^ m = x)⟩, e⟩ := hp'
  by_cases hp' : 1 ≤ p.natDegree; swap
  · obtain rfl : p = 1 := eq_one_of_monic_natDegree_zero hp (by omega)
    exact ⟨m, by simp [Algebra.smul_def, show algebraMap R S t ^ m = 0 by simpa using e]⟩
  refine ⟨m + n, p.scaleRoots (t ^ m), (monic_scaleRoots_iff _).mpr hp, ?_⟩
  have := p.scaleRoots_eval₂_mul (algebraMap R S) (t ^ n • r) (t ^ m)
  simp only [pow_add, ← Algebra.smul_def, mul_smul, ← map_pow] at e this ⊢
  rw [this, ← tsub_add_cancel_of_le hp', pow_succ, mul_smul, e, smul_zero]

end RingHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0822781dc03f4ca42802ca698db85fb72b71c11b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
