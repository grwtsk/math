# finish_v

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8d06472-ca2c-dceb-267a-6513f2eed86e",
  "kind": "theorem",
  "lexical_name": "finish_v",
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
  "slug": "finish-v--6fe9015a5a41e62e3b67dc9a",
  "source": {
    "blob": "b76354fd35108746bcee3341c3d5cd96cca0b52a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variantb81fb3cad538085d8ec987d7ac3848e76cd529fe06e657a5ed4bb2d80bc6fd27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fe9015a5a41e62e3b67dc9ace2c01adcfd2b89b44b856968707f0714db0c859",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variantb81fb3cad538085d8ec987d7ac3848e76cd529fe06e657a5ed4bb2d80bc6fd27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8d06472-ca2c-dceb-267a-6513f2eed86e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finish_v (hr : u.r = 0) : u.finish.v = u.v := by
  let ha : u.r + u.b * u.q = u.a := u.rq_eq
  rw [hr, zero_add] at ha
  ext
  · change (u.wp + 1) * u.b + ((u.wp + 1) * u.qp + u.x) * u.b = u.w * u.a + u.x * u.b
    have : u.wp + 1 = u.w := rfl
    rw [this, ← ha, u.qp_eq hr]
    ring
  · change u.y * u.b + (u.y * u.qp + u.z) * u.b = u.y * u.a + u.z * u.b
    rw [← ha, u.qp_eq hr]
    ring

/-- This is the main reduction step, which is used when u.r ≠ 0, or
equivalently b does not divide a. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variantb81fb3cad538085d8ec987d7ac3848e76cd529fe06e657a5ed4bb2d80bc6fd27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variantb81fb3cad538085d8ec987d7ac3848e76cd529fe06e657a5ed4bb2d80bc6fd27.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76354fd35108746bcee3341c3d5cd96cca0b52a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
