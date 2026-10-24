# actualXiAbsoluteCumulative_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78616982-81a9-d081-2d21-4e292326250f",
  "kind": "theorem",
  "lexical_name": "actualXiAbsoluteCumulative_absolutelyContinuous",
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
  "slug": "actualxiabsolutecumulative-absolutelycontinuous--be84b01d6314610f1b620428",
  "source": {
    "blob": "a2d1c98f67f0f29e235027d5809b51554f7352b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be84b01d6314610f1b620428195ee8c2284c6d22805f9bcb2659a305f4ab5731",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78616982-81a9-d081-2d21-4e292326250f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiAbsoluteCumulative_absolutelyContinuous {b : ℝ} (hb : Real.log 7 ≤ b) :
    AbsolutelyContinuousOnInterval actualXiAbsoluteCumulative (Real.log 7) b :=
  (actual_abs_intervalIntegrable hb).absolutelyContinuousOnInterval_intervalIntegral
    (by simp : Real.log 7 ∈ uIcc (Real.log 7) b)

/-- The AE cumulative derivative retains the actual original absolute primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2d1c98f67f0f29e235027d5809b51554f7352b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
