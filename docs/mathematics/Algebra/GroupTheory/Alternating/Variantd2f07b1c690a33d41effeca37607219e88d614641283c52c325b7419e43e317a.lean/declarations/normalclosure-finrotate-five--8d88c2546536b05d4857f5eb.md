# normalClosure_finRotate_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15003ab1be16403bcf301bc4f5118234b4738b9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d925ec6f-99d1-5050-ac8a-146bcedf8d6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce85684b-58ab-36f1-df0c-e103f1944d55",
  "kind": "theorem",
  "lexical_name": "normalClosure_finRotate_five",
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
  "slug": "normalclosure-finrotate-five--8d88c2546536b05d4857f5eb",
  "source": {
    "blob": "15003ab1be16403bcf301bc4f5118234b4738b9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 247,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d88c2546536b05d4857f5eb271b14cfc709337d83ff0694d6720482de511e70",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce85684b-58ab-36f1-df0c-e103f1944d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalClosure_finRotate_five : normalClosure ({⟨finRotate 5,
    finRotate_bit1_mem_alternatingGroup (n := 2)⟩} : Set (alternatingGroup (Fin 5))) = ⊤ :=
  eq_top_iff.2
    (by
      have h3 :
        IsThreeCycle (Fin.cycleRange 2 * finRotate 5 * (Fin.cycleRange 2)⁻¹ * (finRotate 5)⁻¹) :=
        card_support_eq_three_iff.1 (by decide)
      rw [← h3.alternating_normalClosure (by rw [card_fin])]
      refine normalClosure_le_normal ?_
      rw [Set.singleton_subset_iff, SetLike.mem_coe]
      have h :
        (⟨finRotate 5, finRotate_bit1_mem_alternatingGroup (n := 2)⟩ : alternatingGroup (Fin 5)) ∈
          normalClosure _ :=
        SetLike.mem_coe.1 (subset_normalClosure (Set.mem_singleton _))
      -- Porting note: added `:` to help the elaborator
      exact (mul_mem (Subgroup.normalClosure_normal.conj_mem _ h
        ⟨Fin.cycleRange 2, Fin.isThreeCycle_cycleRange_two.mem_alternatingGroup⟩) (inv_mem h) :))

/-- The normal closure of $(04)(13)$ within $A_5$ is the whole group. This will be
used to show that the normal closure of any permutation of cycle type $(2,2)$ is the whole group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15003ab1be16403bcf301bc4f5118234b4738b9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
