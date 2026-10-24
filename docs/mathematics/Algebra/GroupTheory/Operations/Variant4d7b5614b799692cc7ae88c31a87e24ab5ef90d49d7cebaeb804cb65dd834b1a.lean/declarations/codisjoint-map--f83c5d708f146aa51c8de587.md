# codisjoint_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b17f9bab767328aa184ca4e026031c6d92829dab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1016,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52d220af-2222-cb34-e46c-c02e16fc681e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:593bc0a7-e18c-9eb1-063f-a0795f1375b0",
  "kind": "lemma",
  "lexical_name": "codisjoint_map",
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
  "slug": "codisjoint-map--f83c5d708f146aa51c8de587",
  "source": {
    "blob": "b17f9bab767328aa184ca4e026031c6d92829dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1031,
    "line": 1016,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f83c5d708f146aa51c8de587b5dd84109b23765e3a9681142065203c313285de",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:593bc0a7-e18c-9eb1-063f-a0795f1375b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1016–1031.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma codisjoint_map {F : Type*} [FunLike F M N] [MonoidHomClass F M N] {f : F}
    (hf : Function.Surjective f) {H K : Submonoid M} (h : Codisjoint H K) :
    Codisjoint (H.map f) (K.map f) := by
  rw [codisjoint_iff, ← map_sup, codisjoint_iff.mp h, ← MonoidHom.mrange_eq_map,
    mrange_eq_top_of_surjective _ hf]

section Pi

variable {ι : Type*} {M : ι → Type*} [∀ i, MulOneClass (M i)]

/-- A version of `Set.pi` for `Submonoid`s. Given an index set `I` and a family of `Submonoid`s
`s : Π i, Submonoid f i`, `pi I s` is the `Submonoid` of dependent functions `f : Π i, f i` such
that `f i` belongs to `Pi I s` whenever `i ∈ I`. -/
@[to_additive /-- A version of `Set.pi` for `AddSubmonoid`s. Given an index set `I` and a family
  of `AddSubmonoid`s `s : Π i, AddSubmonoid f i`, `pi I s` is the `AddSubmonoid` of dependent
  functions `f : Π i, f i` such that `f i` belongs to `pi I s` whenever `i ∈ I`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean#L1016).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17f9bab767328aa184ca4e026031c6d92829dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
