# parse_value_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "319076a366bd009894493700cb685aea9e95d39b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-reconstruction/ParserReconstruction-v2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:518f3aa8-6ae0-b5a0-463f-636332683e71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "319076a366bd009894493700cb685aea9e95d39b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/foundation/canonical/formal/c2/ParserReconstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e17e1d7-1ee8-d6bf-9c84-1650d0255fbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8aba8e84-3599-249d-405e-60ed294e4e3c",
  "kind": "theorem",
  "lexical_name": "parse_value_reconstruct",
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
  "slug": "parse-value-reconstruct--df3dc6d936991e37e8ed18a9",
  "source": {
    "blob": "319076a366bd009894493700cb685aea9e95d39b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV2/Variant63258c0de7f91abf32a0dda3593be408f7fe8478da7bf3f76f60314478368b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df3dc6d936991e37e8ed18a9c3dc0847950936b94e9d9703a95184dfa9d3adb9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV2/Variant63258c0de7f91abf32a0dda3593be408f7fe8478da7bf3f76f60314478368b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aba8e84-3599-249d-405e-60ed294e4e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parse_value_reconstruct (fuel : Nat) : ∀ b v s,
    parseValue fuel b = some (v,s) → b = emit v ++ s := by
  induction fuel with
  | zero => intro b v s h; simp [parseValue] at h
  | succ fuel ih =>
    intro b v s h
    unfold parseValue at h
    split at h
    next _ cs =>
      simp at h
      rcases h with ⟨rfl,rfl⟩
      simp [emit]
    next _ cs =>
      simp at h
      rcases h with ⟨rfl,rfl⟩
      simp [emit]
    next _ cs =>
      cases hd : readUntil ';' cs with
      | none => simp [hd] at h
      | some pair =>
        rcases pair with ⟨digits,t⟩
        cases hn : integer digits with
        | none => simp [hd, hn] at h
        | some n =>
          simp [hd, hn] at h
          rcases h with ⟨rfl,rfl⟩
          rw [ readUntil_reconstruct hd, integer_reconstruct hn]
          simp [emit, List.append_assoc]
    next _ cs =>
      cases hd : readUntil '/' cs with
      | none => simp [hd] at h
      | some pair =>
        rcases pair with ⟨digits,t⟩
        cases hn : integer digits with
        | none => simp [hd, hn] at h
        | some n =>
          cases hd' : readNat ';' t with
          | none => simp [hd, hn, hd'] at h
          | some pair =>
            rcases pair with ⟨d,u⟩
            simp [hd, hn, hd'] at h
            rcases h with ⟨rfl,rfl⟩
            rw [ readUntil_reconstruct hd, integer_reconstruct hn,
              readNat_reconstruct hd']
            simp [emit, List.append_assoc]
    next _ cs =>
      cases hn : readNat ':' cs with
      | none => simp [hn] at h
      | some pair =>
        rcases pair with ⟨n,t⟩
        by_cases hc : n > 16384
        · simp [hn, hc] at h
        · cases hp : splitAt n t with
          | none => simp [hn, hc, hp] at h
          | some pair =>
            rcases pair with ⟨text,u⟩
            simp [hn, hc, hp] at h
            rcases h with ⟨rfl,rfl⟩
            rw [ readNat_reconstruct hn, splitAt_reconstruct hp]
            simp [emit, splitAt_length hp, List.append_assoc]
    next _ cs =>
      cases hn : readNat ':' cs with
      | none => simp [hn] at h
      | some pair =>
        rcases pair with ⟨n,t⟩
        by_cases hc : n > 256
        · simp [hn, hc] at h
        · cases hp : readMany (parseValue fuel) n t with
          | none => simp [hn, hc, hp] at h
          | some pair =>
            rcases pair with ⟨vs,u⟩
            simp [hn, hc, hp] at h
            rcases h with ⟨rfl,rfl⟩
            have hw := readMany_reconstruct (parseValue fuel) ih n t vs u hp
            rw [ readNat_reconstruct hn, hw.2]
            simp [emit, hw.1, List.append_assoc]
    next _ cs =>
      cases hn : readNat ':' cs with
      | none => simp [hn] at h
      | some pair =>
        rcases pair with ⟨n,t⟩
        by_cases hc : n > 64
        · simp [hn, hc] at h
        · cases hp : readPairs (parseValue fuel) n t with
          | none => simp [hn, hc, hp] at h
          | some pair =>
            rcases pair with ⟨ps,u⟩
            simp [hn, hc, hp] at h
            rcases h with ⟨rfl,rfl⟩
            have hw := readPairs_reconstruct (parseValue fuel) ih n t ps u hp
            rw [ readNat_reconstruct hn, hw.2]
            simp [emit, hw.1, List.append_assoc]
    next => simp at h

#print axioms parse_value_reconstruct

#print axioms asText_inverse
#print axioms readMany_reconstruct
#print axioms readPairs_reconstruct
end C2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV2/Variant63258c0de7f91abf32a0dda3593be408f7fe8478da7bf3f76f60314478368b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV2/Variant63258c0de7f91abf32a0dda3593be408f7fe8478da7bf3f76f60314478368b54.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319076a366bd009894493700cb685aea9e95d39b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
