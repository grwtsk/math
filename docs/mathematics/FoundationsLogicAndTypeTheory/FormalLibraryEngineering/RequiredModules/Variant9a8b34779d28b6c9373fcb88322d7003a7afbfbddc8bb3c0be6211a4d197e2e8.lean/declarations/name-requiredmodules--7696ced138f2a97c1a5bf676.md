# Name.requiredModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31868c26ba146c51d1a96b6fbcf766ad3b5cbf7f8890cce322be86a7fd055d13",
  "kind": "def",
  "lexical_name": "Name.requiredModules",
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
  "slug": "name-requiredmodules--7696ced138f2a97c1a5bf676",
  "source": {
    "blob": "26cfef4f6873418109a471d05c9d67276ba2497b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequiredModules/Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7696ced138f2a97c1a5bf676a1c7470c18b9fb1497eb824836eff313cef622b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequiredModules/Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31868c26ba146c51d1a96b6fbcf766ad3b5cbf7f8890cce322be86a7fd055d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Name.requiredModules (n : Name) : CoreM NameSet := do
  let env ← getEnv
  let mut requiredModules : NameSet := {}
  let ci ← getConstInfo n
  for n in ci.getUsedConstantsAsSet do
    match env.getModuleFor? n with
    | some m =>
      if ¬ (`Init).isPrefixOf m then
        requiredModules := requiredModules.insert m
    | none => pure ()
  return requiredModules

/--
Return the names of the constants used in the specified declarations,
and the constants they use transitively.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequiredModules/Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequiredModules/Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cfef4f6873418109a471d05c9d67276ba2497b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
