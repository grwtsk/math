# isCompl_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aadf27fbbe3a61b72addc0bb0bed5e7fb8c2b1e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43735a70-901a-67f0-d7e9-82bf1cdf147c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3edec1d3-6338-94c4-4924-f1cb8b2bc811",
  "kind": "theorem",
  "lexical_name": "isCompl_orthogonal",
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
  "slug": "iscompl-orthogonal--3b082bfef0ca30b04bb64b6c",
  "source": {
    "blob": "aadf27fbbe3a61b72addc0bb0bed5e7fb8c2b1e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b082bfef0ca30b04bb64b6c628ca457f179898cd86833bd67f8f0786de9c4e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3edec1d3-6338-94c4-4924-f1cb8b2bc811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompl_orthogonal [K.HasOrthogonalProjection] : IsCompl K Kᗮ where
  disjoint := K.orthogonal_disjoint
  codisjoint := K.codisjoint_iff_exists_add_eq.mpr fun z ↦
    have ⟨w, hw, hzw⟩ := Submodule.HasOrthogonalProjection.exists_orthogonal (K := K) z
    ⟨w, z - w, hw, hzw, add_sub_cancel w z⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aadf27fbbe3a61b72addc0bb0bed5e7fb8c2b1e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
