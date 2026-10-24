# grading.one_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7e89632-8440-8c4a-232a-800f36257772",
  "kind": "theorem",
  "lexical_name": "grading.one_mem",
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
  "slug": "grading-one-mem--9c6c9a31240cdc83b0310b08",
  "source": {
    "blob": "a46c5317696052c6f01d0aa1fe3fc91cf2cff48a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 89,
    "path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c6c9a31240cdc83b0310b083aaf21bd7d2c3ac1ed3202551ca6ee646479bf6f",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7e89632-8440-8c4a-232a-800f36257772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grading.one_mem : (1 : R × R) ∈ grading R 0 :=
  Eq.refl (1, 1).fst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46c5317696052c6f01d0aa1fe3fc91cf2cff48a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
