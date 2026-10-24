# tendsto_atBot_embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e447d6ce227616824183864ce88ad7a07dbb2148",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dd2f14f-1c30-a40a-b9d7-92729ec0d352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7084d3b-10b6-1668-5b6c-7f8c69f91841",
  "kind": "theorem",
  "lexical_name": "tendsto_atBot_embedding",
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
  "slug": "tendsto-atbot-embedding--cd169dbedd6a47d474e11867",
  "source": {
    "blob": "e447d6ce227616824183864ce88ad7a07dbb2148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd169dbedd6a47d474e118671121fb871dbf8c25527a227198160168684ed509",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7084d3b-10b6-1668-5b6c-7f8c69f91841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atBot_embedding [Preorder β] [Preorder γ] {f : α → β} {e : β → γ} {l : Filter α}
    (hm : ∀ b₁ b₂, e b₁ ≤ e b₂ ↔ b₁ ≤ b₂) (hu : ∀ c, ∃ b, e b ≤ c) :
    Tendsto (e ∘ f) l atBot ↔ Tendsto f l atBot :=
  @tendsto_atTop_embedding α βᵒᵈ γᵒᵈ _ _ f e l (Function.swap hm) hu

/-- If `u` is a monotone function with linear ordered codomain and the range of `u` is not bounded
above, then `Tendsto u atTop atTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e447d6ce227616824183864ce88ad7a07dbb2148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
