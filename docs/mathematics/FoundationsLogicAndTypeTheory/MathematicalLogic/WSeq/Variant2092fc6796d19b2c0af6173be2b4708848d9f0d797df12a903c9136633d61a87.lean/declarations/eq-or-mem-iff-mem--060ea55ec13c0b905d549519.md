# eq_or_mem_iff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c7a9fc0-e3a2-1bb3-2052-bdce7f7dda3e",
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
  "slug": "eq-or-mem-iff-mem--060ea55ec13c0b905d549519",
  "source": {
    "blob": "bb8a7cd095b3d89e1ee7aa62d16379af289e85f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 963,
    "line": 940,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:060ea55ec13c0b905d549519dbd772e41a4272d8536e48da3aaf69c47f56448f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c7a9fc0-e3a2-1bb3-2052-bdce7f7dda3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 940–963.

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
  · cases' this with i1 i2
    rw [i1, i2]
    cases' s' with f al
    dsimp only [cons, (· ∈ ·), WSeq.Mem, Seq.Mem, Seq.cons]
    have h_a_eq_a' : a = a' ↔ some (some a) = some (some a') := by simp
    rw [h_a_eq_a']
    refine' ⟨Stream'.eq_or_mem_of_mem_cons, fun o => _⟩
    · cases' o with e m
      · rw [e]
        apply Stream'.mem_cons
      · exact Stream'.mem_cons_of_mem _ m
  · simp [IH this]
#align stream.wseq.eq_or_mem_iff_mem Stream'.WSeq.eq_or_mem_iff_mem

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean#L940).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8a7cd095b3d89e1ee7aa62d16379af289e85f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
