# isNilpotent_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5daa2bd6-be7c-6fca-8eae-39dcfeca6192",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55c076f0-aa68-58b4-bc43-61c98376d9a6",
  "kind": "lemma",
  "lexical_name": "isNilpotent_iff",
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
  "slug": "isnilpotent-iff--b065e779595cfbe26982a754",
  "source": {
    "blob": "1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 71,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b065e779595cfbe26982a7542b5316637cd646d424dfc8d85096ef711044340a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55c076f0-aa68-58b4-bc43-61c98376d9a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma isNilpotent_iff :
    IsNilpotent P ↔ ∀ i, IsNilpotent (coeff P i) := by
  refine
    ⟨P.recOnHorner (by simp) (fun p r hp₀ _ hp hpr i ↦ ?_) (fun p _ hnp hpX i ↦ ?_), fun h ↦ ?_⟩
  · rw [← sum_monomial_eq P]
    exact isNilpotent_sum (fun i _ ↦ by simpa only [isNilpotent_monomial_iff] using h i)
  · have hr : IsNilpotent (C r) := by
      obtain ⟨k, hk⟩ := hpr
      replace hp : eval 0 p = 0 := by rwa [coeff_zero_eq_aeval_zero] at hp₀
      refine isNilpotent_C_iff.mpr ⟨k, ?_⟩
      simpa [coeff_zero_eq_aeval_zero, hp] using congr_arg (fun q ↦ coeff q 0) hk
    rcases i with - | i
    · simpa [hp₀] using hr
    simp only [coeff_add, coeff_C_succ, add_zero]
    apply hp
    simpa using Commute.isNilpotent_sub (Commute.all _ _) hpr hr
  · rcases i with - | i
    · simp
    simpa using hnp (isNilpotent_mul_X_iff.mp hpX) i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
