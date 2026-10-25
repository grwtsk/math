# succ_le_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ba557babeaeb9b7a8102f8396bc55a92dba3650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1013,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f306d8e9-476e-e841-2f59-4d6541ee95d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e727c97f-eba2-02b3-27f0-430ecef22f08",
  "kind": "theorem",
  "lexical_name": "succ_le_iff'",
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
  "slug": "succ-le-iff--cde84ae39e4566cf7bc93dd1",
  "source": {
    "blob": "9ba557babeaeb9b7a8102f8396bc55a92dba3650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1039,
    "line": 1013,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde84ae39e4566cf7bc93dd1260f6ccb4ad249e89fa94574f47b6b3093e7fa38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e727c97f-eba2-02b3-27f0-430ecef22f08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1013–1039.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem succ_le_iff' {a b : Ordinal} : a + 1 ≤ b ↔ a < b :=
  ⟨lt_of_lt_of_le
      (inductionOn a fun α r _ =>
        ⟨⟨⟨⟨fun x => Sum.inl x, fun _ _ => Sum.inl.inj⟩, Sum.lex_inl_inl⟩,
            Sum.inr PUnit.unit, fun b =>
            Sum.recOn b (fun x => ⟨fun _ => ⟨x, rfl⟩, fun _ => Sum.Lex.sep _ _⟩) fun x =>
              Sum.lex_inr_inr.trans ⟨False.elim, fun ⟨x, H⟩ => Sum.inl_ne_inr H⟩⟩⟩),
    inductionOn a fun α r hr =>
      inductionOn b fun β s hs ⟨⟨f, t, hf⟩⟩ => by
        haveI := hs
        refine' ⟨⟨RelEmbedding.ofMonotone (Sum.rec f fun _ => t) (fun a b ↦ _), fun a b ↦ _⟩⟩
        · rcases a with (a | _) <;> rcases b with (b | _)
          · simpa only [Sum.lex_inl_inl] using f.map_rel_iff.2
          · intro
            rw [hf]
            exact ⟨_, rfl⟩
          · exact False.elim ∘ Sum.lex_inr_inl
          · exact False.elim ∘ Sum.lex_inr_inr.1
        · rcases a with (a | _)
          · intro h
            have := @PrincipalSeg.init _ _ _ _ _ ⟨f, t, hf⟩ _ _ h
            cases' this with w h
            exact ⟨Sum.inl w, h⟩
          · intro h
            cases' (hf b).1 h with w h
            exact ⟨Sum.inl w, h⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean#L1013).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba557babeaeb9b7a8102f8396bc55a92dba3650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
