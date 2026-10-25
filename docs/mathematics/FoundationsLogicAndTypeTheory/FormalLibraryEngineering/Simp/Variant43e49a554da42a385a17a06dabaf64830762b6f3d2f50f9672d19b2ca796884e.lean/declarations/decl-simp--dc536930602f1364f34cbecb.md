# Decl.simp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:387118b1046e8da6c1267a325a2fc14334028b69075d8703f73c6dd1ab4a9e0d",
  "kind": "def",
  "lexical_name": "Decl.simp",
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
  "slug": "decl-simp--dc536930602f1364f34cbecb",
  "source": {
    "blob": "6097989580d8c19c8e488fa1cc3bc4a9b44683e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc536930602f1364f34cbecb5ec5d8f685a9b7a13a98eee93c8e221fc37b765b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:387118b1046e8da6c1267a325a2fc14334028b69075d8703f73c6dd1ab4a9e0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Decl.simp (decl : Decl .pure) (config : Config) : CompilerM (Decl .pure) := do
  let mut config := config
  if (← isTemplateLike decl) then
    /-
    We do not eta-expand or inline partial applications in template like code.
    Recall we don't want to generate code for them.
    Remark: by eta-expanding partial applications in instances, we also make the simplifier
    work harder when inlining instance projections.
    -/
    config := { config with etaPoly := false, inlinePartial := false }
  go decl config
where
  go (decl : Decl .pure) (config : Config) : CompilerM (Decl .pure) := do
    if let some decl ← decl.simp? |>.run { config, declName := decl.name } |>.run' {} |>.run {} then
      -- TODO: bound number of steps?
      go decl config
    else
      return decl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6097989580d8c19c8e488fa1cc3bc4a9b44683e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
