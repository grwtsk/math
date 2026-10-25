# cdotLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:312de4d132a4abe0997d2ac3b4566938b5ade960a8f4178684017ac8882d641c",
  "kind": "def",
  "lexical_name": "cdotLinter",
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
  "slug": "cdotlinter--e7b43ed7fd1b81bbf2bc2c73",
  "source": {
    "blob": "6baf969fc4e77d45b6ab36a3a2280f0c9ed5b30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7b43ed7fd1b81bbf2bc2c734d68a4ae293c054b250e3b35cde01e5634023496",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:312de4d132a4abe0997d2ac3b4566938b5ade960a8f4178684017ac8882d641c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cdotLinter : Linter where run := withSetOptionIn fun stx ↦ do
    unless Linter.getLinterValue linter.style.cdot (← getOptions) do
      return
    if (← MonadState.get).messages.hasErrors then
      return
    for s in unwanted_cdot stx do
      Linter.logLint linter.style.cdot s
        m!"Please, use '·' (typed as `\\.`) instead of '{s}' as 'cdot'."
    -- We also check for isolated cdot's, i.e. when the cdot is on its own line.
    for cdot in Mathlib.Linter.findCDot stx do
      match cdot.find? (·.isOfKind `token.«· ») with
      | some (.node _ _ #[.atom (.original _ _ afterCDot _) _]) =>
        if (afterCDot.takeWhile (·.isWhitespace)).contains '\n' then
          Linter.logLint linter.style.cdot cdot
            m!"This central dot `·` is isolated; please merge it with the next line."
      | _ => return

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baf969fc4e77d45b6ab36a3a2280f0c9ed5b30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
