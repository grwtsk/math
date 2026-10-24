# Etale.of_etale_tensorProduct_of_faithfullyFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d946a6effb254726ada5b504008f46dd78fc6bf2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45a23fc1-18f5-84e0-8fc2-76d689709eaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbfd82b6-38f7-09f2-f8f2-78f7bffef7dd",
  "kind": "lemma",
  "lexical_name": "Etale.of_etale_tensorProduct_of_faithfullyFlat",
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
  "slug": "etale-of-etale-tensorproduct-of-faithfullyflat--1288e2ff058826d770099a0e",
  "source": {
    "blob": "d946a6effb254726ada5b504008f46dd78fc6bf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Descent/Variant8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1288e2ff058826d770099a0eb17c5710afd59389d0af302ddfcdd984e1820960",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Descent/Variant8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbfd82b6-38f7-09f2-f8f2-78f7bffef7dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Etale.of_etale_tensorProduct_of_faithfullyFlat [Etale T (T ⊗[R] S)] :
    Etale R S := by
  rw [Etale.iff_formallyUnramified_and_smooth]
  exact ⟨.of_formallyUnramified_tensorProduct_of_faithfullyFlat T,
    .of_smooth_tensorProduct_of_faithfullyFlat T⟩

end Algebra

namespace RingHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Descent/Variant8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Descent/Variant8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d946a6effb254726ada5b504008f46dd78fc6bf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
