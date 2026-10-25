# twoWindowSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6df2df9449956a819f51b24a35d467822d59ea2242852e679325fbf7c44d4cb",
  "kind": "def",
  "lexical_name": "twoWindowSystem",
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
  "slug": "twowindowsystem--3b890f7f8f808f8a1aafe668",
  "source": {
    "blob": "dace927f003ae6ef4fb537666b75c62dedba62d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WindowFusionTests/Variant4161bfacc4e0dee0f22a06e7d17ae1ccbc059bfec9feef3e239c49c37e11a1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b890f7f8f808f8a1aafe668cdb79e3bc0126a42e124b7aaf2b20ecb354c2112",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WindowFusionTests/Variant4161bfacc4e0dee0f22a06e7d17ae1ccbc059bfec9feef3e239c49c37e11a1b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6df2df9449956a819f51b24a35d467822d59ea2242852e679325fbf7c44d4cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoWindowSystem : GlobalWindowSystem windowGlobal where
  WindowId := Bool
  windowFintype := inferInstance
  windowDecEq := inferInstance
  region _ := fullRegion
  overlappingWindows := exactOverlaps
  overlapping_spec := by
    intro R i
    by_cases h : R.coordinates.Nonempty
    · simp [exactOverlaps, h, fullRegion, AbsoluteRegion.univ]
    · simp [exactOverlaps, h, fullRegion, AbsoluteRegion.univ]
  weight := staticWeight
  weight_nonnegative := by
    intro i c
    cases i <;> norm_num [staticWeight]
  weight_support := by
    intro i c hc
    exfalso
    apply hc
    simp [fullRegion, AbsoluteRegion.univ]
  positive_cover := by
    intro c
    norm_num [staticWeight, Fintype.sum_bool]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WindowFusionTests/Variant4161bfacc4e0dee0f22a06e7d17ae1ccbc059bfec9feef3e239c49c37e11a1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WindowFusionTests/Variant4161bfacc4e0dee0f22a06e7d17ae1ccbc059bfec9feef3e239c49c37e11a1b2.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dace927f003ae6ef4fb537666b75c62dedba62d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
