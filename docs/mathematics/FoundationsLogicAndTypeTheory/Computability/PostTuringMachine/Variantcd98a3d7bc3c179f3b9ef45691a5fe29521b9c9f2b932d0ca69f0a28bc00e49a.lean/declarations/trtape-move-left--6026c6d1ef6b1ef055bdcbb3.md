# trTape'_move_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 974,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f4ce403-8562-a7fa-f292-921b5b54749b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b70bbd7-9ecd-1399-46bb-515163f03368",
  "kind": "theorem",
  "lexical_name": "trTape'_move_left",
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
  "slug": "trtape-move-left--6026c6d1ef6b1ef055bdcbb3",
  "source": {
    "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 990,
    "line": 974,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6026c6d1ef6b1ef055bdcbb31b53e003c46cf87ba07ce7c77ade820ae30674ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b70bbd7-9ecd-1399-46bb-515163f03368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 974–990.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trTape'_move_left (L R : ListBlank Γ) :
    (Tape.move Dir.left)^[n] (trTape' enc0 L R) = trTape' enc0 L.tail (R.cons L.head) := by
  obtain ⟨a, L, rfl⟩ := L.exists_cons
  simp only [trTape', ListBlank.cons_flatMap, ListBlank.head_cons, ListBlank.tail_cons]
  suffices ∀ {L' R' l₁ l₂} (_ : Vector.toList (enc a) = List.reverseAux l₁ l₂),
      (Tape.move Dir.left)^[l₁.length]
      (Tape.mk' (ListBlank.append l₁ L') (ListBlank.append l₂ R')) =
      Tape.mk' L' (ListBlank.append (Vector.toList (enc a)) R') by
    simpa only [List.length_reverse, Vector.toList_length] using this (List.reverse_reverse _).symm
  intro _ _ l₁ l₂ e
  induction' l₁ with b l₁ IH generalizing l₂
  · cases e
    rfl
  simp only [List.length, List.cons_append, iterate_succ_apply]
  convert IH e
  simp only [ListBlank.tail_cons, ListBlank.append, Tape.move_left_mk', ListBlank.head_cons]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean#L974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee1a79ce54aa340ecbff62a956332bd6748fbf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
