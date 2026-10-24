# breathing_cubic_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47551a21-73a5-a0cd-104e-245f912be4ee",
  "kind": "theorem",
  "lexical_name": "breathing_cubic_iff",
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
  "slug": "breathing-cubic-iff--2688d494e28e06a919ae8a6c",
  "source": {
    "blob": "48edd86c11849d6d946b41f5c48640d8d891e56e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 334,
    "path": "GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2688d494e28e06a919ae8a6c9a8cfbe523582f98b9ed15afe6a42a009bc88d9d",
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

Occurrence: `result:47551a21-73a5-a0cd-104e-245f912be4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem breathing_cubic_iff (parameters : Parameters) (state : State) (measured : ℝ) :
    parameters.density * measured * radius state ^ 3 -
        3 * parameters.kappa * parameters.pressure * radius state -
        2 * (3 * parameters.kappa - 1) * tension state = 0 ↔
      measured = breathingSquared parameters state := by
  constructor
  · intro equation
    apply mul_left_cancel₀
      (mul_pos parameters.densityPositive (pow_pos (radius_pos state) 3)).ne'
    nlinarith [breathing_corrected_cubic parameters state]
  · intro equal
    rw [equal]
    exact breathing_corrected_cubic parameters state

/-- In the declared fixed-tension scope, two positive roots of the measured cubic coincide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48edd86c11849d6d946b41f5c48640d8d891e56e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
