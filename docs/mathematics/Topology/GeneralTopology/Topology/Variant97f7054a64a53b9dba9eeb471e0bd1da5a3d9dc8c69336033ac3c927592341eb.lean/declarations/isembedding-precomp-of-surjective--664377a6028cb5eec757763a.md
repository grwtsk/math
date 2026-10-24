# isEmbedding_precomp_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89c4750d8a0ebe264381a21f01ed963bab796867",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdc389ab-2a88-07e8-9747-2a191c390598",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eebd2de2-c333-f87e-1891-1529a69d1f10",
  "kind": "lemma",
  "lexical_name": "isEmbedding_precomp_of_surjective",
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
  "slug": "isembedding-precomp-of-surjective--664377a6028cb5eec757763a",
  "source": {
    "blob": "89c4750d8a0ebe264381a21f01ed963bab796867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:664377a6028cb5eec757763a4cf8c3b11e6c05e6ca962225045c2d58044bba87",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eebd2de2-c333-f87e-1891-1529a69d1f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEmbedding_precomp_of_surjective
    (f : A ⟶ B) (hf : Function.Surjective f) :
    Topology.IsEmbedding ((f ≫ ·) : (B ⟶ R) → (A ⟶ R)) := by
  refine IsEmbedding.of_comp (continuous_precomp _) (IsInducing.induced _).continuous ?_
  suffices IsEmbedding ((· ∘ f.hom) : (B → R) → (A → R)) from
    this.comp (.induced (fun f g e ↦ by ext a; exact congr($e a)))
  exact Function.Surjective.isEmbedding_comp _ hf

/-- `Hom(A/I, R)` is a closed subspace of `Hom(A, R)` if `R` is T1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c4750d8a0ebe264381a21f01ed963bab796867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
