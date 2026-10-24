# ImportState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:650f181cb3e1c7a7bc843ceef31f93c2822034bfb32ced10a96b518822bad0b7",
  "kind": "structure",
  "lexical_name": "ImportState",
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
  "slug": "importstate--5f05c1fae036668de0f93841",
  "source": {
    "blob": "e6b64ac47b5ce61d510c81bcdd43d69c693ca3c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/MinImports/Variantee46807e4fa0570062559101195a4078d0c14b11f2b30bfed96533dc40558ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f05c1fae036668de0f93841efecb8b623a4c6750bd211f1a894be7805180c45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MinImports/Variantee46807e4fa0570062559101195a4078d0c14b11f2b30bfed96533dc40558ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:650f181cb3e1c7a7bc843ceef31f93c2822034bfb32ced10a96b518822bad0b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ImportState where
  /-- The transitive closure of the import graph of the current file.  The value is `none` only at
  initialization time, as the linter immediately sets it to its value for the current file. -/
  transClosure : Option (NameMap NameSet) := none
  /-- The minimal imports needed to build the file up to the current command. -/
  minImports   : NameSet := {}
  /-- The number of transitive imports needed to build the file up to the current command. -/
  importSize   : Nat := 0
  deriving Inhabited

/--
`minImportsRef` keeps track of cumulative imports across multiple commands, using `ImportState`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MinImports/Variantee46807e4fa0570062559101195a4078d0c14b11f2b30bfed96533dc40558ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MinImports/Variantee46807e4fa0570062559101195a4078d0c14b11f2b30bfed96533dc40558ba0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b64ac47b5ce61d510c81bcdd43d69c693ca3c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
