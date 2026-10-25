# shiftRight_trailingZeros_mod_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "197f830c1b5fd8c0e38afdc909f718c22a47905a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1f210c7-9104-1fda-516c-1c1f6b2b831b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:917f3b78-b14a-098c-bf18-6dbe11e258af",
  "kind": "theorem",
  "lexical_name": "shiftRight_trailingZeros_mod_two",
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
  "slug": "shiftright-trailingzeros-mod-two--5ca25a6bd128d7b89ad090ed",
  "source": {
    "blob": "197f830c1b5fd8c0e38afdc909f718c22a47905a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ca25a6bd128d7b89ad090ed1903ca9d9e65fe1bd46717ae2052410e157f7404",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:917f3b78-b14a-098c-bf18-6dbe11e258af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftRight_trailingZeros_mod_two {i : Int} (h : i ≠ 0) :
    (i >>> i.trailingZeros) % 2 = 1 := by
  rw (occs := .pos [2]) [← Int.emod_add_mul_ediv i 2]
  rcases i.emod_two_eq with h' | h' <;> rw [h']
  · rcases Int.dvd_of_emod_eq_zero h' with ⟨a, rfl⟩
    simp only [ne_eq, Int.mul_eq_zero, Int.reduceEq, false_or] at h
    rw [Int.zero_add, mul_ediv_cancel_left _ (by decide), trailingZeros_two_mul h, Nat.add_comm,
      shiftRight_add, shiftRight_eq_div_pow _ 1]
    simpa using shiftRight_trailingZeros_mod_two h
  · rwa [Int.add_comm, trailingZeros_two_mul_add_one, shiftRight_zero]
termination_by i.natAbs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `197f830c1b5fd8c0e38afdc909f718c22a47905a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
