# MonoidHom.comp_id_commGrp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f62098c10d0ce0f1b72124dcc20fb37cc6679cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 626,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f554a09-65ca-b9b5-4acc-48e526489805",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0439bc94-c4de-e3d4-9796-eb7f937b8c9d",
  "kind": "theorem",
  "lexical_name": "MonoidHom.comp_id_commGrp",
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
  "slug": "monoidhom-comp-id-commgrp--97931ccb8bc4b0bc0bb63cf3",
  "source": {
    "blob": "6f62098c10d0ce0f1b72124dcc20fb37cc6679cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 626,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97931ccb8bc4b0bc0bb63cf38b0c57eac5feeb5274fd0a443e78bda59c3df4f5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0439bc94-c4de-e3d4-9796-eb7f937b8c9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidHom.comp_id_commGrp {G : CommGrp.{u}} {H : Type u} [Monoid H] (f : G →* H) :
    f.comp (CommGrp.Hom.hom (𝟙 G)) = f := by
  simp
@[to_additive (attr := deprecated
  "Proven by `simp only [CommGrp.hom_id, id_comp]`"
  (since := "2025-01-28"))]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f62098c10d0ce0f1b72124dcc20fb37cc6679cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
