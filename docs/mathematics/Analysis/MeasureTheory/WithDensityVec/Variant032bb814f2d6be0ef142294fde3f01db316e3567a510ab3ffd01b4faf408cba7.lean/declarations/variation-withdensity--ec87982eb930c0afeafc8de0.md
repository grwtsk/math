# variation_withDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cc3e48d-b235-4025-8dc8-9b7a35b9c8c4",
  "kind": "lemma",
  "lexical_name": "variation_withDensity",
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
  "slug": "variation-withdensity--ec87982eb930c0afeafc8de0",
  "source": {
    "blob": "d576c13e2f8671f4716f3526118d6829418ef92a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 362,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec87982eb930c0afeafc8de0854a5528267079f8c4a759b4d53b024510aa5d49",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cc3e48d-b235-4025-8dc8-9b7a35b9c8c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_withDensity [CompleteSpace G]
    (hf : μ.Integrable f) (hB : ∀ x y, ‖B x y‖₊ = ‖x‖₊ * ‖y‖₊) :
    (μ.withDensity f B).variation = (μ.transpose B).variation.withDensity (fun x ↦ ‖f x‖ₑ) := by
  apply variation_withDensity' hf (fun x y ↦ ?_)
  refine le_antisymm (ContinuousLinearMap.le_opNorm (B.flip y) x) ?_
  rw [hB, mul_comm]
  gcongr
  apply ContinuousLinearMap.opNNNorm_le_bound
  simp [hB, mul_comm]

/-- The variation of a vecture measure with density `f` with respect to a positive measure `μ`
is the measure with density `‖f‖ₑ` with respect to `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d576c13e2f8671f4716f3526118d6829418ef92a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
