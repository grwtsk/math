# exists_left_transversal_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34c95eab8f317f84942becdbf02f661b92d1ab90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea03c469-ce32-ad32-33e2-70b9c344fdca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abab38b1-3f7f-1cd7-c73b-7ffcbcf9abe9",
  "kind": "lemma",
  "lexical_name": "exists_left_transversal_of_le",
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
  "slug": "exists-left-transversal-of-le--8f5cf3655eaac0f75343dd11",
  "source": {
    "blob": "34c95eab8f317f84942becdbf02f661b92d1ab90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 293,
    "path": "GRWTSK/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f5cf3655eaac0f75343dd11f388909c18cc24b36303e017ba73880abf37d333",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abab38b1-3f7f-1cd7-c73b-7ffcbcf9abe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_left_transversal_of_le {H' H : Subgroup G} (h : H' ≤ H) :
    ∃ S : Set G, S * H' = H ∧ Nat.card S * Nat.card H' = Nat.card H := by
  let H'' : Subgroup H := H'.comap H.subtype
  have : H' = H''.map H.subtype := by simp [H'', h]
  rw [this]
  obtain ⟨S, cmem, -⟩ := H''.exists_isComplement_left 1
  refine ⟨H.subtype '' S, ?_, ?_⟩
  · have : H.subtype '' (S * H'') = H.subtype '' S * H''.map H.subtype := image_mul H.subtype
    rw [← this, cmem.mul_eq]
    simp
  · rw [← cmem.card_mul_card]
    refine congr_arg₂ (· * ·) ?_ ?_ <;>
      exact Nat.card_congr (Equiv.Set.image _ _ <| subtype_injective H).symm

/-- Given two subgroups `H' ⊆ H`, there exists a right transversal to `H'` inside `H`. -/
@[to_additive /-- Given two subgroups `H' ⊆ H`, there exists a transversal to `H'` inside `H` -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34c95eab8f317f84942becdbf02f661b92d1ab90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
