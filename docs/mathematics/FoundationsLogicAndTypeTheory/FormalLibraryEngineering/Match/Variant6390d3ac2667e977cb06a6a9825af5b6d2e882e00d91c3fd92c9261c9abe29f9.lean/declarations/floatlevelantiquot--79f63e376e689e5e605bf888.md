# floatLevelAntiquot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d771ecf5a52e87f857d772c1309f14dfb1eb0b68a81633006bc72cfab8a0eb0",
  "kind": "def",
  "lexical_name": "floatLevelAntiquot",
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
  "slug": "floatlevelantiquot--79f63e376e689e5e605bf888",
  "source": {
    "blob": "5f7bb4818f9a2c77def24c69e69e6872ea14682a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 358,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79f63e376e689e5e605bf888a8e01ffba59a57b05c69fc0140f690b8050f9936",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d771ecf5a52e87f857d772c1309f14dfb1eb0b68a81633006bc72cfab8a0eb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def floatLevelAntiquot (stx : Syntax.Level) : StateT (Array Lift) MacroM Syntax.Level :=
  if stx.1.isAntiquot && !stx.1.isEscapedAntiquot then
    if !stx.1.getAntiquotTerm.isIdent then
      withFreshMacroScope do
        let n : Ident ← `(u)
        push (n, ← `(Level), ⟨stx.1.getAntiquotTerm⟩)
        `(level| u)
    else
      pure stx
  else
    match stx with
    | ⟨.node i k args⟩ => return ⟨Syntax.node i k (← args.mapM (floatLevelAntiquot ⟨·⟩))⟩
    | stx => return stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f7bb4818f9a2c77def24c69e69e6872ea14682a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
