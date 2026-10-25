# synthInstanceMeta?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0716806bfbd2b8450808c0cf7e7904de63a38a2753c905d08568c84ef2cc872",
  "kind": "def",
  "lexical_name": "synthInstanceMeta?",
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
  "slug": "synthinstancemeta--76bd6a439302743dedbb4ede",
  "source": {
    "blob": "e11b45292ed7c68b509c28a5bdc22821afd045ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76bd6a439302743dedbb4edec0b5aa1bc455a9ea2f1721db0a35b9e587005231",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0716806bfbd2b8450808c0cf7e7904de63a38a2753c905d08568c84ef2cc872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def synthInstanceMeta? (type : Expr) : MetaM (Option Expr) := do profileitM Exception "sym typeclass inference" (← getOptions) (decl := type.getAppFn.constName?.getD .anonymous) do
  if let some inst := getBuiltinInstance? type then
    return inst
  catchInternalId isDefEqStuckExceptionId
    (synthInstanceCore? type none)
    (fun _ => pure none)

/--
Registers `inst` as **the** instance for `type`. `synthInstance?` returns it without
running typeclass resolution, making `inst` the canonical representative for `type`.
Intended for satellite modules that construct instances for types they create themselves
(e.g., `grind linarith`'s envelope type `IntModule.OfNatModule.Q`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e11b45292ed7c68b509c28a5bdc22821afd045ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
