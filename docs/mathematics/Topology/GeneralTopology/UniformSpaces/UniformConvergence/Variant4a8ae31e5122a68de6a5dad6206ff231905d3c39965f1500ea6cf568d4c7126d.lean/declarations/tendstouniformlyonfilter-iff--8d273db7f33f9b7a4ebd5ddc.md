# tendstoUniformlyOnFilter_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c211454482223ca2c3298c9f35ff078031a90e2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b820cfb-56a8-89c3-5943-48fc3e8bd4d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47a8bc80-e7b1-2ba7-e905-224805e66ef1",
  "kind": "lemma",
  "lexical_name": "tendstoUniformlyOnFilter_iff",
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
  "slug": "tendstouniformlyonfilter-iff--8d273db7f33f9b7a4ebd5ddc",
  "source": {
    "blob": "c211454482223ca2c3298c9f35ff078031a90e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d273db7f33f9b7a4ebd5ddc3d62095bec62e0231cb29dde8d353885c70c6e38",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47a8bc80-e7b1-2ba7-e905-224805e66ef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoUniformlyOnFilter_iff {F : X → α → β} {f : α → β}
    {l : Filter X} {l' : Filter α} {pX : ιX → Prop} {sX : ιX → Set X}
    {pα : ια → Prop} {sα : ια → Set α} {pβ : ιβ → Prop} {sβ : ιβ → Set (β × β)}
    (hl : l.HasBasis pX sX) (hl' : l'.HasBasis pα sα)
    (hβ : (uniformity β).HasBasis pβ sβ) :
    TendstoUniformlyOnFilter F f l l' ↔
      (∀ i, pβ i → ∃ j k, (pX j ∧ pα k) ∧ ∀ x a, x ∈ sX j → a ∈ sα k → (f a, F x a) ∈ sβ i) := by
  simp [hβ.tendstoUniformlyOnFilter_iff_of_uniformity, (hl.prod hl').eventually_iff]

/-- An analogue of `Filter.HasBasis.tendsto_right_iff` for `TendstoUniformlyOn`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c211454482223ca2c3298c9f35ff078031a90e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
