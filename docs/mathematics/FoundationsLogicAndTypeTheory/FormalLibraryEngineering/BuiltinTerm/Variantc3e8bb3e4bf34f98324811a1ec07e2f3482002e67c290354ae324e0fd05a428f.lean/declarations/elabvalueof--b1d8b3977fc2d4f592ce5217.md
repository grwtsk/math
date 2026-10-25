# elabValueOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45b892c545c2638bf56b6ec1322d19ed8c3e0d8284eeea023cab01b3e6a392ef",
  "kind": "def",
  "lexical_name": "elabValueOf",
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
  "slug": "elabvalueof--b1d8b3977fc2d4f592ce5217",
  "source": {
    "blob": "42da4fd6c8b37be7552d26a5cbf6500ad6184e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 321,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1d8b3977fc2d4f592ce5217dd11692d9b5833dac0ae1ba92a8d47e2a9d3c294",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45b892c545c2638bf56b6ec1322d19ed8c3e0d8284eeea023cab01b3e6a392ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab valueOf] def elabValueOf : TermElab := fun stx _ => do
  let ident := stx[1]
  let some e ← Term.resolveId? stx[1] (withInfo := true)
    | throwUnknownConstantAt ident ident.getId
  match e with
  | .const c us => do
    let cinfo ← getConstInfo c
    unless cinfo.hasValue do throwErrorAt ident "Constant has no value."
    return cinfo.instantiateValueLevelParams! us
  | .fvar fvarId => do
    let some val ← fvarId.getValue? | throwErrorAt ident "Local declaration has no value."
    return val
  | _ => panic! "resolveId? returned an unexpected expression"

/--
Rebuild a type application with fresh synthetic metavariables for instance-implicit arguments.
Non-instance-implicit arguments are assigned from the original application's arguments.
If the function is over-applied, extra arguments are preserved.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42da4fd6c8b37be7552d26a5cbf6500ad6184e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
