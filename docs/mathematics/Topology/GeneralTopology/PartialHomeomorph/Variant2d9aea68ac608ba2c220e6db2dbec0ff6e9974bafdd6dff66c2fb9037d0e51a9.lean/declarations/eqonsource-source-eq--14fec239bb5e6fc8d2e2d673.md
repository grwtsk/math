# EqOnSource.source_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ef9685d-5842-8ded-74ba-21f9fbd7a03f",
  "kind": "theorem",
  "lexical_name": "EqOnSource.source_eq",
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
  "slug": "eqonsource-source-eq--14fec239bb5e6fc8d2e2d673",
  "source": {
    "blob": "cd07fefc073617e1b552badfad718ee1d041de7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 852,
    "path": "GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14fec239bb5e6fc8d2e2d67327a8d2f37ef0a8d1a5be73f7e2c41a8af3640626",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ef9685d-5842-8ded-74ba-21f9fbd7a03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 852–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EqOnSource.source_eq {e e' : PartialHomeomorph X Y} (h : e ≈ e') : e.source = e'.source :=
  h.1

/-- Two equivalent partial homeomorphisms have the same target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean#L852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd07fefc073617e1b552badfad718ee1d041de7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
