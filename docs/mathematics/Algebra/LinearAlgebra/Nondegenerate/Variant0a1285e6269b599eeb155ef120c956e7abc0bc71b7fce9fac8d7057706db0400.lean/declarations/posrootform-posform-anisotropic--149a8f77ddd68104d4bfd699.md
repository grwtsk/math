# posRootForm_posForm_anisotropic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de858c693d2b63e393bcb85d8f59275b69b9158a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ff4a814-ec84-1f18-a7d5-a4ef2f7486db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1e01aec-1a0b-46b4-97dc-ae51c3ef0ad3",
  "kind": "lemma",
  "lexical_name": "posRootForm_posForm_anisotropic",
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
  "slug": "posrootform-posform-anisotropic--149a8f77ddd68104d4bfd699",
  "source": {
    "blob": "de858c693d2b63e393bcb85d8f59275b69b9158a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 211,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149a8f77ddd68104d4bfd699786a787b77a137ddc802842555ac2382763cad3e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1e01aec-1a0b-46b4-97dc-ae51c3ef0ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma posRootForm_posForm_anisotropic :
    (P.posRootForm S).posForm.toQuadraticMap.Anisotropic :=
  fun _ hx ↦ Classical.byContradiction fun h ↦
    (ne_of_lt (posRootForm_posForm_pos_of_ne_zero P S h)).symm hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de858c693d2b63e393bcb85d8f59275b69b9158a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
