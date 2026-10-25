# go_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f2c0dfc1cf3481dcc38db50da4a9dfc91114e87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:096c348d-2167-feb9-146c-848768e1b107",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e47adc07-2ac7-6d60-87c3-a607a45df74c",
  "kind": "theorem",
  "lexical_name": "go_get",
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
  "slug": "go-get--bac9a79ebcea911b3e8c10f2",
  "source": {
    "blob": "9f2c0dfc1cf3481dcc38db50da4a9dfc91114e87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variantae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bac9a79ebcea911b3e8c10f2a75e59f0222c64b20adc98f42d8e7af9c6d11d98",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variantae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e47adc07-2ac7-6d60-87c3-a607a45df74c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_get (aig : AIG α) (n : Nat) (curr : Nat) (hcurr : curr ≤ n)
    (input : AIG.RefVec aig w) (s : AIG.RefVec aig (w * curr)) :
    ∀ (idx : Nat) (hidx1 : idx < w * n),
        w * curr ≤ idx
          →
        (go n input curr hcurr s).get idx hidx1
          =
        input.get (idx % w) (aux2 hidx1) := by
  intro idx hidx1 hidx2
  unfold go
  dsimp only
  split
  · cases Nat.lt_or_ge idx (w * (curr + 1)) with
    | inl h =>
      rw [go_get_aux]
      rw [AIG.RefVec.get_append]
      · have : ¬ (idx < w * curr) := by omega
        simp only [this, ↓reduceDIte]
        congr 1
        rw [← Nat.sub_mul_mod (k := curr)]
        · rw [Nat.mod_eq_of_lt]
          apply Nat.sub_lt_left_of_lt_add <;> assumption
        · assumption
      · simpa using h
    | inr h =>
      rw [go_get]
      assumption
  · have : curr = n := by omega
    rw [this] at hidx2
    omega
termination_by n - curr

end blastReplicate

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variantae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variantae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f2c0dfc1cf3481dcc38db50da4a9dfc91114e87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
