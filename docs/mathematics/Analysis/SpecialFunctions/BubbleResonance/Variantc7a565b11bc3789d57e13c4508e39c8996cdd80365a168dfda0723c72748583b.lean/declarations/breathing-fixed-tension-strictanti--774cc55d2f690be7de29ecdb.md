# breathing_fixed_tension_strictAnti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef3e7cdea563791a9637e7b42fd406292a2a2501",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41a9f697-9fda-db99-65e0-c4515c8afa8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cedbfb98-8f1c-b003-60ce-8b02ea169ccc",
  "kind": "theorem",
  "lexical_name": "breathing_fixed_tension_strictAnti",
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
  "slug": "breathing-fixed-tension-strictanti--774cc55d2f690be7de29ecdb",
  "source": {
    "blob": "ef3e7cdea563791a9637e7b42fd406292a2a2501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 302,
    "path": "GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:774cc55d2f690be7de29ecdba5f838b0d50c8f8d3e7bf5cc0ea4f26b7eb8d483",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cedbfb98-8f1c-b003-60ce-8b02ea169ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem breathing_fixed_tension_strictAnti (parameters : Parameters)
    (surfaceTension : {surfaceTension : ℝ // 0 ≤ surfaceTension}) :
    StrictAnti (fun r : PositiveRadius => breathingSquared parameters (r, surfaceTension)) := by
  intro r s less
  have lessReal : (r : ℝ) < (s : ℝ) := less
  have squareLess := mul_lt_mul_of_pos_left
    (pow_lt_pow_left₀ lessReal r.property.le (by decide : 2 ≠ 0)) parameters.densityPositive
  have cubeLess := mul_lt_mul_of_pos_left
    (pow_lt_pow_left₀ lessReal r.property.le (by decide : 3 ≠ 0)) parameters.densityPositive
  have first := div_lt_div_of_pos_left (gasCoefficient_pos parameters)
    (mul_pos parameters.densityPositive (pow_pos r.property 2)) squareLess
  have second := div_le_div_of_nonneg_left
    (mul_nonneg (capillaryCoefficient_pos parameters).le surfaceTension.property)
    (mul_pos parameters.densityPositive (pow_pos r.property 3)) cubeLess.le
  exact add_lt_add_of_lt_of_le first second

/-- Fixed tension makes the positive radius unique for a breathing reading. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3e7cdea563791a9637e7b42fd406292a2a2501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
