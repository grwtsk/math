# initK

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:983c95bcaaa3a3b9944c93c46b2b55fc49f633dd8acc67c2c34862737958f789",
  "kind": "def",
  "lexical_name": "initK",
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
  "slug": "initk--faa11ab6b7961d5bd6f7f876",
  "source": {
    "blob": "df2375f029f3d7a31ac246a611e23c449310b043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant2611a06fa28cb13024e16a654751a4c1dfb66e01f643773a862b76821f429d56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faa11ab6b7961d5bd6f7f8765b57527c77b4bbc8f40a432c167e1e7593671170",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant2611a06fa28cb13024e16a654751a4c1dfb66e01f643773a862b76821f429d56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:983c95bcaaa3a3b9944c93c46b2b55fc49f633dd8acc67c2c34862737958f789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initK (alt : Alt) : MacroM Alt := withFreshMacroScope do
  -- Remark: the compiler frontend implemented in C++ currently detects join points created by
  -- the "do" notation by testing the name. See hack at method `visit_let` at `lcnf.cpp`
  -- We will remove this hack when we re-implement the compiler frontend in Lean.
  let k : Ident ← `(__do_jp)
  return { alt with k }

/--
Generates parameters for the continuation function used to execute
the RHS of the given alternative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant2611a06fa28cb13024e16a654751a4c1dfb66e01f643773a862b76821f429d56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant2611a06fa28cb13024e16a654751a4c1dfb66e01f643773a862b76821f429d56.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df2375f029f3d7a31ac246a611e23c449310b043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
