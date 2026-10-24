# linter.minImports.increases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2fffc3c36b48ea0ca3fb069997816a5d5a5e2ca7211c961349557083b2d82f3",
  "kind": "register_option",
  "lexical_name": "linter.minImports.increases",
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
  "slug": "linter-minimports-increases--afbb67cb468be7e256a5081a",
  "source": {
    "blob": "e6b64ac47b5ce61d510c81bcdd43d69c693ca3c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/MinImports/Variantee46807e4fa0570062559101195a4078d0c14b11f2b30bfed96533dc40558ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afbb67cb468be7e256a5081a9253b748a0a1da3a436592fd34ebeb15ba5b5b34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MinImports/Variantee46807e4fa0570062559101195a4078d0c14b11f2b30bfed96533dc40558ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2fffc3c36b48ea0ca3fb069997816a5d5a5e2ca7211c961349557083b2d82f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
register_option linter.minImports.increases : Bool := {
  defValue := true
  descr := "enable reporting increase-size change in the minImports linter"
}

namespace MinImports

open Mathlib.Command.MinImports

/-- `importsBelow tc ms` takes as input a `NameMap NameSet` `tc`, representing the
`transitiveClosure` of the imports of the current module, and a `NameSet` of module names `ms`.
It returns the modules that are transitively imported by `ms`, using the data in `tc`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MinImports/Variantee46807e4fa0570062559101195a4078d0c14b11f2b30bfed96533dc40558ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MinImports/Variantee46807e4fa0570062559101195a4078d0c14b11f2b30bfed96533dc40558ba0.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b64ac47b5ce61d510c81bcdd43d69c693ca3c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
