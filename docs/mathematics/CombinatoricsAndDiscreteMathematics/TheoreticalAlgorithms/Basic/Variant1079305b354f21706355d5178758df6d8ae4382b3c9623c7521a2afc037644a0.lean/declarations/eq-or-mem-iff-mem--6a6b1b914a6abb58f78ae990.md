# eq_or_mem_iff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70c1b82e372702aa4a060e6b9cccd7d9e6e98f18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 429,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1079305b354f21706355d5178758df6d8ae4382b3c9623c7521a2afc037644a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0e5ec32-50b7-cf3f-3fa0-c2bcc3d3cf1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b05b5f61-9a4e-6cc1-29d5-9d20f6da297e",
  "kind": "theorem",
  "lexical_name": "eq_or_mem_iff_mem",
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
  "slug": "eq-or-mem-iff-mem--6a6b1b914a6abb58f78ae990",
  "source": {
    "blob": "70c1b82e372702aa4a060e6b9cccd7d9e6e98f18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 429,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1079305b354f21706355d5178758df6d8ae4382b3c9623c7521a2afc037644a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a6b1b914a6abb58f78ae9905e46dec870236e34445f93a8e397dc1f40dcdd49",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1079305b354f21706355d5178758df6d8ae4382b3c9623c7521a2afc037644a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b05b5f61-9a4e-6cc1-29d5-9d20f6da297e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_or_mem_iff_mem {s : WSeq α} {a a' s'} :
    some (a', s') ∈ destruct s → (a ∈ s ↔ a = a' ∨ a ∈ s') := by
  generalize e : destruct s = c
  intro h
  revert s
  apply Computation.memRecOn h <;> [skip; intro c IH] <;> intro s m <;>
    induction s using WSeq.recOn <;>
    have := congr_arg Computation.destruct m
  case h1.nil | h1.think | h2.nil | h2.cons => simp at this
  case h2.think => simp at this; simp [IH this]
  case h1.cons =>
    simp only [destruct_cons, destruct_pure, Sum.inl.injEq, Option.some.injEq,
      Prod.mk.injEq] at this
    obtain ⟨i1, i2⟩ := this
    rw [i1, i2]
    dsimp only [cons, Membership.mem, WSeq.Mem, Seq.Mem, Seq.cons]
    have h_a_eq_a' : a = a' ↔ some (some a) = some (some a') := by simp
    rw [h_a_eq_a']
    refine ⟨Stream'.eq_or_mem_of_mem_cons, fun o => ?_⟩
    rcases o with e | m
    · rw [e]
      apply Stream'.mem_cons
    · exact Stream'.mem_cons_of_mem _ m

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1079305b354f21706355d5178758df6d8ae4382b3c9623c7521a2afc037644a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1079305b354f21706355d5178758df6d8ae4382b3c9623c7521a2afc037644a0.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c1b82e372702aa4a060e6b9cccd7d9e6e98f18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
