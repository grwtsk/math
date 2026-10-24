# left_mem_of_mk_mem_sym2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6783e4cd4a416ce8c6d439f827b2c814764a99a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85d841f0-3965-392f-266f-34b0545d675d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9db5a203-ddbe-bbe5-c032-618bf0f0229a",
  "kind": "theorem",
  "lexical_name": "left_mem_of_mk_mem_sym2",
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
  "slug": "left-mem-of-mk-mem-sym2--534448e7f9d0b860c0b9d780",
  "source": {
    "blob": "6783e4cd4a416ce8c6d439f827b2c814764a99a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:534448e7f9d0b860c0b9d780feaafa3ffc005e688ba5b4673cc5e4e96b4bab64",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9db5a203-ddbe-bbe5-c032-618bf0f0229a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem left_mem_of_mk_mem_sym2 {xs : List α} {a b : α}
    (h : s(a, b) ∈ xs.sym2) : a ∈ xs := by
  induction xs with
  | nil => exact (not_mem_nil h).elim
  | cons x xs ih =>
    rw [mem_cons]
    rw [mem_sym2_cons_iff] at h
    obtain (h | ⟨c, hc, h⟩ | h) := h
    · rw [Sym2.eq_iff, ← and_or_left] at h
      exact .inl h.1
    · rw [Sym2.eq_iff] at h
      obtain (⟨rfl, rfl⟩ | ⟨rfl, rfl⟩) := h <;> simp [hc]
    · exact .inr <| ih h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6783e4cd4a416ce8c6d439f827b2c814764a99a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
