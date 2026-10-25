# mem_split_general

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb190b15-b3f3-1953-df3b-1531b73e450d",
  "kind": "theorem",
  "lexical_name": "mem_split_general",
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
  "slug": "mem-split-general--7d605824dfb0c95ac931bb8c",
  "source": {
    "blob": "e39c216014be3964cddcd2f052fa763c4d4fd8ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d605824dfb0c95ac931bb8c6b4dca96d69db3f7c2de6db158183dfa5d3b5929",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb190b15-b3f3-1953-df3b-1531b73e450d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_split_general {lo mid hi : ℚ} {x : ℝ}
    (hx : x ∈ Set.Icc (lo : ℝ) (hi : ℝ))
    (_hLeMid : lo ≤ mid) (_hMidLe : mid ≤ hi) :
    x ∈ Set.Icc (lo : ℝ) (mid : ℝ) ∨ x ∈ Set.Icc (mid : ℝ) (hi : ℝ) := by
  simp only [Set.mem_Icc] at hx ⊢
  by_cases! h : x ≤ mid
  · left; exact ⟨hx.1, h⟩
  · right
    exact ⟨le_of_lt h, hx.2⟩

/-- Combine upper bounds from two arbitrary adjacent intervals.
    If f ≤ c on [lo, mid] and f ≤ c on [mid, hi], then f ≤ c on [lo, hi]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39c216014be3964cddcd2f052fa763c4d4fd8ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
