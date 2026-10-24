# exists_affineCombination_eq_smul_eq_of_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf2d9fae-991d-d1a7-38b2-6d66176e8e5e",
  "kind": "lemma",
  "lexical_name": "exists_affineCombination_eq_smul_eq_of_fintype",
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
  "slug": "exists-affinecombination-eq-smul-eq-of-fintype--d0e42d4fc957a82288b6b93e",
  "source": {
    "blob": "0f7de3bc0c76cd411869ee7fb192e00a436fee41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Varianta9f47e799e8ed6d1a2670b0db79ec29dae888eb511c65b706f1ccf75fa6997aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e42d4fc957a82288b6b93ec7163bed7f4f810273200b1065aedbc8fd3310bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ceva/Varianta9f47e799e8ed6d1a2670b0db79ec29dae888eb511c65b706f1ccf75fa6997aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf2d9fae-991d-d1a7-38b2-6d66176e8e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_affineCombination_eq_smul_eq_of_fintype [Fintype ι] {p : ι → P}
    (hp : AffineIndependent k p) {s : Set ι} (hs : s.Nonempty) {w : s → ι → k}
    (hw : ∀ i, ∑ j, w i j = 1) {p' : P}
    (hp' : ∀ i : s, p' ∈ line[k, p i, Finset.univ.affineCombination k p (w i)]) :
    ∃ w' : ι → k, (∑ j, w' j = 1) ∧ Finset.univ.affineCombination k p w' = p' ∧
      ∀ i : s, ∃ r, ∀ j, r * Set.indicator {(i : ι)}ᶜ (w i) j =
        Set.indicator {(i : ι)}ᶜ w' j := by
  classical
  obtain ⟨w'', fs'', hw'', hw''p', hi⟩ := hp.exists_affineCombination_eq_smul_eq hs hw hp'
  refine ⟨Set.indicator fs'' w'', ?_, ?_, ?_⟩
  · rw [← hw'']
    exact Finset.sum_indicator_subset _ (by simp)
  · rw [← hw''p']
    exact (Finset.affineCombination_indicator_subset _ _ (by simp)).symm
  · intro i
    obtain ⟨r, hr⟩ := hi i
    refine ⟨r, fun j ↦ ?_⟩
    convert! hr j using 1
    · simp [Set.indicator_apply]
    · by_cases hj : j = (i : ι) <;> simp [Set.indicator_apply, hj]

end AffineIndependent

namespace Affine.Triangle

section CommRing

variable [CommRing k] [NoZeroDivisors k] [AddCommGroup V] [Module k V] [AffineSpace V P]

/-- **Ceva's theorem** for a triangle, expressed in terms of multiplying weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ceva/Varianta9f47e799e8ed6d1a2670b0db79ec29dae888eb511c65b706f1ccf75fa6997aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Varianta9f47e799e8ed6d1a2670b0db79ec29dae888eb511c65b706f1ccf75fa6997aa.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f7de3bc0c76cd411869ee7fb192e00a436fee41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
