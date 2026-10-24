# blockShellPrefixCorrelation_sq_le_codeCard_mul_squareMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25a75dcaabc8331fcab50dbaccbfd4c6c5eaf1ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52670a87-37d5-f9df-b014-d754be29da39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd08abcc-b747-7021-55aa-bd7347f1b368",
  "kind": "theorem",
  "lexical_name": "blockShellPrefixCorrelation_sq_le_codeCard_mul_squareMass",
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
  "slug": "blockshellprefixcorrelation-sq-le-codecard-mul-squaremass--90ee8f8a141d856ea91f1d7b",
  "source": {
    "blob": "25a75dcaabc8331fcab50dbaccbfd4c6c5eaf1ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 94,
    "path": "GRWTSK/Algebra/ConductorThreeTypeIIMaximalAssembly/Variantfce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90ee8f8a141d856ea91f1d7b9b6cb036ba1bf4a26522709f3c4a28951da41df6",
  "verification": {
    "reference": "docs/verification/Algebra/ConductorThreeTypeIIMaximalAssembly/Variantfce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd08abcc-b747-7021-55aa-bd7347f1b368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockShellPrefixCorrelation_sq_le_codeCard_mul_squareMass
    {N q x : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (code : TypeIIShellPrefixCode N q x) :
    ‖conductorThreeBlockShellPrefixCorrelation B x‖ ^ 2 ≤
      (code.intervals.card : ℝ) *
        conductorThreeBlockHyperbolicSquareMass B := by
  rw [conductorThreeBlockShellPrefixCorrelation_eq_sum_code B code]
  have htriangle :
      ‖∑ D ∈ code.intervals,
          conductorThreeBlockIntervalCorrelation B D‖ ≤
        ∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖ := by
    exact norm_sum_le _ _
  have hsquareTriangle :
      ‖∑ D ∈ code.intervals,
          conductorThreeBlockIntervalCorrelation B D‖ ^ 2 ≤
        (∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖) ^ 2 := by
    exact pow_le_pow_left₀ (norm_nonneg _) htriangle 2
  have hcs :
      (∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖) ^ 2 ≤
        (code.intervals.card : ℝ) *
          ∑ D ∈ code.intervals,
            ‖conductorThreeBlockIntervalCorrelation B D‖ ^ 2 := by
    exact sq_sum_le_card_mul_sum_sq
  have hsubset :
      ∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖ ^ 2 ≤
        conductorThreeBlockHyperbolicSquareMass B := by
    unfold conductorThreeBlockHyperbolicSquareMass
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro D _
      exact mem_typeIIProductDyadicIntervals D
    · intro D _ _
      positivity
  calc
    ‖∑ D ∈ code.intervals,
        conductorThreeBlockIntervalCorrelation B D‖ ^ 2 ≤
        (∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖) ^ 2 :=
      hsquareTriangle
    _ ≤ (code.intervals.card : ℝ) *
        ∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖ ^ 2 := hcs
    _ ≤ (code.intervals.card : ℝ) *
        conductorThreeBlockHyperbolicSquareMass B := by
      exact mul_le_mul_of_nonneg_left hsubset (by positivity)

/-- Every actual shell prefix has squared correlation bounded by `(q+2)`
times the full dyadic square mass of the block. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConductorThreeTypeIIMaximalAssembly/Variantfce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConductorThreeTypeIIMaximalAssembly/Variantfce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25a75dcaabc8331fcab50dbaccbfd4c6c5eaf1ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
