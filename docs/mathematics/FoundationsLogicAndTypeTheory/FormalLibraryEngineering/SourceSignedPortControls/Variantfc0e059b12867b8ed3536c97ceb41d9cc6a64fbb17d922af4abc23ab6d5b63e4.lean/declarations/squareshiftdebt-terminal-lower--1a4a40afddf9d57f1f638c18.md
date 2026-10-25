# squareShiftDebt_terminal_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a3e6d81-4b05-c102-1974-5193327bd263",
  "kind": "theorem",
  "lexical_name": "squareShiftDebt_terminal_lower",
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
  "slug": "squareshiftdebt-terminal-lower--1a4a40afddf9d57f1f638c18",
  "source": {
    "blob": "b5e0bed0dcaa5c9978bcf371c022728d93c875e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceSignedPortControls/Variantfc0e059b12867b8ed3536c97ceb41d9cc6a64fbb17d922af4abc23ab6d5b63e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a4a40afddf9d57f1f638c18654fa622e19e780bfa911ba2ea21c56561486174",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceSignedPortControls/Variantfc0e059b12867b8ed3536c97ceb41d9cc6a64fbb17d922af4abc23ab6d5b63e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a3e6d81-4b05-c102-1974-5193327bd263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareShiftDebt_terminal_lower (A : ℝ) (hA : 1 ≤ A)
    (hp : |endpointValue A| ≤ 1 / 8) (hb : |endpointSlope A| ≤ 1 / 8) :
    Real.exp A ≤ squareShiftDebt A (2 * A) := by
  rw [squareShiftDebt_terminal A hA]
  obtain ⟨hp1, hp2⟩ := abs_le.mp hp
  obtain ⟨hb1, hb2⟩ := abs_le.mp hb
  have hx : 3 * endpointSlope A - 1 - endpointValue A ≤ -(1 / 2 : ℝ) := by
    linarith
  have hs : (1 / 4 : ℝ) ≤
      (3 * endpointSlope A - 1 - endpointValue A) ^ 2 := by nlinarith
  have hm := mul_nonneg (Real.exp_pos A).le (sub_nonneg.mpr hs)
  nlinarith

/-- The chronological signed shears applied to one coordinate pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceSignedPortControls/Variantfc0e059b12867b8ed3536c97ceb41d9cc6a64fbb17d922af4abc23ab6d5b63e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceSignedPortControls/Variantfc0e059b12867b8ed3536c97ceb41d9cc6a64fbb17d922af4abc23ab6d5b63e4.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5e0bed0dcaa5c9978bcf371c022728d93c875e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
