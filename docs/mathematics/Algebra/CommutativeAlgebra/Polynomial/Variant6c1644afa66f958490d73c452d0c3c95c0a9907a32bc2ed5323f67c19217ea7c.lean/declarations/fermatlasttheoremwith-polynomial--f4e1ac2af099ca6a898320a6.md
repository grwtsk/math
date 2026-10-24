# fermatLastTheoremWith'_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f18495d6-57ec-ef37-8232-62ef8aac7c8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55dab54c-c826-cbbd-8272-e42b38c2436d",
  "kind": "theorem",
  "lexical_name": "fermatLastTheoremWith'_polynomial",
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
  "slug": "fermatlasttheoremwith-polynomial--f4e1ac2af099ca6a898320a6",
  "source": {
    "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 235,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e1ac2af099ca6a898320a6cfdf08f448e58ddc20a95d10fecef8aaed476be1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55dab54c-c826-cbbd-8272-e42b38c2436d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fermatLastTheoremWith'_polynomial {n : ℕ} (hn : 3 ≤ n) (chn : (n : k) ≠ 0) :
    FermatLastTheoremWith' k[X] n := by
  classical
  rw [FermatLastTheoremWith']
  intros a b c ha hb hc heq
  obtain ⟨a', eq_a⟩ := gcd_dvd_left a b
  obtain ⟨b', eq_b⟩ := gcd_dvd_right a b
  set d := gcd a b
  have hd : d ≠ 0 := gcd_ne_zero_of_left ha
  rw [eq_a, eq_b, mul_pow, mul_pow, ← mul_add] at heq
  have hdc : d ∣ c := by
    have hn : 0 < n := by omega
    have hdncn : d ^ n ∣ c ^ n := ⟨_, heq.symm⟩

    rw [dvd_iff_normalizedFactors_le_normalizedFactors hd hc]
    rw [dvd_iff_normalizedFactors_le_normalizedFactors
          (pow_ne_zero n hd) (pow_ne_zero n hc),
        normalizedFactors_pow, normalizedFactors_pow] at hdncn
    simp_rw [Multiset.le_iff_count, Multiset.count_nsmul,
      mul_le_mul_left hn] at hdncn ⊢
    exact hdncn
  obtain ⟨c', eq_c⟩ := hdc
  rw [eq_a, mul_ne_zero_iff] at ha
  rw [eq_b, mul_ne_zero_iff] at hb
  rw [eq_c, mul_ne_zero_iff] at hc
  rw [mul_comm] at eq_a eq_b eq_c
  refine ⟨d, a', b', c', ⟨eq_a, eq_b, eq_c⟩, ?_⟩
  rw [eq_c, mul_pow, mul_comm, mul_left_inj' (pow_ne_zero n hd)] at heq
  suffices goal : a'.natDegree = 0 ∧ b'.natDegree = 0 ∧ c'.natDegree = 0 by
    simp only [natDegree_eq_zero] at goal
    obtain ⟨⟨ca', ha'⟩, ⟨cb', hb'⟩, ⟨cc', hc'⟩⟩ := goal
    rw [← ha', ← hb', ← hc']
    rw [← ha', C_ne_zero] at ha
    rw [← hb', C_ne_zero] at hb
    rw [← hc', C_ne_zero] at hc
    exact ⟨ha.right.isUnit_C, hb.right.isUnit_C, hc.right.isUnit_C⟩
  apply flt hn chn ha.right hb.right hc.right _ heq
  convert isCoprime_div_gcd_div_gcd _
  · exact EuclideanDomain.eq_div_of_mul_eq_left ha.left eq_a.symm
  · exact EuclideanDomain.eq_div_of_mul_eq_left ha.left eq_b.symm
  · rw [eq_b]
    exact mul_ne_zero hb.right hb.left
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0edeb1fa4176a31a026d229659e237d2fe7da14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
