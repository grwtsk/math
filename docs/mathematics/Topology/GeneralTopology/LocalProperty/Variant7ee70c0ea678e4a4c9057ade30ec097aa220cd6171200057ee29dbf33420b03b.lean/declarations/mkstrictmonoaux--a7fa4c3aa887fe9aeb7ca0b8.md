# mkStrictMonoAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da1873d35cbba631227afe7a340156508dffe0fe4515ddd42651a664246e7040",
  "kind": "def",
  "lexical_name": "mkStrictMonoAux",
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
  "slug": "mkstrictmonoaux--a7fa4c3aa887fe9aeb7ca0b8",
  "source": {
    "blob": "e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 262,
    "path": "GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7fa4c3aa887fe9aeb7ca0b8119799c55d2bd6c6295ccf43e461590bf7516ff2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da1873d35cbba631227afe7a340156508dffe0fe4515ddd42651a664246e7040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkStrictMonoAux (x : ℕ → ℕ) : ℕ → ℕ
  | 0 => x 0
  | n + 1 => max (x (n + 1)) (mkStrictMonoAux x n) + 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
