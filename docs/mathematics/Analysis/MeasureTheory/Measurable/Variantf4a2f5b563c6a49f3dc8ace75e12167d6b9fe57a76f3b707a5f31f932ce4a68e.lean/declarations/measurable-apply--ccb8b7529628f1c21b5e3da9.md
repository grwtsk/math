# measurable_apply₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d9f8a71-69fb-7e28-9f01-b1623857ac13",
  "kind": "theorem",
  "lexical_name": "measurable_apply₂",
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
  "slug": "measurable-apply--ccb8b7529628f1c21b5e3da9",
  "source": {
    "blob": "97d862382122315b30b02a8eecb3d5131c94041c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 97,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb8b7529628f1c21b5e3da97d7d1ba2d287880d5f84abec10af7743eb4d24e2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d9f8a71-69fb-7e28-9f01-b1623857ac13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_apply₂ [MeasurableSpace E] [OpensMeasurableSpace E]
    [SecondCountableTopologyEither (E →L[𝕜] F) E]
    [MeasurableSpace F] [BorelSpace F] : Measurable fun p : (E →L[𝕜] F) × E => p.1 p.2 :=
  isBoundedBilinearMapApply.continuous.measurable
#align continuous_linear_map.measurable_apply₂ ContinuousLinearMap.measurable_apply₂

end ContinuousLinearMap

section fderiv

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

variable {f : E → F} (K : Set (E →L[𝕜] F))

namespace FDerivMeasurableAux

/-- The set `A f L r ε` is the set of points `x` around which the function `f` is well approximated
at scale `r` by the linear map `L`, up to an error `ε`. We tweak the definition to make sure that
this is an open set.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d862382122315b30b02a8eecb3d5131c94041c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
