# prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec998634cb126a4d65bb2537e80443fa908435fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c7ad74cf8707eccb1fd825885719af0ce6e88893f92a0c71c1611da76c8b99d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5854c4da-ee65-4a44-4540-ab89d5de0256",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d54d5929-840e-6dbd-c5b6-81b90435c6c9",
  "kind": "lemma",
  "lexical_name": "prod",
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
  "slug": "prod--a122dc9decaeb9b5b530b8ba",
  "source": {
    "blob": "ec998634cb126a4d65bb2537e80443fa908435fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 385,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2c7ad74cf8707eccb1fd825885719af0ce6e88893f92a0c71c1611da76c8b99d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a122dc9decaeb9b5b530b8bad99377acf948a10949143449925be59e93a209b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2c7ad74cf8707eccb1fd825885719af0ce6e88893f92a0c71c1611da76c8b99d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54d5929-840e-6dbd-c5b6-81b90435c6c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod {d₁ : Set α} {d₂ : Set β} (h₁ : DirectedOn (· ≼₁ ·) d₁) (h₂ : DirectedOn (· ≼₂ ·) d₂) :
    DirectedOn (fun p q ↦ p.1 ≼₁ q.1 ∧ p.2 ≼₂ q.2) (d₁ ×ˢ d₂) := fun _ hpd _ hqd => by
  obtain ⟨r₁, hdr₁, hpr₁, hqr₁⟩ := h₁ _ hpd.1 _ hqd.1
  obtain ⟨r₂, hdr₂, hpr₂, hqr₂⟩ := h₂ _ hpd.2 _ hqd.2
  exact ⟨⟨r₁, r₂⟩, ⟨hdr₁, hdr₂⟩, ⟨hpr₁, hpr₂⟩, ⟨hqr₁, hqr₂⟩⟩

end Prod

end DirectedOn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2c7ad74cf8707eccb1fd825885719af0ce6e88893f92a0c71c1611da76c8b99d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2c7ad74cf8707eccb1fd825885719af0ce6e88893f92a0c71c1611da76c8b99d.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec998634cb126a4d65bb2537e80443fa908435fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
