# wellFounded_iff_no_descending_seq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb4c11ab2b549a4c73aaa178f6b1560c4f960c81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbc348c5-3fc8-ad63-01b1-c01c9bc7c93f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34ecac1d-7d7b-8082-b184-630e53b2c3d5",
  "kind": "theorem",
  "lexical_name": "wellFounded_iff_no_descending_seq",
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
  "slug": "wellfounded-iff-no-descending-seq--3b3eead7087d7b88d2c0acd1",
  "source": {
    "blob": "fb4c11ab2b549a4c73aaa178f6b1560c4f960c81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b3eead7087d7b88d2c0acd16a216d806c090f0bc2b2af73e2c7f5c59969e6e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34ecac1d-7d7b-8082-b184-630e53b2c3d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_iff_no_descending_seq :
    WellFounded r ↔ IsEmpty { f : ℕ → α // ∀ n, r (f (n + 1)) (f n) } := by
  rw [WellFounded.wellFounded_iff_has_min]
  refine ⟨fun hr ↦ ⟨fun ⟨f, hf⟩ ↦ ?_⟩, ?_⟩
  · obtain ⟨_, ⟨n, rfl⟩, hn⟩ := hr _ (Set.range_nonempty f)
    exact hn _ (Set.mem_range_self (n + 1)) (hf n)
  · contrapose!
    rw [not_isEmpty_iff]
    rintro ⟨s, hs, hs'⟩
    let f : ℕ → s := Nat.rec (Classical.indefiniteDescription _ hs) fun n IH ↦
      ⟨(hs' _ IH.2).choose, (hs' _ IH.2).choose_spec.1⟩
    exact ⟨⟨Subtype.val ∘ f, fun n ↦ (hs' _ (f n).2).choose_spec.2⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb4c11ab2b549a4c73aaa178f6b1560c4f960c81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
