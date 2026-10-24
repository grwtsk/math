# of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9063624a0bc5a0a5a0b041d43dd9135764fd2863b84b7393ef1c71acc2292049",
  "kind": "def",
  "lexical_name": "of",
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
  "slug": "of--74b9adb5dcd86d92cb22ce8f",
  "source": {
    "blob": "3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 380,
    "path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74b9adb5dcd86d92cb22ce8fd0e41cbe13c5f4e8272b1f0c73c63d274fc7d957",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9063624a0bc5a0a5a0b041d43dd9135764fd2863b84b7393ef1c71acc2292049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def of (f : Filter α) [NeBot f] : Ultrafilter α :=
  Classical.choose (exists_le f)
#align ultrafilter.of Ultrafilter.of

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
