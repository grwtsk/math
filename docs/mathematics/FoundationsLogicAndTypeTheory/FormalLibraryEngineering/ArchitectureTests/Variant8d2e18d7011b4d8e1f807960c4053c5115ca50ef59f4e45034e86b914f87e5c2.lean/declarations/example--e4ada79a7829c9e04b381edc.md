# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:644810aa359484444c6e582557b89a65e1d812a17fa6305d04a88ea96d7cccc5",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--e4ada79a7829c9e04b381edc",
  "source": {
    "blob": "45e043e3dd3aa0dfcd9a95b1a79899d0509e4800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArchitectureTests/Variant8d2e18d7011b4d8e1f807960c4053c5115ca50ef59f4e45034e86b914f87e5c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4ada79a7829c9e04b381edca66e886e0c734006e0ebd4396b86a45151e5e863",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArchitectureTests/Variant8d2e18d7011b4d8e1f807960c4053c5115ca50ef59f4e45034e86b914f87e5c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:644810aa359484444c6e582557b89a65e1d812a17fa6305d04a88ea96d7cccc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (x y : Bool) :
    bitSystem.CausalEquivalent x y ↔
      bitSystem.CausalEquivalent
        ((DAF.System.Iso.refl bitSystem).hom.mapState x)
        ((DAF.System.Iso.refl bitSystem).hom.mapState y) :=
  (DAF.System.Iso.refl bitSystem).causalEquivalent_iff

/-! ## A ranked three-project dependency chain -/

/-- Dependencies `0 ← 1 ← 2`, with arrows pointing toward dependents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArchitectureTests/Variant8d2e18d7011b4d8e1f807960c4053c5115ca50ef59f4e45034e86b914f87e5c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArchitectureTests/Variant8d2e18d7011b4d8e1f807960c4053c5115ca50ef59f4e45034e86b914f87e5c2.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e043e3dd3aa0dfcd9a95b1a79899d0509e4800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
