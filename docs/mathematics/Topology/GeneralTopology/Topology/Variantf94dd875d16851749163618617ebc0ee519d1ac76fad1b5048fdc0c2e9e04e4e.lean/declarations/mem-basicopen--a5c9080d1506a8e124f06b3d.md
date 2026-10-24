# mem_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad08528038d2e903d3398363c01a78edbe04382c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c7e2686-2ea2-7e98-f7ce-6473f66e16ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ceefbef2-36f2-e456-c1a2-c3d9686b50c6",
  "kind": "theorem",
  "lexical_name": "mem_basicOpen",
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
  "slug": "mem-basicopen--a5c9080d1506a8e124f06b3d",
  "source": {
    "blob": "ad08528038d2e903d3398363c01a78edbe04382c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5c9080d1506a8e124f06b3d38cb6f02aa5697cb138486cec669b71371267e30",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceefbef2-36f2-e456-c1a2-c3d9686b50c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_basicOpen (f : A) (x : ProjectiveSpectrum 𝒜) :
    x ∈ basicOpen 𝒜 f ↔ f ∉ x.asHomogeneousIdeal :=
  Iff.rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad08528038d2e903d3398363c01a78edbe04382c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
