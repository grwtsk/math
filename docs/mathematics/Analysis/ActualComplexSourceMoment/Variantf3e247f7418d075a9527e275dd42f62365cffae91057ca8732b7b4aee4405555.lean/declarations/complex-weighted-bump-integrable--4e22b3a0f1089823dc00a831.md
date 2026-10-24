# complex_weighted_bump_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf4fed73-3dce-2682-e0bd-9622ed656dce",
  "kind": "theorem",
  "lexical_name": "complex_weighted_bump_integrable",
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
  "slug": "complex-weighted-bump-integrable--4e22b3a0f1089823dc00a831",
  "source": {
    "blob": "ce9df12518b30d9151b612ca018df0c320cef5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/Analysis/ActualComplexSourceMoment/Variantf3e247f7418d075a9527e275dd42f62365cffae91057ca8732b7b4aee4405555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e22b3a0f1089823dc00a83172ac397f94f643908d635654f0b7b2f488ca6e53",
  "verification": {
    "reference": "docs/verification/Analysis/ActualComplexSourceMoment/Variantf3e247f7418d075a9527e275dd42f62365cffae91057ca8732b7b4aee4405555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf4fed73-3dce-2682-e0bd-9622ed656dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_weighted_bump_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (scaledBump A x : ℂ)) volume := by
  rw [complex_weighted_bump_indicator hA]
  have hc : Continuous (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) :=
    (Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).mul
      (Complex.continuous_ofReal.comp (bumpInterior_continuous A))
  exact hc.integrableOn_Icc.integrable_indicator measurableSet_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualComplexSourceMoment/Variantf3e247f7418d075a9527e275dd42f62365cffae91057ca8732b7b4aee4405555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualComplexSourceMoment/Variantf3e247f7418d075a9527e275dd42f62365cffae91057ca8732b7b4aee4405555.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9df12518b30d9151b612ca018df0c320cef5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
