# of_symm_image_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ed8d3594edf3162ca7425de036e216ba5b9077f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 506,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:132853a0-b730-ec1c-f854-9440f52f4bad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57d57b28-6e39-9679-5ab6-8babd528dc1d",
  "kind": "theorem",
  "lexical_name": "of_symm_image_eq",
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
  "slug": "of-symm-image-eq--213fd6fcd32e205b75036080",
  "source": {
    "blob": "6ed8d3594edf3162ca7425de036e216ba5b9077f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 506,
    "path": "GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:213fd6fcd32e205b750360808023ea8f7427fd7b49892537b2f9dd6f38a8e237",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartialHomeomorph/Variant3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d57b28-6e39-9679-5ab6-8babd528dc1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_symm_image_eq (h : e.symm '' (e.target ∩ t) = e.source ∩ s) : e.IsImage s t :=
  PartialEquiv.IsImage.of_symm_image_eq h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartialHomeomorph/Variant3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed8d3594edf3162ca7425de036e216ba5b9077f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
