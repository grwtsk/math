# exists_affineCombination_eq_smul_eq_of_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c91fb216f35797286e7fc3ae0ad8d9b1106588aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e766d5da-62b8-04b7-7a35-3026460ef161",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1c7f5ae-813c-945f-5cec-0b7f600ebacc",
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
  "slug": "exists-affinecombination-eq-smul-eq-of-fintype--255dd09afaf64854922d1a63",
  "source": {
    "blob": "c91fb216f35797286e7fc3ae0ad8d9b1106588aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:255dd09afaf64854922d1a6335b5f670edd3ffaaa668e1b697079c5742b1ac84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1c7f5ae-813c-945f-5cec-0b7f600ebacc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–134.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c91fb216f35797286e7fc3ae0ad8d9b1106588aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
