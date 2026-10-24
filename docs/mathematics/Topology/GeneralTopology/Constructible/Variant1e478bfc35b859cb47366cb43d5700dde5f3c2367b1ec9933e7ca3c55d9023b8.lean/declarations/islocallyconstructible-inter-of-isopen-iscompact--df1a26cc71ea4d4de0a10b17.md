# IsLocallyConstructible.inter_of_isOpen_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97b75b14b02033ef3d206a9f27720ec1b71f72ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51cc0e18-f702-e59c-8f5b-3938e74c4527",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23385eda-b547-72cf-6634-3a90b8eebcc3",
  "kind": "lemma",
  "lexical_name": "IsLocallyConstructible.inter_of_isOpen_isCompact",
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
  "slug": "islocallyconstructible-inter-of-isopen-iscompact--df1a26cc71ea4d4de0a10b17",
  "source": {
    "blob": "97b75b14b02033ef3d206a9f27720ec1b71f72ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 474,
    "path": "GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df1a26cc71ea4d4de0a10b17197fa91a6aa9d98994c7dfb3ccf104e131793d7d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23385eda-b547-72cf-6634-3a90b8eebcc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocallyConstructible.inter_of_isOpen_isCompact
    [PrespectralSpace X] [QuasiSeparatedSpace X]
    (hs : IsLocallyConstructible s) (ht : IsOpen t) (ht' : IsCompact t) :
    IsConstructible (s ∩ t) :=
  (hs.inter (ht'.isConstructible ht).isLocallyConstructible).isConstructible_of_subset_of_isCompact
    Set.inter_subset_right ht'

variable {ι : Type*} {U : ι → Opens X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b75b14b02033ef3d206a9f27720ec1b71f72ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
