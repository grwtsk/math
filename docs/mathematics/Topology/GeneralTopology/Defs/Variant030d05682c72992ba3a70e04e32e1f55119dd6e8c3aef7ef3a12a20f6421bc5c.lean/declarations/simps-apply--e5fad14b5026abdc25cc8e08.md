# Simps.apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:134f22738d9ed9247d62f9bd31c6b1a725fed5bcd2c9efbab99079431085295e",
  "kind": "def",
  "lexical_name": "Simps.apply",
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
  "slug": "simps-apply--e5fad14b5026abdc25cc8e08",
  "source": {
    "blob": "a6ade3b874784ae1312bb4cf766acbd62762f88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant030d05682c72992ba3a70e04e32e1f55119dd6e8c3aef7ef3a12a20f6421bc5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5fad14b5026abdc25cc8e08217ab39a97291ddb9b92c6878e4c3926325847cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant030d05682c72992ba3a70e04e32e1f55119dd6e8c3aef7ef3a12a20f6421bc5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:134f22738d9ed9247d62f9bd31c6b1a725fed5bcd2c9efbab99079431085295e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Simps.apply (e : PartialHomeomorph X Y) : X → Y := e

/-- See Note [custom simps projection] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant030d05682c72992ba3a70e04e32e1f55119dd6e8c3aef7ef3a12a20f6421bc5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant030d05682c72992ba3a70e04e32e1f55119dd6e8c3aef7ef3a12a20f6421bc5c.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6ade3b874784ae1312bb4cf766acbd62762f88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
