# Multiset.support_sum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c27ae4e6e795f5bf92daaf3343044c77ff4378a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74dd64a4-0fce-0abc-40fc-4d52f50ba00e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4704232-e1fe-59d3-fa7a-46efcf3daa11",
  "kind": "theorem",
  "lexical_name": "Multiset.support_sum_eq",
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
  "slug": "multiset-support-sum-eq--8b8051b350494bd4cec485c6",
  "source": {
    "blob": "c27ae4e6e795f5bf92daaf3343044c77ff4378a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b8051b350494bd4cec485c6c7543a4cd116c3e0e12455976f810577567c37bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4704232-e1fe-59d3-fa7a-46efcf3daa11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Multiset.support_sum_eq [AddCommMonoid M] (s : Multiset (ι →₀ M))
    (hs : s.Pairwise (_root_.Disjoint on Finsupp.support)) :
    s.sum.support = (s.map Finsupp.support).sup := by
  induction' s using Quot.inductionOn with a
  obtain ⟨l, hl, hd⟩ := hs
  suffices : a.Pairwise (_root_.Disjoint on Finsupp.support)
  · convert List.support_sum_eq a this
    · simp only [Multiset.quot_mk_to_coe'', Multiset.coe_sum]
    · dsimp only [Function.comp]
      simp only [quot_mk_to_coe'', coe_map, sup_coe, ge_iff_le, Finset.le_eq_subset,
        Finset.sup_eq_union, Finset.bot_eq_empty, List.foldr_map]
  · simp only [Multiset.quot_mk_to_coe'', Multiset.coe_map, Multiset.coe_eq_coe] at hl
    exact hl.symm.pairwise hd fun _ _ h ↦ _root_.Disjoint.symm h
#align multiset.support_sum_eq Multiset.support_sum_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c27ae4e6e795f5bf92daaf3343044c77ff4378a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
