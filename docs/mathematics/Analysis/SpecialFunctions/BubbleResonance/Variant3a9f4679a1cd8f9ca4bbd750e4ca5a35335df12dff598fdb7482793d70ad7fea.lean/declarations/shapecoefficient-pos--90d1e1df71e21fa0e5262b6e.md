# shapeCoefficient_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc648ab6-adf3-dd5a-9090-2c8f758b7b1d",
  "kind": "theorem",
  "lexical_name": "shapeCoefficient_pos",
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
  "slug": "shapecoefficient-pos--90d1e1df71e21fa0e5262b6e",
  "source": {
    "blob": "48edd86c11849d6d946b41f5c48640d8d891e56e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 431,
    "path": "GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90d1e1df71e21fa0e5262b6e4f866c00d1928945b5a97029a019c41bf3d9dd83",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc648ab6-adf3-dd5a-9090-2c8f758b7b1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shapeCoefficient_pos (degree : ℕ) (degreeAtLeastTwo : 2 ≤ degree) :
    0 < shapeCoefficient degree := by
  have degreeReal : (2 : ℝ) ≤ (degree : ℝ) := by exact_mod_cast degreeAtLeastTwo
  have first : 0 < (degree : ℝ) - 1 := by linarith
  have second : 0 < (degree : ℝ) + 1 := by linarith
  have third : 0 < (degree : ℝ) + 2 := by linarith
  exact mul_pos (mul_pos first second) third

/-- Positive tension makes every physical shape squared-frequency formula positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48edd86c11849d6d946b41f5c48640d8d891e56e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
