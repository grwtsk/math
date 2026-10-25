# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.POpaqueNonemptyType.Variantc1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd.Lake.Opaque.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:691c811d1e639e0e3f336ab058af29e4473eb61b03a0153b5f90cebaf15cb43e",
  "kind": "abbrev",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.POpaqueNonemptyType.Variantc1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd.Lake.Opaque.mk",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-popaq--14d7150f29f8fa8947e0490b",
  "source": {
    "blob": "ebd82e6ced39b383d5a3dd4bc949f0d1cec85877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variant1b9b2b67468d53a61c15ec89d52704973c4ce60231b7ee3fe5b674779aed512e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14d7150f29f8fa8947e0490b72473402cf8bc6720ba187595c4ab9cc5b3f3889",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variant1b9b2b67468d53a61c15ec89d52704973c4ce60231b7ee3fe5b674779aed512e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:691c811d1e639e0e3f336ab058af29e4473eb61b03a0153b5f90cebaf15cb43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public abbrev _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.POpaqueNonemptyType.Variantc1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd.Lake.Opaque.mk {α : Type u} (a : α) : Opaque := POpaque.mk a

/--
Cast an opaque value to a specific type.

This operation is unsafe because there is no guarantee that the opaque
value is of type `α` or that its real value can soundly fit inside the
opaque value's universe.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variant1b9b2b67468d53a61c15ec89d52704973c4ce60231b7ee3fe5b674779aed512e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variant1b9b2b67468d53a61c15ec89d52704973c4ce60231b7ee3fe5b674779aed512e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd82e6ced39b383d5a3dd4bc949f0d1cec85877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
