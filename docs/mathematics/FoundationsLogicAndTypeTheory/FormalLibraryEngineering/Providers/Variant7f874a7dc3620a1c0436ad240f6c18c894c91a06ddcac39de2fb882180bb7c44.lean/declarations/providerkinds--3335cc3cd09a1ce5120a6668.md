# providerKinds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2aec8a8487e96392496958ab01c01251574b249350f459efe7782615fdb31f6f",
  "kind": "def",
  "lexical_name": "providerKinds",
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
  "slug": "providerkinds--3335cc3cd09a1ce5120a6668",
  "source": {
    "blob": "b54dff63524bc426110f09706e70d854da246785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variant7f874a7dc3620a1c0436ad240f6c18c894c91a06ddcac39de2fb882180bb7c44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3335cc3cd09a1ce5120a6668026e057c419f8c032a212bc378d10ec8a67983a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variant7f874a7dc3620a1c0436ad240f6c18c894c91a06ddcac39de2fb882180bb7c44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2aec8a8487e96392496958ab01c01251574b249350f459efe7782615fdb31f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def providerKinds (stx : Syntax) (source : String) : Array String := Id.run do
  let kind := rootKind stx
  let mut providers := #[]
  if #[`Lean.Parser.Command.namespace, `Lean.Parser.Command.section,
      `Lean.Parser.Command.end].contains kind then
    providers := providers.push "scope"
  if kind == `Lean.Parser.Command.open then
    providers := providers.push "open"
  if #[`Lean.Parser.Command.variable, `Lean.Parser.Command.universe,
      `Lean.Parser.Command.include, `Lean.Parser.Command.omit].contains kind then
    providers := providers.push "binder"
  if kind == `Lean.Parser.Command.set_option then
    providers := providers.push "option"
  if kind == `Lean.Parser.Command.attribute then
    providers := providers.push "attribute"
  if containsKind stx #[`Lean.Parser.Command.syntax, `Lean.Parser.Command.syntaxAbbrev,
      `Lean.Parser.Command.syntaxCat] then
    providers := providers.push "syntax"
  if containsKind stx #[`Lean.Parser.Command.macro, `Lean.Parser.Command.macro_rules] then
    providers := providers.push "macro"
  if containsKind stx #[`Lean.Parser.Command.notation, `Lean.Parser.Command.mixfix] then
    providers := providers.push "notation"
  if containsKind stx #[`Lean.Parser.Command.elab, `Lean.Parser.Command.elab_rules] &&
      source.contains "command" then
    providers := providers.push "command-elaborator"
  if kind == `Lean.Parser.Command.initialize then
    providers := providers.push "persistent-extension"
  if containsKind stx #[`Lean.Parser.Command.instance] &&
      (source.trimAscii.startsWith "local instance" || source.trimAscii.startsWith "scoped instance") then
    providers := providers.push "instance"
  return providers

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variant7f874a7dc3620a1c0436ad240f6c18c894c91a06ddcac39de2fb882180bb7c44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variant7f874a7dc3620a1c0436ad240f6c18c894c91a06ddcac39de2fb882180bb7c44.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54dff63524bc426110f09706e70d854da246785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
