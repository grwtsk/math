# replacePiNotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e47bea169b6e5b6f8b7d939841a013fe6f05456da029e43d0e3bcc2e3a7bd76",
  "kind": "def",
  "lexical_name": "replacePiNotation",
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
  "slug": "replacepinotation--ed815de8b3b3aa631c1a58d7",
  "source": {
    "blob": "be0b1564f0f73997a483ec426db154803d87c6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PiNotation/Variantaad6de5ebe094efcf4568fbdcdfe623d787365a3ee63517d89e2f5164e4a9b87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed815de8b3b3aa631c1a58d7edab29892ffa57d3ae92837d30145a914d797e9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PiNotation/Variantaad6de5ebe094efcf4568fbdcdfe623d787365a3ee63517d89e2f5164e4a9b87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e47bea169b6e5b6f8b7d939841a013fe6f05456da029e43d0e3bcc2e3a7bd76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[macro PiNotation.piNotation] def replacePiNotation : Lean.Macro
  | .node info _ args => return .node info ``Lean.Parser.Term.forall args
  | _ => Lean.Macro.throwUnsupported

/-- Override the Lean 4 pi notation delaborator with one that uses `Π`.
Note that this takes advantage of the fact that `(x : α) → p x` notation is
never used for propositions, so we can match on this result and rewrite it. -/
@[scoped delab forallE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PiNotation/Variantaad6de5ebe094efcf4568fbdcdfe623d787365a3ee63517d89e2f5164e4a9b87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PiNotation/Variantaad6de5ebe094efcf4568fbdcdfe623d787365a3ee63517d89e2f5164e4a9b87.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be0b1564f0f73997a483ec426db154803d87c6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
