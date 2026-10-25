# decode_reconstruct_supported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7c411679a4edb97d1575a079728fecfb7fa360f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 5,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-reconstruction/RecordReconstruction-v2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f708e7ba-7878-2583-f161-6f27fff5d03f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33e58dc5-cd7e-3a1d-23c3-073c45d76c5b",
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
  "slug": "decode-reconstruct-supported--1aac36054e10dbeb3fb0ad6f",
  "source": {
    "blob": "b7c411679a4edb97d1575a079728fecfb7fa360f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 5,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecordReconstructionV2/Variantc55290aa942a830bd18561c8241a479388133301e47f922bf33294234aff3bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aac36054e10dbeb3fb0ad6f5a89c350e80d75422ffa417c43d4f3f499e97de6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecordReconstructionV2/Variantc55290aa942a830bd18561c8241a479388133301e47f922bf33294234aff3bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33e58dc5-cd7e-3a1d-23c3-073c45d76c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decode_reconstruct_supported {b : Bytes} {r : Record}
    (h : decode b = some r) : bytes r = b ∧ Supported r := by
  by_cases hg : (b.length > 16384 || b.take 5 != "GKC1\n".toList) = true
  · have hbad : b.length > 16384 ∨ b.take 5 ≠ "GKC1\n".toList := by
      simpa using hg
    rcases hbad with hsize | hprefix
    · simp [decode, hsize] at h
    · simp [decode, hprefix] at h
  · have hguards : b.length ≤ 16384 ∧ b.take 5 = "GKC1\n".toList := by
      simpa using hg
    rcases hguards with ⟨hbnd,hhead⟩
    simp only [decode, hg, ↓reduceIte] at h
    cases hp : parseValue 33 (b.drop 5) with
    | none => simp [hp] at h
    | some pair =>
      rcases pair with ⟨v,s⟩
      simp only [hp, Option.bind_some] at h
      by_cases hs : s.isEmpty = true
      · have he : s = [] := by simpa using hs
        subst s
        simp only [List.isEmpty_nil, Bool.not_true, Bool.false_eq_true, ↓reduceIte] at h
        split at h
        next _ k d l ps =>
          split at h
          next hbad => simp at h
          next hgood =>
            have hk : k = "domain".toList := by
              apply Classical.byContradiction
              intro hn
              simp [hn] at hgood
            have hl : l = "fields".toList := by
              apply Classical.byContradiction
              intro hn
              simp [hn] at hgood
            have hschema : schema d ps = true := by
              cases ht : schema d ps <;> simp_all
            have hv : valueOK 0 (.map [(k,.text d),(l,.map ps)]) = true := by
              cases ht : valueOK 0 (.map [(k,.text d),(l,.map ps)]) <;> simp_all
            subst k
            subst l
            simp at h
            subst r
            have hw := parse_value_reconstruct 33 (b.drop 5)
              (.map [("domain".toList,.text d),("fields".toList,.map ps)]) [] hp
            have hb : bytes (⟨d,ps⟩ : Record) = b := by
              rw [← List.take_append_drop 5 b, hhead, hw]
              simp [bytes, envelope]
            exact ⟨hb, hschema, hv, by simpa [hb] using hbnd⟩
        next => simp at h
      · have hs' : s.isEmpty = false := by cases ht : s.isEmpty <;> simp_all
        simp [hs'] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecordReconstructionV2/Variantc55290aa942a830bd18561c8241a479388133301e47f922bf33294234aff3bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecordReconstructionV2/Variantc55290aa942a830bd18561c8241a479388133301e47f922bf33294234aff3bb3.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7c411679a4edb97d1575a079728fecfb7fa360f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
