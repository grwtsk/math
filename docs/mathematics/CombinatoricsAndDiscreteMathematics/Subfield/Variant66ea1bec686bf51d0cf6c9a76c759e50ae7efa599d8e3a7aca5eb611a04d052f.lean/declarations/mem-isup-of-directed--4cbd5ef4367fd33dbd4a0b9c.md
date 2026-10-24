# mem_iSup_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28d60c14d3627c070d272de77cbe95a661fc0218",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 815,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9af82c5-c602-5c1e-a515-44dbe9d000a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8625aa9c-b011-2931-5e81-436a4e82f7f6",
  "kind": "theorem",
  "lexical_name": "mem_iSup_of_directed",
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
  "slug": "mem-isup-of-directed--4cbd5ef4367fd33dbd4a0b9c",
  "source": {
    "blob": "28d60c14d3627c070d272de77cbe95a661fc0218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 833,
    "line": 815,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variant66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cbd5ef4367fd33dbd4a0b9caea27315a9e59efe3cfc1ef82471a9363b04f76f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subfield/Variant66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8625aa9c-b011-2931-5e81-436a4e82f7f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iSup_of_directed {ι} [hι : Nonempty ι] {S : ι → Subfield K} (hS : Directed (· ≤ ·) S)
    {x : K} : (x ∈ ⨆ i, S i) ↔ ∃ i, x ∈ S i := by
  refine' ⟨_, fun ⟨i, hi⟩ => (SetLike.le_def.1 <| le_iSup S i) hi⟩
  suffices x ∈ closure (⋃ i, (S i : Set K)) → ∃ i, x ∈ S i by
    simpa only [closure_iUnion, closure_eq]
  refine' fun hx => closure_induction hx (fun x => Set.mem_iUnion.mp) _ _ _ _ _
  · exact hι.elim fun i => ⟨i, (S i).one_mem⟩
  · rintro x y ⟨i, hi⟩ ⟨j, hj⟩
    obtain ⟨k, hki, hkj⟩ := hS i j
    exact ⟨k, (S k).add_mem (hki hi) (hkj hj)⟩
  · rintro x ⟨i, hi⟩
    exact ⟨i, (S i).neg_mem hi⟩
  · rintro x ⟨i, hi⟩
    exact ⟨i, (S i).inv_mem hi⟩
  · rintro x y ⟨i, hi⟩ ⟨j, hj⟩
    obtain ⟨k, hki, hkj⟩ := hS i j
    exact ⟨k, (S k).mul_mem (hki hi) (hkj hj)⟩
#align subfield.mem_supr_of_directed Subfield.mem_iSup_of_directed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subfield/Variant66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variant66ea1bec686bf51d0cf6c9a76c759e50ae7efa599d8e3a7aca5eb611a04d052f.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d60c14d3627c070d272de77cbe95a661fc0218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
