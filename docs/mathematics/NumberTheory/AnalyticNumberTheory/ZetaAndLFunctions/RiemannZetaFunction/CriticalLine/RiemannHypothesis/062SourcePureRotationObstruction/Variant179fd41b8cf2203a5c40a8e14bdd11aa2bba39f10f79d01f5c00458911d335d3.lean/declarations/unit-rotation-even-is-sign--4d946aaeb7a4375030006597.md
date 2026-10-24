# unit_rotation_even_is_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afa0bc27ff606397087b31958f7267ded554aab4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fec42f59-6385-2c5a-db41-d1f5d3596d57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bde70da0-f183-c0cd-17c5-cafff53bc7ae",
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
  "slug": "unit-rotation-even-is-sign--4d946aaeb7a4375030006597",
  "source": {
    "blob": "afa0bc27ff606397087b31958f7267ded554aab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d946aaeb7a4375030006597827da861e892d0e052b3fd4a29fac67810dbc8cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bde70da0-f183-c0cd-17c5-cafff53bc7ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–179.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa0bc27ff606397087b31958f7267ded554aab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
