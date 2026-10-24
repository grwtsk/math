# Ctop.toRealizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8165cea1b62c07a9f305cd1c966f7d2c6964a678caf73924a18a1d17c5fc3373",
  "kind": "def",
  "lexical_name": "Ctop.toRealizer",
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
  "slug": "ctop-torealizer--2efdb561d2eb65521a00ed3c",
  "source": {
    "blob": "2eeb1e1449bb1463e9d16e4ca7120d206885f7d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2efdb561d2eb65521a00ed3c9cb58f2a5c32ffdcb0141fc78d10c5e598b26cf6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8165cea1b62c07a9f305cd1c966f7d2c6964a678caf73924a18a1d17c5fc3373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Ctop.toRealizer (F : Ctop α σ) : @Ctop.Realizer _ F.toTopsp :=
  @Ctop.Realizer.mk _ F.toTopsp σ F rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eeb1e1449bb1463e9d16e4ca7120d206885f7d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
