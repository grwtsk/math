# _root_.ContinuousWithinAt.lineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7e81cea003234c3096df891c8190e9c40030bce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccd534231eb98c2a00eb2e5e346b47dce737e5165676cc129d08d02966ee05b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d15f450-9169-57b7-0e1c-dc6c063854d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6bad978-69fd-12ea-8eb6-a78501f8df32",
  "kind": "theorem",
  "lexical_name": "_root_.ContinuousWithinAt.lineMap",
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
  "slug": "root-continuouswithinat-linemap--7b4746f4d2a5d2b040136b5f",
  "source": {
    "blob": "c7e81cea003234c3096df891c8190e9c40030bce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/Affine/Variantccd534231eb98c2a00eb2e5e346b47dce737e5165676cc129d08d02966ee05b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b4746f4d2a5d2b040136b5f67a6a48c9f906cea0452143aa15200a02a176ed2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Affine/Variantccd534231eb98c2a00eb2e5e346b47dce737e5165676cc129d08d02966ee05b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6bad978-69fd-12ea-8eb6-a78501f8df32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.ContinuousWithinAt.lineMap (h₁ : ContinuousWithinAt f₁ s x)
    (h₂ : ContinuousWithinAt f₂ s x) (hg : ContinuousWithinAt g s x) :
    ContinuousWithinAt (fun x ↦ lineMap (f₁ x) (f₂ x) (g x)) s x :=
  Tendsto.lineMap h₁ h₂ hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Affine/Variantccd534231eb98c2a00eb2e5e346b47dce737e5165676cc129d08d02966ee05b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Affine/Variantccd534231eb98c2a00eb2e5e346b47dce737e5165676cc129d08d02966ee05b1.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7e81cea003234c3096df891c8190e9c40030bce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
