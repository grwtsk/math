# localized_forward_atom_ne_original

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7571140908b4fa723225c10195a805dea55ff639",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96f32e6c-b7b9-cccb-c06a-2b1b48a1c7d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33c0b079-93fc-6a04-40d8-1468322b8c17",
  "kind": "theorem",
  "lexical_name": "localized_forward_atom_ne_original",
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
  "slug": "localized-forward-atom-ne-original--bd216bd51822fa32d5767b74",
  "source": {
    "blob": "7571140908b4fa723225c10195a805dea55ff639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd216bd51822fa32d5767b7402c2219d95e389a8d59027dc449ecb414d3662cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33c0b079-93fc-6a04-40d8-1468322b8c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localized_forward_atom_ne_original :
    localizedForwardProfile 1 1 {3} (fun _ ↦ 1) ≠ forwardProfile 1 {3} (fun _ ↦ 1) := by
  intro h
  have he := congrFun h (Real.log 3)
  have hl : (1 : ℝ) < Real.log 3 := by
    exact (Real.lt_log_iff_exp_lt (by norm_num)).2 Real.exp_one_lt_three
  have hx : Real.log 3 ∉ overlapWindow 1 1 := by
    simp only [overlapWindow, Nat.cast_one, Real.log_one, zero_sub, sub_zero, mem_Icc]
    exact fun hmem ↦ (not_le_of_gt hl) hmem.2
  simp only [localizedForwardProfile, indicator_of_notMem hx, forwardProfile,
    Finset.sum_singleton, Nat.cast_ofNat, sub_self, one_mul] at he
  exact normalized_source_one_zero_ne he.symm

end
end FormalResearch.RiemannHypothesis.SourceHankelLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7571140908b4fa723225c10195a805dea55ff639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
