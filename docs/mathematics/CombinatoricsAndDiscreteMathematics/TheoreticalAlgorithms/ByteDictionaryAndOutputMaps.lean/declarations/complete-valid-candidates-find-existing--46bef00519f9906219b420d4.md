# complete_valid_candidates_find_existing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 714,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b099e11-6cb7-9540-f6c6-26cb30d52dce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d8f7a6c-1192-60a1-3575-3095a64f06d5",
  "kind": "theorem",
  "lexical_name": "complete_valid_candidates_find_existing",
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
  "slug": "complete-valid-candidates-find-existing--46bef00519f9906219b420d4",
  "source": {
    "blob": "d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 714,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46bef00519f9906219b420d4eab84e54286147f2bca07bf888a60e4c30eaf53e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d8f7a6c-1192-60a1-3575-3095a64f06d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_valid_candidates_find_existing {objects : List Bytes} {payload : Bytes}
    {candidates : List Nat} (complete : CandidateCoverage objects payload candidates)
    (valid : ∀ index ∈ candidates, ∃ bytes, objects[index]? = some bytes)
    (present : payload ∈ objects) :
    ∃ index, candidateLookup objects payload candidates = some (some index) ∧ objects[index]? = some payload := by
  have wellformed : (candidateLookup objects payload candidates).isSome = true := by
    induction candidates with
    | nil => rfl
    | cons index rest ih =>
        obtain ⟨bytes, exact⟩ := valid index (by simp)
        by_cases same : bytes = payload
        · simp [candidateLookup, exact, same]
        · simp [candidateLookup, exact, same]
          apply ih
          · intro i found
            rcases List.mem_cons.mp (complete i found) with equal | tail
            · subst i
              have := Option.some.inj (exact.symm.trans found)
              exact False.elim (same this)
            · exact tail
          · intro i member
            exact valid i (by simp [member])
  cases result : candidateLookup objects payload candidates with
  | none => simp [result] at wellformed
  | some outcome =>
      cases outcome with
      | none => exact False.elim (complete_candidate_miss_implies_absent complete result present)
      | some index => exact ⟨index, rfl, (candidateLookup_hit_sound result).2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
