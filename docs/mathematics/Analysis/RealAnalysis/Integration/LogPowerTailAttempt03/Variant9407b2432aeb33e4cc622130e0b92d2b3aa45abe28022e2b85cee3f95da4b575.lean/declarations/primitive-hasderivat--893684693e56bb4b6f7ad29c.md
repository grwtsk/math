# primitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d685768d-4db6-09ec-a0f7-3055cd15c951",
  "kind": "theorem",
  "lexical_name": "primitive_hasDerivAt",
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
  "slug": "primitive-hasderivat--893684693e56bb4b6f7ad29c",
  "source": {
    "blob": "277095cf155f69d6cb73e7b68b5cc89c03cdde9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:893684693e56bb4b6f7ad29ce5d76331438f9f3c26affcda0ce089c93be38a70",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d685768d-4db6-09ec-a0f7-3055cd15c951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt logPowerPrimitive (logPower x) x := by
  have hh := (((Real.hasDerivAt_log hx.ne').add_const 2).const_mul (-2)).mul
    (Real.hasDerivAt_rpow_const (p:=-(1:ℝ)/2) (Or.inl hx.ne'))
  have he : x⁻¹*x^(-(1:ℝ)/2) = x^(-(3:ℝ)/2) := by
    rw [← Real.rpow_neg_one, ← Real.rpow_add hx]
    norm_num
  rw [show -(1:ℝ)/2-1=-(3:ℝ)/2 by norm_num] at hh
  have he2 : -2*x⁻¹*x^(-(1:ℝ)/2) = -2*x^(-(3:ℝ)/2) := by rw [mul_assoc,he]
  rw [he2] at hh
  unfold logPowerPrimitive logPower
  convert! hh using 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `277095cf155f69d6cb73e7b68b5cc89c03cdde9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
