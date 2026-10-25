# findStanceOfNonImported?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b301b8137d33bc7ccf426a75e5cd4b53c341ccb54d520447e4ab229d3c7f6ccc",
  "kind": "def",
  "lexical_name": "findStanceOfNonImported?",
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
  "slug": "findstanceofnonimported--9851748529ac095e3437e611",
  "source": {
    "blob": "50ebe6549e1e693c5dbd37181e9ff4ed58b00464",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 455,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9851748529ac095e3437e611469f8cd694b02ecc45e2eefe7bf3dbeec1cc6d9f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b301b8137d33bc7ccf426a75e5cd4b53c341ccb54d520447e4ab229d3c7f6ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findStanceOfNonImported? (decl : Name) : CoreM (Option Stance) :=
  withoutExporting do
  let env ← getEnv
  if env.isImportedConst decl || !env.contains decl then return none
  -- From `calcNeeds`:
  -- Added guard for cases like `structure` that are still exported even if private
  let pubCI? := guard (!isPrivateName decl) *> (env.setExporting true).find? decl
  let isPublic := pubCI?.isSome
  let isExposed := pubCI?.bind fun ci => if ci.isDefinition then ci.hasValue else none
  -- TODO: Are we handling implemented_by, matcher inlining, and macro_inline correctly?
  let isMeta :=
    if ← pure !(isNoncomputable env decl) <&&> Compiler.LCNF.shouldGenerateCode decl then
      some (isMarkedMeta env decl) else none
  return some { isPublic, isExposed, isMeta, isPublic_if_isExposed := by grind [Option] }

open Compiler in
/-- Like `shouldGenerateCode`, but for imported constants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50ebe6549e1e693c5dbd37181e9ff4ed58b00464` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
