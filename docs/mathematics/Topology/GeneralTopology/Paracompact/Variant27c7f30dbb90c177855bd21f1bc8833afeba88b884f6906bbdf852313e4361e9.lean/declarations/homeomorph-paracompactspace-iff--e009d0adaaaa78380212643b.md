# Homeomorph.paracompactSpace_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "467b767e2718e1745e06725bc9c822535472a746",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b31f6591-267d-f1e9-eef1-0d516648c360",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c00763a-43e3-2398-a0b4-57863243ab75",
  "kind": "theorem",
  "lexical_name": "Homeomorph.paracompactSpace_iff",
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
  "slug": "homeomorph-paracompactspace-iff--e009d0adaaaa78380212643b",
  "source": {
    "blob": "467b767e2718e1745e06725bc9c822535472a746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e009d0adaaaa78380212643b22edf0df75d97f9af2cc542d3560c9f6f9f806ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c00763a-43e3-2398-a0b4-57863243ab75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Homeomorph.paracompactSpace_iff (e : X ≃ₜ Y) : ParacompactSpace X ↔ ParacompactSpace Y :=
  ⟨fun _ ↦ e.symm.isClosedEmbedding.paracompactSpace, fun _ ↦ e.isClosedEmbedding.paracompactSpace⟩

/-- The product of a compact space and a paracompact space is a paracompact space. The formalization
is based on https://dantopology.wordpress.com/2009/10/24/compact-x-paracompact-is-paracompact/
with some minor modifications.

This version assumes that `X` in `X × Y` is compact and `Y` is paracompact, see next lemma for the
other case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467b767e2718e1745e06725bc9c822535472a746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
