# _root_.ErgodicSMul.of_aestabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a6915cc25dde87fcbd442748a7813213bca46e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fc03199-6e2a-8ad2-359d-7afc83ac2245",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87d53f0f-b123-0172-d455-2e6e89525b68",
  "kind": "theorem",
  "lexical_name": "_root_.ErgodicSMul.of_aestabilizer",
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
  "slug": "root-ergodicsmul-of-aestabilizer--d607e3ffd918e060a1170c47",
  "source": {
    "blob": "f6a6915cc25dde87fcbd442748a7813213bca46e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 77,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d607e3ffd918e060a1170c47c17777a9af40b82f5071b7f8bd1a3d440a482e8e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87d53f0f-b123-0172-d455-2e6e89525b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.ErgodicSMul.of_aestabilizer [Group G] [MulAction G α] [SMulInvariantMeasure G α μ]
    (h : ∀ s, MeasurableSet s → aestabilizer G μ s = ⊤ → EventuallyConst s (ae μ)) :
    ErgodicSMul G α μ :=
  ⟨fun hm hs ↦ h _ hm <| (Subgroup.eq_top_iff' _).2 fun g ↦ by
    simpa only [preimage_smul_inv] using hs g⁻¹⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a6915cc25dde87fcbd442748a7813213bca46e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
