# LocalSubring.mem_of_isMax_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3f5c16a-afe0-a4d9-79b8-8ee9c21e000a",
  "kind": "lemma",
  "lexical_name": "LocalSubring.mem_of_isMax_of_isIntegral",
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
  "slug": "localsubring-mem-of-ismax-of-isintegral--dd283af42ccaaaf18a3ddd2b",
  "source": {
    "blob": "372e66acf36f1ebde5cd151babbecba8788be4f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd283af42ccaaaf18a3ddd2b787a5dab297e290d60037b9bf192b278920dfae3",
  "verification": {
    "reference": "docs/verification/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3f5c16a-afe0-a4d9-79b8-8ee9c21e000a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocalSubring.mem_of_isMax_of_isIntegral {R : LocalSubring K}
    (hR : IsMax R) {x : K} (hx : IsIntegral R.toSubring x) : x ∈ R.toSubring := by
  let S := Algebra.adjoin R.toSubring {x}
  have : Algebra.IsIntegral R.toSubring S := Algebra.IsIntegral.adjoin (by simpa)
  have : FaithfulSMul R.toSubring S := NoZeroSMulDivisors.instFaithfulSMulOfNontrivial
  obtain ⟨Q : Ideal S.toSubring, hQ, e⟩ := Ideal.exists_ideal_over_maximal_of_isIntegral
    (R := R.toSubring) (S := S) (maximalIdeal _) (le_maximalIdeal (by simp))
  have : R = .ofPrime S.toSubring Q := by
    have hRS : R.toSubring ≤ S.toSubring := fun r hr ↦ algebraMap_mem S ⟨r, hr⟩
    apply hR.eq_of_le ⟨hRS.trans (LocalSubring.le_ofPrime _ _), ⟨?_⟩⟩
    intro r hr
    have := (IsLocalization.AtPrime.isUnit_to_map_iff (R := S.toSubring) _ Q ⟨_, hRS r.2⟩).mp hr
    by_contra h
    rw [← mem_nonunits_iff, ← mem_maximalIdeal, ← e] at h
    exact this h
  rw [this]
  exact LocalSubring.le_ofPrime _ _ (Algebra.self_mem_adjoin_singleton _ _)

@[stacks 052K]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372e66acf36f1ebde5cd151babbecba8788be4f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
