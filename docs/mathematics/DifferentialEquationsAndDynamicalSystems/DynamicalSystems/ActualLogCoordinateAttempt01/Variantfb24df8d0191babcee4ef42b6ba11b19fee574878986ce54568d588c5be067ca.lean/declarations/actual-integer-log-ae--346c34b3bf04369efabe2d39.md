# actual_integer_log_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be4a6202-e1c5-96df-fc0b-dac35bc51f6d",
  "kind": "theorem",
  "lexical_name": "actual_integer_log_ae",
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
  "slug": "actual-integer-log-ae--346c34b3bf04369efabe2d39",
  "source": {
    "blob": "a1879512af43509852dd56e1b5f56b4edfadf221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 52,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantfb24df8d0191babcee4ef42b6ba11b19fee574878986ce54568d588c5be067ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:346c34b3bf04369efabe2d39b944977a8719233f985b5d0ca27779558b974cf9",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantfb24df8d0191babcee4ef42b6ba11b19fee574878986ce54568d588c5be067ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be4a6202-e1c5-96df-fc0b-dac35bc51f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_integer_log_ae (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    logMap (integerOrbit A hA n) =ᵐ[volume]
      (fun u => actualLogOperator A (u+Real.log (n.val:ℝ))) := by
  rw [actual_integer_log]
  filter_upwards [translate_ae (Real.log (n.val:ℝ)) (actualLogL2 A hA),
    (measurePreserving_add_right volume (Real.log (n.val:ℝ))).quasiMeasurePreserving.ae_eq_comp
      (actualLogL2_ae A hA)] with u hu hv
  exact hu.trans hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantfb24df8d0191babcee4ef42b6ba11b19fee574878986ce54568d588c5be067ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantfb24df8d0191babcee4ef42b6ba11b19fee574878986ce54568d588c5be067ca.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1879512af43509852dd56e1b5f56b4edfadf221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
