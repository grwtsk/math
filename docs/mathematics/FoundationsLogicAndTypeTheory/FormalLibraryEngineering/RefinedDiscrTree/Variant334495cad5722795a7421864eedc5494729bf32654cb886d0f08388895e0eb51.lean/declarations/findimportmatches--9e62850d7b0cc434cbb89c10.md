# findImportMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:247d1d4f1e6415e89ad5f8c6233136a02aaff559f03d8e6f23767a9fd7cbaf0c",
  "kind": "def",
  "lexical_name": "findImportMatches",
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
  "slug": "findimportmatches--9e62850d7b0cc434cbb89c10",
  "source": {
    "blob": "42fc5ce3b10306aea3f87ef2590e42b44ba52393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant334495cad5722795a7421864eedc5494729bf32654cb886d0f08388895e0eb51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e62850d7b0cc434cbb89c1076a6d2f9bf9eb1fc0b092c89244e9857499392b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant334495cad5722795a7421864eedc5494729bf32654cb886d0f08388895e0eb51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:247d1d4f1e6415e89ad5f8c6233136a02aaff559f03d8e6f23767a9fd7cbaf0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findImportMatches
    (ext : EnvExtension (IO.Ref (Option (RefinedDiscrTree α))))
    (addEntry : Name → ConstantInfo → MetaM (List (α × List (Key × LazyEntry)))) (ty : Expr)
    (constantsPerTask : Nat := 1000) (capacityPerTask : Nat := 128) : MetaM (MatchResult α) := do
  let ngen ← getNGen
  let (cNGen, ngen) := ngen.mkChild
  setNGen ngen
  let _ : Inhabited (IO.Ref (Option (RefinedDiscrTree α))) := ⟨← IO.mkRef none⟩
  let ref := EnvExtension.getState ext (← getEnv)
  let importTree ← (← ref.get).getDM do
    profileitM Exception  "RefinedDiscrTree import initialization" (← getOptions) <|
      withTheReader Core.Context withTreeCtx <|
        createImportedDiscrTree cNGen (← getEnv) addEntry constantsPerTask capacityPerTask
  let (importCandidates, importTree) ← getMatch importTree ty false false
  ref.set (some importTree)
  return importCandidates

/-- Returns candidates from this module that match the expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant334495cad5722795a7421864eedc5494729bf32654cb886d0f08388895e0eb51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant334495cad5722795a7421864eedc5494729bf32654cb886d0f08388895e0eb51.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42fc5ce3b10306aea3f87ef2590e42b44ba52393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
