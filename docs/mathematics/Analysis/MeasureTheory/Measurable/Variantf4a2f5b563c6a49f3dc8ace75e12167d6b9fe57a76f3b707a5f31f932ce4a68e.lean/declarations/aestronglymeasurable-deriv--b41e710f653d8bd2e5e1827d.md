# aestronglyMeasurable_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba126385-d9b7-f007-6a3e-4e903693297d",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_deriv",
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
  "slug": "aestronglymeasurable-deriv--b41e710f653d8bd2e5e1827d",
  "source": {
    "blob": "97d862382122315b30b02a8eecb3d5131c94041c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 453,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b41e710f653d8bd2e5e1827d269534028ae9fa0ca5aad629d38087eef5c45ef6",
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

Occurrence: `result:ba126385-d9b7-f007-6a3e-4e903693297d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_deriv [MeasurableSpace 𝕜] [OpensMeasurableSpace 𝕜]
    [SecondCountableTopology F] (f : 𝕜 → F) (μ : Measure 𝕜) : AEStronglyMeasurable (deriv f) μ :=
  (stronglyMeasurable_deriv f).aestronglyMeasurable
#align ae_strongly_measurable_deriv aestronglyMeasurable_deriv

end fderiv

section RightDeriv

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]

variable {f : ℝ → F} (K : Set F)

namespace RightDerivMeasurableAux

/-- The set `A f L r ε` is the set of points `x` around which the function `f` is well approximated
at scale `r` by the linear map `h ↦ h • L`, up to an error `ε`. We tweak the definition to
make sure that this is open on the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d862382122315b30b02a8eecb3d5131c94041c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
