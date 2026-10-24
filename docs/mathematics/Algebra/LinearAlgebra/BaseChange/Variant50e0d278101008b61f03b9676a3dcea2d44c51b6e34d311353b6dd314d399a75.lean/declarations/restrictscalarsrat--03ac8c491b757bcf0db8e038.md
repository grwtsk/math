# restrictScalarsRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f26427f965a9f24c306a490752064cb970b27877d091c36170df6377e6319c8",
  "kind": "abbrev",
  "lexical_name": "restrictScalarsRat",
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
  "slug": "restrictscalarsrat--03ac8c491b757bcf0db8e038",
  "source": {
    "blob": "4468c5270ec16b4ae7af7c9d53cd963fd9658d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03ac8c491b757bcf0db8e0381f4182dd78229aff6bd2025691204d7ce9ff6505",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f26427f965a9f24c306a490752064cb970b27877d091c36170df6377e6319c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev restrictScalarsRat [CharZero L] [P.IsCrystallographic] :=
  let _i : Module ℚ M := Module.compHom M (algebraMap ℚ L)
  let _i : Module ℚ N := Module.compHom N (algebraMap ℚ L)
  P.restrictScalars ℚ

end restrictScalars

end RootPairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4468c5270ec16b4ae7af7c9d53cd963fd9658d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
