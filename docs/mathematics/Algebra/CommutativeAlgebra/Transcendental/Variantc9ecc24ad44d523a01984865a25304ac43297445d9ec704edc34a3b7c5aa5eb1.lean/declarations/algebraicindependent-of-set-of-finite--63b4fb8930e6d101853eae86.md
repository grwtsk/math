# algebraicIndependent_of_set_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1028537e13fcb4edc3896a07f2914580cabd12c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cade60e-13c2-4cf6-ed9e-15b4bf0da3e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75fa47ad-f368-4024-a671-94cf5fadd2c0",
  "kind": "theorem",
  "lexical_name": "algebraicIndependent_of_set_of_finite",
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
  "slug": "algebraicindependent-of-set-of-finite--63b4fb8930e6d101853eae86",
  "source": {
    "blob": "e1028537e13fcb4edc3896a07f2914580cabd12c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 128,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63b4fb8930e6d101853eae86c37ddfbc614d7cd41994e7b6855db656de250b58",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75fa47ad-f368-4024-a671-94cf5fadd2c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraicIndependent_of_set_of_finite (s : Set ι)
    (ind : AlgebraicIndependent R fun i : s ↦ x i)
    (H : ∀ t : Set ι, t.Finite → AlgebraicIndependent R (fun i : t ↦ x i) →
      ∀ i ∉ s, i ∉ t → Transcendental (adjoin R (x '' t)) (x i)) :
    AlgebraicIndependent R x := by
  classical
  refine algebraicIndependent_of_finite_type fun t hfin ↦ ?_
  suffices AlgebraicIndependent R fun i : ↥(t ∩ s ∪ t \ s) ↦ x i from
    this.comp (Equiv.setCongr (t.inter_union_diff s).symm) (Equiv.injective _)
  refine hfin.diff.induction_on_subset _ (ind.comp (inclusion <| by simp) (inclusion_injective _))
    fun {a u} ha hu ha' h ↦ ?_
  have : a ∉ t ∩ s ∪ u := (·.elim (ha.2 ·.2) ha')
  convert (((image_eq_range .. ▸ h.option_iff_transcendental <| x a).2 <| H _ (hfin.subset
      (union_subset inter_subset_left <| hu.trans diff_subset)) h a ha.2 this).comp _
      (subtypeInsertEquivOption this).injective).comp
    (Equiv.setCongr union_insert) (Equiv.injective _) with x
  by_cases h : ↑x = a <;> simp [h, Set.subtypeInsertEquivOption]

/-- Variant of `algebraicIndependent_of_finite_type` using `Transcendental`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1028537e13fcb4edc3896a07f2914580cabd12c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
