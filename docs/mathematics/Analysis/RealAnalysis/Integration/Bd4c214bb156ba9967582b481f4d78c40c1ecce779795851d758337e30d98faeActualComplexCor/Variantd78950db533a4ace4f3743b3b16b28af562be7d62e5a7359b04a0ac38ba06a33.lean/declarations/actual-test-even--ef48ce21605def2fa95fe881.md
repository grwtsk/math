# actual_test_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41fb6919-7592-b251-5a29-9b548b5aa5b9",
  "kind": "theorem",
  "lexical_name": "actual_test_even",
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
  "slug": "actual-test-even--ef48ce21605def2fa95fe881",
  "source": {
    "blob": "25374ca9ab3090fa3111ae927c19d09093ef4831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variantd78950db533a4ace4f3743b3b16b28af562be7d62e5a7359b04a0ac38ba06a33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef48ce21605def2fa95fe881287c53ce931636916dbe8935332be5f20dc95c87",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variantd78950db533a4ace4f3743b3b16b28af562be7d62e5a7359b04a0ac38ba06a33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41fb6919-7592-b251-5a29-9b548b5aa5b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_test_even (A : ℝ) (hA : 0 < A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A (-x) =
      normalizedTest explicitSecondDerivative A x := by
  rw [normalizedTest_eq_indicator A hA]
  have hi : normalizedInterior A (-x) = normalizedInterior A x := by
    unfold normalizedInterior secondInterior bumpInterior
    ring
  by_cases hx : x ∈ Icc (-A) A
  · have hn : -x ∈ Icc (-A) A := by constructor <;> linarith [hx.1, hx.2]
    rw [indicator_of_mem hx, indicator_of_mem hn, hi]
  · have hn : -x ∉ Icc (-A) A := by
      intro h
      apply hx
      constructor <;> linarith [h.1, h.2]
    rw [indicator_of_notMem hx, indicator_of_notMem hn]

/-- Every complex exponential is genuinely integrable against the actual compact test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variantd78950db533a4ace4f3743b3b16b28af562be7d62e5a7359b04a0ac38ba06a33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variantd78950db533a4ace4f3743b3b16b28af562be7d62e5a7359b04a0ac38ba06a33.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25374ca9ab3090fa3111ae927c19d09093ef4831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
