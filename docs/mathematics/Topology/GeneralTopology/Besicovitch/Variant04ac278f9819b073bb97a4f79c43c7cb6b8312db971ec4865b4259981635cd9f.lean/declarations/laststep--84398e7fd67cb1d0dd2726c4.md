# lastStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:893e4f88d30c3a3f294758b2ea985e01a7c4e2a6e63bb5c610725db101bf4981",
  "kind": "def",
  "lexical_name": "lastStep",
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
  "slug": "laststep--84398e7fd67cb1d0dd2726c4",
  "source": {
    "blob": "69c4088316c800628826c79b2c643c22292baebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 288,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84398e7fd67cb1d0dd2726c41b5759c0b330c455188b51f7a51f70022317e361",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:893e4f88d30c3a3f294758b2ea985e01a7c4e2a6e63bb5c610725db101bf4981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lastStep : Ordinal.{u} :=
  sInf {i | ¬∃ b : β, p.c b ∉ p.iUnionUpTo i ∧ p.R i ≤ p.τ * p.r b}
#align besicovitch.tau_package.last_step Besicovitch.TauPackage.lastStep

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c4088316c800628826c79b2c643c22292baebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
