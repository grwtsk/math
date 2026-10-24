# unit_rotation_even_is_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30fb369f-a32c-a4e0-d6e3-998f4ddc5dba",
  "kind": "theorem",
  "lexical_name": "unit_rotation_even_is_sign",
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
  "slug": "unit-rotation-even-is-sign--6d96689ce521944a55ff8aa3",
  "source": {
    "blob": "e77e1c67b5b008298b60b9b6a87cc276f9e3c0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d96689ce521944a55ff8aa335a52f15facd9cc81f5766c8e67115a1c1ef9ebc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30fb369f-a32c-a4e0-d6e3-998f4ddc5dba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_rotation_even_is_sign {q : ComplexL2}
    (hq : reflection q = q) (hq0 : q ≠ 0) (c s : ℝ) (hcs : c ^ 2 + s ^ 2 = 1)
    (hrot : reflection (rotationMap c s q) = rotationMap c s q) :
    rotationMap c s q = q ∨ rotationMap c s q = -q := by
  have hs := rotation_even_forces_sine_zero hq hq0 c s hrot
  have hc : c = 1 ∨ c = -1 := by
    rw [hs] at hcs
    have hp : (c - 1) * (c + 1) = 0 := by nlinarith [hcs]
    rcases mul_eq_zero.mp hp with h | h
    · left
      linarith
    · right
      linarith
  rcases hc with hc | hc
  · left
    simp [rotationMap_apply, hs, hc]
  · right
    simp [rotationMap_apply, hs, hc]

/-- No real-coefficient pure common-J map sends the actual unit scale to scale two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77e1c67b5b008298b60b9b6a87cc276f9e3c0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
