# map_eq_map_of_bij_of_nodup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d61aec20eb27ed475bf58c8906b1e3410a815f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16136539-3bd1-91dd-936f-b395eeb58f47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acd67923-89ea-e864-0496-4723d91a738f",
  "kind": "theorem",
  "lexical_name": "map_eq_map_of_bij_of_nodup",
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
  "slug": "map-eq-map-of-bij-of-nodup--92be83e0705fb54fa235aeec",
  "source": {
    "blob": "7d61aec20eb27ed475bf58c8906b1e3410a815f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 255,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92be83e0705fb54fa235aeecf16bacee82f428df80a67171a2b9531f487a1d5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acd67923-89ea-e864-0496-4723d91a738f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_eq_map_of_bij_of_nodup (f : α → γ) (g : β → γ) {s : Multiset α} {t : Multiset β}
    (hs : s.Nodup) (ht : t.Nodup) (i : ∀ a ∈ s, β) (hi : ∀ a ha, i a ha ∈ t)
    (h : ∀ a ha, f a = g (i a ha)) (i_inj : ∀ a₁ a₂ ha₁ ha₂, i a₁ ha₁ = i a₂ ha₂ → a₁ = a₂)
    (i_surj : ∀ b ∈ t, ∃ a ha, b = i a ha) : s.map f = t.map g :=
  have : t = s.attach.map fun x => i x.1 x.2 :=
    (ht.ext <|
          (nodup_attach.2 hs).map <|
            show Injective fun x : { x // x ∈ s } => i x x.2 from fun x y hxy =>
              Subtype.ext <| i_inj x y x.2 y.2 hxy).2
      fun x => by
        simp only [mem_map, true_and_iff, Subtype.exists, eq_comm, mem_attach]
        exact ⟨i_surj _, fun ⟨y, hy⟩ => hy.snd.symm ▸ hi _ _⟩
  calc
    s.map f = s.pmap (fun x _ => f x) fun _ => id := by rw [pmap_eq_map]
    _ = s.attach.map fun x => f x.1 := by rw [pmap_eq_map_attach]
    _ = t.map g := by rw [this, Multiset.map_map]; exact map_congr rfl fun x _ => h _ _
#align multiset.map_eq_map_of_bij_of_nodup Multiset.map_eq_map_of_bij_of_nodup

end Multiset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d61aec20eb27ed475bf58c8906b1e3410a815f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
