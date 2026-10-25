# readPairs_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67a56015d2be27dca8d8627889a3e163928fd9c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f54208f4-0cb5-1e10-64c0-792df841900a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48372fda-0b3c-4686-9837-a3f6999c9385",
  "kind": "theorem",
  "lexical_name": "readPairs_reconstruct",
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
  "slug": "readpairs-reconstruct--a5970437193da87e08988fd0",
  "source": {
    "blob": "67a56015d2be27dca8d8627889a3e163928fd9c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5970437193da87e08988fd0ff7163e73001210c0f9e12460a3f3f6c3cb0bf87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48372fda-0b3c-4686-9837-a3f6999c9385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readPairs_reconstruct (p : Bytes → Option (Value × Bytes))
    (hp : ∀ b v s, p b = some (v,s) → b = emit v ++ s)
    (n : Nat) : ∀ b ps s, readPairs p n b = some (ps,s) →
      ps.length = n ∧
        b = ps.flatMap (fun kv => emit (.text kv.1) ++ emit kv.2) ++ s := by
  induction n with
  | zero =>
    intro b ps s h
    simp [readPairs] at h
    rcases h with ⟨rfl,rfl⟩
    simp
  | succ n ih =>
    intro b ps s h
    cases hk : p b with
    | none => simp [readPairs, hk] at h
    | some pair =>
      rcases pair with ⟨key,t⟩
      cases ha : asText key with
      | none => simp [readPairs, hk, ha] at h
      | some k =>
        cases hv : p t with
        | none => simp [readPairs, hk, ha, hv] at h
        | some pair =>
          rcases pair with ⟨v,u⟩
          cases hz : readPairs p n u with
          | none => simp [readPairs, hk, ha, hv, hz] at h
          | some pair =>
            rcases pair with ⟨qs,z⟩
            simp [readPairs, hk, ha, hv, hz] at h
            rcases h with ⟨rfl,rfl⟩
            have hq := ih u qs z hz
            constructor
            · simp [hq.1]
            · rw [hp b key t hk, hp t v u hv, hq.2, asText_inverse ha]
              simp [List.append_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a56015d2be27dca8d8627889a3e163928fd9c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
