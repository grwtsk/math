# actualGoodHeightIndex_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4d6fa1c-a751-bc44-4301-c465deeb0d29",
  "kind": "theorem",
  "lexical_name": "actualGoodHeightIndex_bounds",
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
  "slug": "actualgoodheightindex-bounds--34ad5318c07507613d280763",
  "source": {
    "blob": "bacd5601a20e6f79948af2af8a64e4bf310dd817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34ad5318c07507613d2807638bd2f0110dc1b90cf66e3194e1666136261b24fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4d6fa1c-a751-bc44-4301-c465deeb0d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualGoodHeightIndex_bounds (A c : ℝ) :
    7 ≤ actualGoodHeightIndex A c ∧
      max 7 (actualBumpMovingHeight A c) ≤ (actualGoodHeightIndex A c : ℝ) ∧
      (actualGoodHeightIndex A c : ℝ) < max 7 (actualBumpMovingHeight A c) + 1 := by
  have h7 : (7 : ℝ) ≤ max 7 (actualBumpMovingHeight A c) := le_max_left _ _
  have h0 : 0 ≤ max 7 (actualBumpMovingHeight A c) := by linarith
  have hceil := Nat.le_ceil (max 7 (actualBumpMovingHeight A c))
  have hj : 7 ≤ actualGoodHeightIndex A c := by
    exact_mod_cast h7.trans hceil
  exact ⟨hj, hceil, Nat.ceil_lt_add_one h0⟩

/-- The genuine actual source pole weights vanish, with the original s²(s−1)² multiplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bacd5601a20e6f79948af2af8a64e4bf310dd817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
