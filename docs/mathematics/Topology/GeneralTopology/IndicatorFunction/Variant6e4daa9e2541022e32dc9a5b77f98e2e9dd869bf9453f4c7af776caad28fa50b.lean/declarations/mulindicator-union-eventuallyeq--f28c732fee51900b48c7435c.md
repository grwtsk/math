# mulIndicator_union_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce817acdc5544e9ddf6a8d1f99b89ef0a25cd9c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d60a03a7-a87d-db09-40f8-6b9226820959",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4138395e-5a73-0aa2-eb64-0d8756cf441c",
  "kind": "theorem",
  "lexical_name": "mulIndicator_union_eventuallyEq",
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
  "slug": "mulindicator-union-eventuallyeq--f28c732fee51900b48c7435c",
  "source": {
    "blob": "ce817acdc5544e9ddf6a8d1f99b89ef0a25cd9c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28c732fee51900b48c7435c0a3f3859e24f8bd63ce8f3258dc84ba8633a6787",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4138395e-5a73-0aa2-eb64-0d8756cf441c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulIndicator_union_eventuallyEq (h : ∀ᶠ a in l, a ∉ s ∩ t) :
    mulIndicator (s ∪ t) f =ᶠ[l] mulIndicator s f * mulIndicator t f :=
  h.mono fun _a ha => mulIndicator_union_of_notMem_inter ha _

end Monoid

section Order

variable [One β] [Preorder β] {s t : Set α} {f g : α → β} {a : α} {l : Filter α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce817acdc5544e9ddf6a8d1f99b89ef0a25cd9c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
