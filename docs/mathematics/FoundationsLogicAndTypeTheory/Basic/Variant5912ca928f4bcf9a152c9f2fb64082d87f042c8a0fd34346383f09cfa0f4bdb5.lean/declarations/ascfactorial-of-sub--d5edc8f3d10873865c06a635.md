# ascFactorial_of_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6e6106f1bb15e7e3c38e173fa8f1843e566fd90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bbb5f12-798c-c89b-590b-a52121ca355a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5292758-15e6-e9e4-9417-0397a88502b4",
  "kind": "theorem",
  "lexical_name": "ascFactorial_of_sub",
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
  "slug": "ascfactorial-of-sub--d5edc8f3d10873865c06a635",
  "source": {
    "blob": "b6e6106f1bb15e7e3c38e173fa8f1843e566fd90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 280,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5edc8f3d10873865c06a635c0694583a63ec3af99234569f9a536022ab9f7d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5292758-15e6-e9e4-9417-0397a88502b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ascFactorial_of_sub {n k : ℕ} (h : k < n) :
    (n - k) * (n - k).ascFactorial k = (n - (k + 1)).ascFactorial (k + 1) := by
  let t := n - k.succ
  let ht : t = n - k.succ := rfl
  suffices h' : n - k = t.succ; · rw [← ht, h', succ_ascFactorial, ascFactorial_succ]
  rw [ht, succ_eq_add_one, ← tsub_tsub_assoc (succ_le_of_lt h) (succ_pos _), succ_sub_one]
#align nat.asc_factorial_of_sub Nat.ascFactorial_of_sub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e6106f1bb15e7e3c38e173fa8f1843e566fd90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
