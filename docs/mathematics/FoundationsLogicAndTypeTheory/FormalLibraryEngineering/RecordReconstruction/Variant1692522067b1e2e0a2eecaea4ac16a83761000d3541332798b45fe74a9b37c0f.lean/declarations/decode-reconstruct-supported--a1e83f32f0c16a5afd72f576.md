# decode_reconstruct_supported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55342620e16d21ed89121852d2f0accf7f38ed6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 7,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-reconstruction/RecordReconstruction-v3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2167b002-4218-d7d0-db19-ee9f5fac5f2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "55342620e16d21ed89121852d2f0accf7f38ed6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 7,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/foundation/canonical/formal/c2/RecordReconstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06218516-f6aa-5563-6191-5c968896c994",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2469e802-eae5-2ab8-4c90-67b7da51c143",
  "kind": "theorem",
  "lexical_name": "decode_reconstruct_supported",
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
  "slug": "decode-reconstruct-supported--a1e83f32f0c16a5afd72f576",
  "source": {
    "blob": "55342620e16d21ed89121852d2f0accf7f38ed6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 7,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecordReconstruction/Variant1692522067b1e2e0a2eecaea4ac16a83761000d3541332798b45fe74a9b37c0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e83f32f0c16a5afd72f576d2d016a2c3481dd585b4225c69343ed7d56c66ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecordReconstruction/Variant1692522067b1e2e0a2eecaea4ac16a83761000d3541332798b45fe74a9b37c0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2469e802-eae5-2ab8-4c90-67b7da51c143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decode_reconstruct_supported {b : Bytes} {r : Record}
    (h : decode b = some r) : bytes r = b ∧ Supported r := by
  cases hp : parseValue 33 (b.drop 5) with
  | none => simp [decode, hp] at h
  | some pair =>
    rcases pair with ⟨v,s⟩
    simp only [decode, hp, Option.bind_eq_bind, Option.bind_some, Option.pure_def] at h
    split at h
    next hg => simp at h
    next hg =>
      have hguards : b.length ≤ 16384 ∧ b.take 5 = "GKC1\n".toList := by
        simpa using hg
      rcases hguards with ⟨hbnd,hhead⟩
      split at h
      next hs => simp at h
      next hs =>
        have he : s = [] := by simpa using hs
        subst s
        split at h
        next _ k d l ps =>
          split at h
          next hbad => simp at h
          next hgood =>
            have hgates : ((k = "domain".toList ∧ l = "fields".toList) ∧
                schema d ps = true) ∧
                valueOK 0 (.map [(k,.text d),(l,.map ps)]) = true := by
              simpa using hgood
            rcases hgates with ⟨⟨⟨hk,hl⟩,hschema⟩,hv⟩
            subst k
            subst l
            have hr := Option.some.inj h
            subst r
            have hw := parse_value_reconstruct 33 (b.drop 5)
              (.map [("domain".toList,.text d),("fields".toList,.map ps)]) [] hp
            have hb : bytes (⟨d,ps⟩ : Record) = b := by
              calc
                bytes (⟨d,ps⟩ : Record) = "GKC1\n".toList ++
                    emit (envelope (⟨d,ps⟩ : Record)) := rfl
                _ = b.take 5 ++ b.drop 5 := by rw [hhead, hw]; simp [envelope]
                _ = b := List.take_append_drop 5 b
            exact ⟨hb, hschema, hv, by simpa [hb] using hbnd⟩
        next => simp at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecordReconstruction/Variant1692522067b1e2e0a2eecaea4ac16a83761000d3541332798b45fe74a9b37c0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecordReconstruction/Variant1692522067b1e2e0a2eecaea4ac16a83761000d3541332798b45fe74a9b37c0f.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55342620e16d21ed89121852d2f0accf7f38ed6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
