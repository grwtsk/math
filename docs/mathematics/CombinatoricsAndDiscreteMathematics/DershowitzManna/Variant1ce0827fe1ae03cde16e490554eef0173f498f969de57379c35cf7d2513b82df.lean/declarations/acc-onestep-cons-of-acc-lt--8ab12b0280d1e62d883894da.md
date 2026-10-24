# acc_oneStep_cons_of_acc_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbb77bcf-5021-08ac-3a3b-a368147e5dd8",
  "kind": "lemma",
  "lexical_name": "acc_oneStep_cons_of_acc_lt",
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
  "slug": "acc-onestep-cons-of-acc-lt--8ab12b0280d1e62d883894da",
  "source": {
    "blob": "0267cead749bdb9b001342a2817104e178710e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ab12b0280d1e62d883894dac18c4fd2652219a1b91d7fcc57fde229694f9abb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbb77bcf-5021-08ac-3a3b-a368147e5dd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma acc_oneStep_cons_of_acc_lt (ha : Acc LT.lt a) :
    ∀ {M}, Acc OneStep M → Acc OneStep (a ::ₘ M) := by
  induction' ha with a _ ha
  rintro M hM
  induction' hM with M hM ihM
  refine .intro _ fun N hNM ↦ ?_
  obtain ⟨N, ⟨rfl, hNM'⟩ | ⟨rfl, hN⟩⟩ := isDershowitzMannaLT_singleton_insert hNM
  · exact ihM _ hNM'
  clear hNM
  induction N using Multiset.induction with
  | empty =>
    simpa using .intro _ hM
  | @cons b N ihN =>
    simp only [mem_cons, forall_eq_or_imp, add_cons] at hN ⊢
    obtain ⟨hba, hN⟩ := hN
    exact ha _ hba <| ihN hN

/-- If all elements of a multiset `M` are accessible with `<`, then the multiset `M` is
accessible given the `OneStep` relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0267cead749bdb9b001342a2817104e178710e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
