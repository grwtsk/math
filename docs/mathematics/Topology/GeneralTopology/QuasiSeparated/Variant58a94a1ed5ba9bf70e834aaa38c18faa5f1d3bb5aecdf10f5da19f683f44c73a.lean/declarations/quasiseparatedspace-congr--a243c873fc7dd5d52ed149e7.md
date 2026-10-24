# quasiSeparatedSpace_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:792efce8-6128-183a-41d7-b0790825a07a",
  "kind": "lemma",
  "lexical_name": "quasiSeparatedSpace_congr",
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
  "slug": "quasiseparatedspace-congr--a243c873fc7dd5d52ed149e7",
  "source": {
    "blob": "6105ae8fd9b16eb5829729a3df4562fdfefd60f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a243c873fc7dd5d52ed149e7dfc189722968601cbd960d02e1a41cdeea14420a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:792efce8-6128-183a-41d7-b0790825a07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiSeparatedSpace_congr (e : α ≃ₜ β) : QuasiSeparatedSpace α ↔ QuasiSeparatedSpace β where
  mp _ := .of_isOpenEmbedding e.symm.isOpenEmbedding
  mpr _ := .of_isOpenEmbedding e.isOpenEmbedding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6105ae8fd9b16eb5829729a3df4562fdfefd60f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
