# mapQ_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3ec3997f5439a46787d4615bcc3a854676f8525",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34a0939c096f1047fbdcd81b2821e07e8282ae5c6f4d946f0a0ad0b78a609435.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:080c9b87-f5e4-5a79-d18d-75771d91a240",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60930264-3970-eeb1-542d-591fbd0cd717",
  "kind": "theorem",
  "lexical_name": "mapQ_zero",
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
  "slug": "mapq-zero--b68cdeaf85efb1a07e4b7c39",
  "source": {
    "blob": "c3ec3997f5439a46787d4615bcc3a854676f8525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 416,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant34a0939c096f1047fbdcd81b2821e07e8282ae5c6f4d946f0a0ad0b78a609435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b68cdeaf85efb1a07e4b7c3956f7407c3ef31240ffd28c1c0f97f1fcdb68bcfc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant34a0939c096f1047fbdcd81b2821e07e8282ae5c6f4d946f0a0ad0b78a609435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60930264-3970-eeb1-542d-591fbd0cd717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapQ_zero (h : p ≤ q.comap (0 : M →ₛₗ[τ₁₂] M₂) := (by simp)) :
    p.mapQ q (0 : M →ₛₗ[τ₁₂] M₂) h = 0 := by
  ext
  simp
#align submodule.mapq_zero Submodule.mapQ_zero

/-- Given submodules `p ⊆ M`, `p₂ ⊆ M₂`, `p₃ ⊆ M₃` and maps `f : M → M₂`, `g : M₂ → M₃` inducing
`mapQ f : M ⧸ p → M₂ ⧸ p₂` and `mapQ g : M₂ ⧸ p₂ → M₃ ⧸ p₃` then
`mapQ (g ∘ f) = (mapQ g) ∘ (mapQ f)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant34a0939c096f1047fbdcd81b2821e07e8282ae5c6f4d946f0a0ad0b78a609435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant34a0939c096f1047fbdcd81b2821e07e8282ae5c6f4d946f0a0ad0b78a609435.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3ec3997f5439a46787d4615bcc3a854676f8525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
