# synthInstanceMeta?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a5345996b1137040cac5adc0e7b9f7682ae5ca9013f0e0c6315814832ce264b",
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
  "slug": "synthinstancemeta--5ce366b8574fd99bed7abe56",
  "source": {
    "blob": "ce7c02d7aa6aeb00fd4f58fcb82ab73b6fdb42de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ce366b8574fd99bed7abe5614f2c8cf7011ee439dca7284b719f5f3aefb8bcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a5345996b1137040cac5adc0e7b9f7682ae5ca9013f0e0c6315814832ce264b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7c02d7aa6aeb00fd4f58fcb82ab73b6fdb42de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
