# exists_awayMap_injective_of_localRingHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70583930-8531-f8fa-94ec-fa2818599880",
  "kind": "lemma",
  "lexical_name": "exists_awayMap_injective_of_localRingHom_injective",
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
  "slug": "exists-awaymap-injective-of-localringhom-injective--cff980c9f89631913124c441",
  "source": {
    "blob": "600f2e01ed634b7712fe5b0051d6dcf9488a2d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 228,
    "path": "GRWTSK/Algebra/LocalRing/Variant737043ae176e481ba9e7e97731bda7f057578b91ac8af34e468bc6d352763ebc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff980c9f89631913124c441f471b817b05d98df8e03475a9d77ca6eb9a22c1d",
  "verification": {
    "reference": "docs/verification/Algebra/LocalRing/Variant737043ae176e481ba9e7e97731bda7f057578b91ac8af34e468bc6d352763ebc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70583930-8531-f8fa-94ec-fa2818599880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_awayMap_injective_of_localRingHom_injective
    (hRS : (RingHom.ker (algebraMap R S)).FG) [q.LiesOver p]
    (H : Function.Injective (localRingHom p q (algebraMap R S) (q.over_def p))) :
    ∃ r ∉ p, ∀ r', r ∣ r' → Function.Injective (awayMap (algebraMap R S) r') := by
  classical
  obtain ⟨s, hs⟩ := hRS
  have (x : s) : algebraMap R (Localization.AtPrime p) x.1 = 0 := by
    apply H
    simp [localRingHom_to_map, -FaithfulSMul.algebraMap_eq_zero_iff,
      show algebraMap R S _ = 0 from hs.le (Ideal.subset_span x.2)]
  choose m hm using fun x ↦ (IsLocalization.map_eq_zero_iff p.primeCompl _ _).mp (this x)
  have H : RingHom.ker (algebraMap R S) ≤ RingHom.ker
      (algebraMap R (Localization.Away (∏ i, m i).1)) := by
    rw [← hs, Ideal.span_le]
    intro x hxs
    refine (IsLocalization.map_eq_zero_iff (.powers (∏ i, m i).1) _ _).mpr ⟨⟨_, 1, rfl⟩, ?_⟩
    simp only [pow_one]
    rw [Fintype.prod_eq_mul_prod_compl ⟨x, hxs⟩, Submonoid.coe_mul, mul_assoc, mul_left_comm, hm,
      mul_zero]
  refine ⟨_, (∏ i : s, m i).2, ?_⟩
  rintro r' ⟨s, e⟩
  rw [injective_iff_map_eq_zero]
  intro x hx
  obtain ⟨x, _, rfl⟩ := IsLocalization.exists_mk'_eq (.powers r') x
  simp only [awayMap, IsLocalization.Away.map, IsLocalization.map_mk',
    IsLocalization.mk'_eq_zero_iff] at hx
  obtain ⟨⟨_, n, rfl⟩, hn⟩ := hx
  simp only [← map_pow, ← map_mul] at hn
  obtain ⟨⟨_, k, rfl⟩, hk⟩ := (IsLocalization.map_eq_zero_iff (.powers (∏ i, m i).1) _ _).mp (H hn)
  refine (IsLocalization.mk'_eq_zero_iff _ _).mpr ⟨⟨_, k + n, rfl⟩, ?_⟩
  dsimp only at hk ⊢
  rw [pow_add, mul_assoc, e, mul_pow, ← e, mul_assoc, mul_left_comm, hk, mul_zero]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalRing/Variant737043ae176e481ba9e7e97731bda7f057578b91ac8af34e468bc6d352763ebc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalRing/Variant737043ae176e481ba9e7e97731bda7f057578b91ac8af34e468bc6d352763ebc.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `600f2e01ed634b7712fe5b0051d6dcf9488a2d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
