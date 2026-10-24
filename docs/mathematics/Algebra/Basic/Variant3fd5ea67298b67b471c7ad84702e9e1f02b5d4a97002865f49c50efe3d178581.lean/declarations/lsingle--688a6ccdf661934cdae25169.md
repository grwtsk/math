# lsingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e97f0d9f62a4b6a50a43fec73fc03d1d30db3196955e2af47195ce585a4470b8",
  "kind": "def",
  "lexical_name": "lsingle",
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
  "slug": "lsingle--688a6ccdf661934cdae25169",
  "source": {
    "blob": "5c2fb63218c64aeb5ff69d438efd49e88e4245ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1194,
    "line": 1191,
    "path": "GRWTSK/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:688a6ccdf661934cdae25169f61c211cf4b457195e0ef8641830500b986f2272",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e97f0d9f62a4b6a50a43fec73fc03d1d30db3196955e2af47195ce585a4470b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1191–1194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lsingle {α : Type*} (a : α) [Module R M] : M →ₗ[R] (SkewMonoidAlgebra M α) where
  __ := singleAddHom a
  map_smul' _ _ := (smul_single _ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean#L1191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2fb63218c64aeb5ff69d438efd49e88e4245ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
