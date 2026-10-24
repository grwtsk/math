# EqOnSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18cbd7ea99a841460d7c7bc7f77874278a3bcfe07e557ab301a97ec6f2adb9c7",
  "kind": "def",
  "lexical_name": "EqOnSource",
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
  "slug": "eqonsource--9b86f7f16bb0b025ad8e517c",
  "source": {
    "blob": "e7b3b0426bfa6097b6b63867bd93ef4c90b47582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 309,
    "path": "GRWTSK/Topology/GeneralTopology/IsImage/Variant2e1e15548fc9c70c2876d013edc423a0760c51e1c3d91c562fed72ba98b1a054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b86f7f16bb0b025ad8e517c32264bf3031a6f8408d511d4ebd8557a3d1eda3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsImage/Variant2e1e15548fc9c70c2876d013edc423a0760c51e1c3d91c562fed72ba98b1a054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18cbd7ea99a841460d7c7bc7f77874278a3bcfe07e557ab301a97ec6f2adb9c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EqOnSource (e e' : OpenPartialHomeomorph X Y) : Prop :=
  e.source = e'.source ∧ EqOn e e' e.source

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsImage/Variant2e1e15548fc9c70c2876d013edc423a0760c51e1c3d91c562fed72ba98b1a054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsImage/Variant2e1e15548fc9c70c2876d013edc423a0760c51e1c3d91c562fed72ba98b1a054.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b3b0426bfa6097b6b63867bd93ef4c90b47582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
