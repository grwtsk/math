# RelCWComplex.Subcomplex.finite_subcomplex_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83a2d4a7b35bf493a3cc3dbcef5320fbc92313b0297e8efda665efe7b525d7e1",
  "kind": "instance",
  "lexical_name": "RelCWComplex.Subcomplex.finite_subcomplex_of_finite",
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
  "slug": "relcwcomplex-subcomplex-finite-subcomplex-of-finite--bf647280433ce3c2d00d7f88",
  "source": {
    "blob": "6123a3f471459eb957a0086221dd36b1cefa9c05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf647280433ce3c2d00d7f88d2474e6305ce8813dd3d9083f474cd980c123dc2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83a2d4a7b35bf493a3cc3dbcef5320fbc92313b0297e8efda665efe7b525d7e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RelCWComplex.Subcomplex.finite_subcomplex_of_finite [T2Space X] [RelCWComplex C D]
    [Finite C] (E : Subcomplex C) : Finite (E : Set X) :=
  finite_of_finiteDimensional_finiteType _

end Topology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6123a3f471459eb957a0086221dd36b1cefa9c05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
