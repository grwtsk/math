# findImportMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:676c234776c59cf310cd164b20a75693f41bb71214e5818d0779d0f4bfd6452d",
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
  "slug": "findimportmatches--4c8bdd9c906ac5e99cd9c428",
  "source": {
    "blob": "5a343b75a4bd9f834b341bf20004763392ae4863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant8f6bdd6b2ab63c027f78d22973b344e31afd4f154ca361572d06ee021e7b03f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c8bdd9c906ac5e99cd9c4282d8976b987361371cb22da8e04cc3cebb1267676",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant8f6bdd6b2ab63c027f78d22973b344e31afd4f154ca361572d06ee021e7b03f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:676c234776c59cf310cd164b20a75693f41bb71214e5818d0779d0f4bfd6452d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–132.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant8f6bdd6b2ab63c027f78d22973b344e31afd4f154ca361572d06ee021e7b03f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant8f6bdd6b2ab63c027f78d22973b344e31afd4f154ca361572d06ee021e7b03f2.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a343b75a4bd9f834b341bf20004763392ae4863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
