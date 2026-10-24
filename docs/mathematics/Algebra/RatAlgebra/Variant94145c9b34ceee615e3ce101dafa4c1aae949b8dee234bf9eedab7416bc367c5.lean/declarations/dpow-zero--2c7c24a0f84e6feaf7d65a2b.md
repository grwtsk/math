# dpow_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb184a8a32a45039fe19e4b9ae9073ea78410178",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d184caf3-3cd9-e27c-207e-96f5eb64185f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b7650d3-b049-e638-2cce-0d7c2dbbc336",
  "kind": "theorem",
  "lexical_name": "dpow_zero",
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
  "slug": "dpow-zero--2c7c24a0f84e6feaf7d65a2b",
  "source": {
    "blob": "bb184a8a32a45039fe19e4b9ae9073ea78410178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 73,
    "path": "GRWTSK/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7c24a0f84e6feaf7d65a2b4ed1bc84e962b76b3d7c2f42aea2da223af7099a",
  "verification": {
    "reference": "docs/verification/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b7650d3-b049-e638-2cce-0d7c2dbbc336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dpow_zero {x : A} (hx : x ∈ I) : dpow I 0 x = 1 := by simp [dpow, hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb184a8a32a45039fe19e4b9ae9073ea78410178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
