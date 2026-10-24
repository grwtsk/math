# mapDomain_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "faf6cfb353a298df796c5c685cf9d8e9b3aa34a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:802554e0-7b28-a6e7-12c0-d7a0e3d656a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d38cc53-7aeb-5ad0-18af-39afaa1e2beb",
  "kind": "theorem",
  "lexical_name": "mapDomain_one",
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
  "slug": "mapdomain-one--4c751a74aeb2f9ed4922943c",
  "source": {
    "blob": "faf6cfb353a298df796c5c685cf9d8e9b3aa34a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 57,
    "path": "GRWTSK/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c751a74aeb2f9ed4922943ca3ab5ce93c6fcaa1948fbec3c66cde438dda7cf9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d38cc53-7aeb-5ad0-18af-39afaa1e2beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapDomain_one [One M] [One N] {F : Type*} [FunLike F M N] [OneHomClass F M N] (f : F) :
    mapDomain f (1 : R[M]) = (1 : R[N]) := by
  simp [one_def]

/-- Given a map `f : R →+ S`, return the corresponding map `R[M] → S[M]` obtained by mapping
each coefficient along `f`. -/
@[to_additive
/-- Given a map `f : R →+ S`, return the corresponding map `R[M] → S[M]` obtained by mapping
each coefficient along `f`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faf6cfb353a298df796c5c685cf9d8e9b3aa34a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
