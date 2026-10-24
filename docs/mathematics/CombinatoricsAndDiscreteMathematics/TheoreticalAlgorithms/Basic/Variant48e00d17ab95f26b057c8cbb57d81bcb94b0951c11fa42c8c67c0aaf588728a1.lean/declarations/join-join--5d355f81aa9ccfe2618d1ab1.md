# join_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "590f8d1b96a021da3414c501f01d0c9c564748a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1051,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e2bf256-2f5c-8e6c-660f-2497f0c3e00e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca97df69-7a59-7e17-6a91-3cde44dda774",
  "kind": "theorem",
  "lexical_name": "join_join",
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
  "slug": "join-join--5d355f81aa9ccfe2618d1ab1",
  "source": {
    "blob": "590f8d1b96a021da3414c501f01d0c9c564748a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1071,
    "line": 1051,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d355f81aa9ccfe2618d1ab1f689c5963e5972bf6f33db46099f7b38cfb55053",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca97df69-7a59-7e17-6a91-3cde44dda774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1051–1071.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem join_join (SS : Seq (Seq1 (Seq1 α))) :
    Seq.join (Seq.join SS) = Seq.join (Seq.map join SS) := by
  apply
    Seq.eq_of_bisim fun s1 s2 =>
      ∃ s SS,
        s1 = Seq.append s (Seq.join (Seq.join SS)) ∧ s2 = Seq.append s (Seq.join (Seq.map join SS))
  · rintro s1 s2 ⟨s, SS, rfl, rfl⟩
    cases s with
    | nil =>
      cases SS with
      | nil => simp
      | cons S SS =>
        obtain ⟨⟨x, s⟩, S⟩ := S
        cases s with
        | nil => simpa using ⟨_, _, rfl, rfl⟩
        | cons x s => simpa using ⟨Seq.cons x (append s (Seq.join S)), SS, by simp, by simp⟩
    | cons _ s => simpa using ⟨s, SS, rfl, rfl⟩
  · simpa using ⟨nil, SS, by simp, by simp⟩

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean#L1051).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590f8d1b96a021da3414c501f01d0c9c564748a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
