# AbsoluteValue.iSup_abv_linearMap_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4c6633540a85bbb06d595aad635368fd68ebccb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a44d786-a7aa-5de6-dda3-238e45e1c43e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42fca901-be6f-e7ad-cd62-ecbf84fcb608",
  "kind": "lemma",
  "lexical_name": "AbsoluteValue.iSup_abv_linearMap_apply_le",
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
  "slug": "absolutevalue-isup-abv-linearmap-apply-le--6e95bb5cdd7689368959abda",
  "source": {
    "blob": "b4c6633540a85bbb06d595aad635368fd68ebccb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e95bb5cdd7689368959abda0c3e95a70e61c1ac954db61635e12357ec63e365",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42fca901-be6f-e7ad-cd62-ecbf84fcb608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AbsoluteValue.iSup_abv_linearMap_apply_le (v : AbsoluteValue K ℝ) (A : ι' × ι → K)
    (x : ι → K) :
    ⨆ j, v (∑ i, A (j, i) * x i) ≤ Nat.card ι * (⨆ ji, v (A ji)) * ⨆ i, v (x i) := by
  rcases isEmpty_or_nonempty ι'
  · simp
  refine ciSup_le fun j ↦ ?_
  grw [v.sum_le]
  simp only [map_mul]
  grw [Finset.sum_le_sum (g := fun _ ↦ (⨆ ji, v (A ji)) * ⨆ i, v (x i)) fun i _ ↦ ?h]
  case h =>
    gcongr
    · exact Real.iSup_nonneg_of_nonnegHomClass v _
    · exact Finite.le_ciSup_of_le (j, i) le_rfl
    · exact Finite.le_ciSup_of_le i le_rfl
  rw [Finset.sum_const, nsmul_eq_mul, mul_assoc, Finset.card_univ, Nat.card_eq_fintype_card]

-- The "local" version of the bound for nonarchimedean absolute values.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c6633540a85bbb06d595aad635368fd68ebccb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
