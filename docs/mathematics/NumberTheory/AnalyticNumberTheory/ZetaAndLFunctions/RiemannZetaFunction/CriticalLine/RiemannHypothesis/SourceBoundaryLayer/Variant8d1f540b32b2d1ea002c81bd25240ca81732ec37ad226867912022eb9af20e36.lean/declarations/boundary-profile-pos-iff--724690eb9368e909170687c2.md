# boundary_profile_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97a734bb-bd65-c8b1-74fd-6c0830e9b521",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bf1fe96-1b7f-ac72-a427-91cefaeb25ba",
  "kind": "theorem",
  "lexical_name": "boundary_profile_pos_iff",
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
  "slug": "boundary-profile-pos-iff--724690eb9368e909170687c2",
  "source": {
    "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 252,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:724690eb9368e909170687c208a0bb55ce04de5725cf1bb955ddcb346650cdba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bf1fe96-1b7f-ac72-a427-91cefaeb25ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_profile_pos_iff (y : ℝ) (hy : 0 < y) :
    0 < boundaryProfile y ↔
      y ^ 2 < 288 - 48 * Real.sqrt 15 ∨ 288 + 48 * Real.sqrt 15 < y ^ 2 := by
  have hc : 0 < (2431 / 3584 : ℝ) * y ^ 5 := mul_pos (by norm_num) (pow_pos hy _)
  have hs : 0 < Real.sqrt 15 := Real.sqrt_pos.2 (by norm_num)
  rw [boundary_profile_factor, boundary_profile_quartic_factor,
    mul_pos_iff_of_pos_left hc, mul_pos_iff]
  constructor
  · rintro (⟨hlo, hhi⟩ | ⟨hlo, hhi⟩)
    · exact Or.inr (by linarith)
    · exact Or.inl (by linarith)
  · rintro (hlo | hhi)
    · exact Or.inr ⟨by linarith, by linarith⟩
    · exact Or.inl ⟨by linarith, by linarith⟩

/-- On positive distances the limiting profile is negative precisely between the roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f406cd3d13fdc40d5b5030c936f15615749492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
