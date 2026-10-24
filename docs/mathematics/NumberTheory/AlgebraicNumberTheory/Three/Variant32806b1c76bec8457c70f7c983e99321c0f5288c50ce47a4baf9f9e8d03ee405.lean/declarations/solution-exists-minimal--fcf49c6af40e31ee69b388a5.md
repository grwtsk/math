# Solution.exists_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6a73389cd2521fd69b81523553518af303cf6b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ad027a4-e03b-75f9-2e2d-cdbb7245b8fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:360208b0-49a8-039f-549a-255cd34b3518",
  "kind": "lemma",
  "lexical_name": "Solution.exists_minimal",
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
  "slug": "solution-exists-minimal--fcf49c6af40e31ee69b388a5",
  "source": {
    "blob": "e6a73389cd2521fd69b81523553518af303cf6b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 232,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcf49c6af40e31ee69b388a5dcab997491768d2186fba0f72ac236a2342d2566",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:360208b0-49a8-039f-549a-255cd34b3518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Solution.exists_minimal : ∃ (S₁ : Solution hζ), S₁.isMinimal := by
  classical
  let T := {n | ∃ (S' : Solution hζ), S'.multiplicity = n}
  rcases Nat.find_spec (⟨S.multiplicity, ⟨S, rfl⟩⟩ : T.Nonempty) with ⟨S₁, hS₁⟩
  exact ⟨S₁, fun S'' ↦ hS₁ ▸ Nat.find_min' _ ⟨S'', rfl⟩⟩

/-- Given `S' : Solution'`, then `S'.a` and `S'.b` are both congruent to `1` modulo `λ ^ 4` or are
both congruent to `-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6a73389cd2521fd69b81523553518af303cf6b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
