# IrreducibleCloseds.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1014972e655e000b0ce4227949f47037b92c3a04d65e53d09b954e14379dd22",
  "kind": "def",
  "lexical_name": "IrreducibleCloseds.map",
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
  "slug": "irreduciblecloseds-map--9602231af5aa0fe602fbfff6",
  "source": {
    "blob": "1f28ed8f4918e021d08519bb5bcb45c2bb91beea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9602231af5aa0fe602fbfff685c7466d92689879f0bd8777f48969f1db544d93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1014972e655e000b0ce4227949f47037b92c3a04d65e53d09b954e14379dd22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IrreducibleCloseds.map {f : X → Y} (hf1 : Continuous f) (hf2 : IsClosedMap f)
    (c : IrreducibleCloseds X) :
    IrreducibleCloseds Y where
  carrier := f '' c
  is_irreducible' := c.is_irreducible'.image f hf1.continuousOn
  is_closed' := hf2 c c.is_closed'

/--
Taking images under a closed embedding is strictly monotone on the preorder of irreducible closeds.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f28ed8f4918e021d08519bb5bcb45c2bb91beea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
