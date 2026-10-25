# image2_image2_image2_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e935df3819a7042b2d5b75f29074cd9f18dcf22f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2546ffe-5f8a-ca9c-4b34-a5884f128174",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:466afc54-4bcd-bf64-4fa3-512b447233cf",
  "kind": "theorem",
  "lexical_name": "image2_image2_image2_comm",
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
  "slug": "image2-image2-image2-comm--65b3c0b758daf9ea59e50a4d",
  "source": {
    "blob": "e935df3819a7042b2d5b75f29074cd9f18dcf22f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 338,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65b3c0b758daf9ea59e50a4df551e507b3af3d97a4401b813bf0db16df2b9d1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:466afc54-4bcd-bf64-4fa3-512b447233cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image2_image2_image2_comm {f : ε → ζ → ν} {g : α → β → ε} {h : γ → δ → ζ} {f' : ε' → ζ' → ν}
    {g' : α → γ → ε'} {h' : β → δ → ζ'}
    (h_comm : ∀ a b c d, f (g a b) (h c d) = f' (g' a c) (h' b d)) :
    image2 f (image2 g s t) (image2 h u v) = image2 f' (image2 g' s u) (image2 h' t v) := by
  ext; constructor
  · rintro ⟨_, _, ⟨a, b, ha, hb, rfl⟩, ⟨c, d, hc, hd, rfl⟩, rfl⟩
    exact ⟨_, _, ⟨a, c, ha, hc, rfl⟩, ⟨b, d, hb, hd, rfl⟩, (h_comm _ _ _ _).symm⟩
  · rintro ⟨_, _, ⟨a, c, ha, hc, rfl⟩, ⟨b, d, hb, hd, rfl⟩, rfl⟩
    exact ⟨_, _, ⟨a, b, ha, hb, rfl⟩, ⟨c, d, hc, hd, rfl⟩, h_comm _ _ _ _⟩
#align set.image2_image2_image2_comm Set.image2_image2_image2_comm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e935df3819a7042b2d5b75f29074cd9f18dcf22f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
