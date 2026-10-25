# Elab.addModuleInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bbc9673646ffc541be2a2e4c372735febc186b40f9d30dcd6835926e50a845f",
  "kind": "def",
  "lexical_name": "Elab.addModuleInfo",
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
  "slug": "elab-addmoduleinfo--3edcc48e65b6f056d8e373ee",
  "source": {
    "blob": "0d3686a2641c201cd81f259347da873baff47464",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3edcc48e65b6f056d8e373eecf1423e7ce53c7c7593157a9057f658ea10b967b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bbc9673646ffc541be2a2e4c372735febc186b40f9d30dcd6835926e50a845f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Elab.addModuleInfo [Monad m] [MonadInfoTree m] (stx : Ident) : m Unit := do
  -- HACK: The server looks specifically for ofCommandInfo nodes on `import` syntax
  -- to do go-to-def for modules, so we have to add something that looks like an import
  -- to the info tree. (Ideally this would be an `.ofModuleInfo` node instead.)
  pushInfoLeaf <| .ofCommandInfo {
    elaborator := `import
    stx := Unhygienic.run `(Parser.Module.import| import $stx) |>.raw.copyHeadTailInfoFrom stx
  }

namespace Elab.Command

/-- Core elaborator for `open private` and `export private`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d3686a2641c201cd81f259347da873baff47464` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
