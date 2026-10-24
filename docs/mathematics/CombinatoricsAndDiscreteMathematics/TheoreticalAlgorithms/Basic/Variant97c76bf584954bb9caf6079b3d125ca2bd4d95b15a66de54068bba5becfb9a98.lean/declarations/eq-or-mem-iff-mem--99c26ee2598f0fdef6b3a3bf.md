# eq_or_mem_iff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fd7606d-3637-a9f9-4ab7-5267f5af67e9",
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
  "slug": "eq-or-mem-iff-mem--99c26ee2598f0fdef6b3a3bf",
  "source": {
    "blob": "1663ded94deaf0ff58ddf37843e8b7b2597d3c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 428,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant97c76bf584954bb9caf6079b3d125ca2bd4d95b15a66de54068bba5becfb9a98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99c26ee2598f0fdef6b3a3bff1838cfb773aa4948015882fba6f23556a9d4da8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant97c76bf584954bb9caf6079b3d125ca2bd4d95b15a66de54068bba5becfb9a98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fd7606d-3637-a9f9-4ab7-5267f5af67e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_or_mem_iff_mem {s : WSeq α} {a a' s'} :
    some (a', s') ∈ destruct s → (a ∈ s ↔ a = a' ∨ a ∈ s') := by
  generalize e : destruct s = c; intro h
  revert s
  apply Computation.memRecOn h <;> [skip; intro c IH] <;> intro s <;>
    induction' s using WSeq.recOn with x s s <;>
    intro m <;>
    have := congr_arg Computation.destruct m <;>
    simp at this
  · obtain ⟨i1, i2⟩ := this
    rw [i1, i2]
    obtain ⟨f, al⟩ := s'
    dsimp only [cons, Membership.mem, WSeq.Mem, Seq.Mem, Seq.cons]
    have h_a_eq_a' : a = a' ↔ some (some a) = some (some a') := by simp
    rw [h_a_eq_a']
    refine ⟨Stream'.eq_or_mem_of_mem_cons, fun o => ?_⟩
    · rcases o with e | m
      · rw [e]
        apply Stream'.mem_cons
      · exact Stream'.mem_cons_of_mem _ m
  · simp [IH this]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant97c76bf584954bb9caf6079b3d125ca2bd4d95b15a66de54068bba5becfb9a98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant97c76bf584954bb9caf6079b3d125ca2bd4d95b15a66de54068bba5becfb9a98.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1663ded94deaf0ff58ddf37843e8b7b2597d3c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
