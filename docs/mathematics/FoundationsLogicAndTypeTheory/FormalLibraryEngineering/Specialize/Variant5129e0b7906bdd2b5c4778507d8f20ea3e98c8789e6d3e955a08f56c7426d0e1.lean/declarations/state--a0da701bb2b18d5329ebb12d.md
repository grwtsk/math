# State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b86b80a211ad0d2025362a5172f5cc3e42d419214a2648dcb14c52cb517982c9",
  "kind": "structure",
  "lexical_name": "State",
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
  "slug": "state--a0da701bb2b18d5329ebb12d",
  "source": {
    "blob": "6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0da701bb2b18d5329ebb12dc8aa7dbe682c3c12d7a18b915b09cdf066ac635b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b86b80a211ad0d2025362a5172f5cc3e42d419214a2648dcb14c52cb517982c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure State where
  /--
  The set of `Decl` that we are done processing.
  -/
  processedDecls : Array (Decl .pure) := #[]
  /--
  The set of `Decl` that we will attempt recursive specialization on in the next iteration.
  -/
  workingDecls : Array (Decl .pure) := #[]
  /--
  Specialization information about specialized declarations generated in this SCC so far.
  -/
  localSpecParamInfo : Std.HashMap Name (Array SpecParamInfo) := {}
  /--
  If we specialize a declaration but leave some specializable parameters unspecialized, we store
  them as a mask here. This mask is used to determine which parameters we specialize for
  recursively.
  -/
  parentMasks : Std.HashMap Name (Array Bool) := {}
  /--
  Whether we made a change to a declaration in this specialization run so far. This is periodically
  reset in the fixpoint loop and the signal for the loop to continue running.
  -/
  changed : Bool := false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
