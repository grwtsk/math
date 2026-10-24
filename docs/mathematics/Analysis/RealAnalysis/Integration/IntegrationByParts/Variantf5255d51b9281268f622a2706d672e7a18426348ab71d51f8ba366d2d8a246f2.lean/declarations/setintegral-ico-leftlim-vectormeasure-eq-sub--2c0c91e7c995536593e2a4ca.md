# setIntegral_Ico_leftLim_vectorMeasure_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:211caf5a-b325-58bb-28c3-fadd8fa4d6fc",
  "kind": "theorem",
  "lexical_name": "setIntegral_Ico_leftLim_vectorMeasure_eq_sub",
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
  "slug": "setintegral-ico-leftlim-vectormeasure-eq-sub--2c0c91e7c995536593e2a4ca",
  "source": {
    "blob": "648b58281741f1c9c0b5501f2e069f4b0f6b2168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 257,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantf5255d51b9281268f622a2706d672e7a18426348ab71d51f8ba366d2d8a246f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0c91e7c995536593e2a4ca69cf6c484f64d5fad945ac457dee3102a4fab876",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantf5255d51b9281268f622a2706d672e7a18426348ab71d51f8ba366d2d8a246f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:211caf5a-b325-58bb-28c3-fadd8fa4d6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_Ico_leftLim_vectorMeasure_eq_sub
    (hf : BoundedVariationOn f univ) (hg : BoundedVariationOn g univ) (hab : a ≤ b) :
    ∫ᵛ x in Ico a b, f.leftLim x ∂[B; hg.vectorMeasure] =
      B (f.leftLim b) (g.leftLim b) - B (f.leftLim a) (g.leftLim a)
      - ∫ᵛ x in Ico a b, g.rightLim x ∂[B.flip; hf.vectorMeasure] := by
  rw [hf.setIntegral_leftLim_vectorMeasure_eq_sub hg]
  simp [hab, hf, hg]

/-- *Integration by parts* for Stieltjes vector measure, between `f.rightLim dg` and `g.leftLim df`.
Version with a general pairing function `B`, over an interval `[a, b)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantf5255d51b9281268f622a2706d672e7a18426348ab71d51f8ba366d2d8a246f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantf5255d51b9281268f622a2706d672e7a18426348ab71d51f8ba366d2d8a246f2.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648b58281741f1c9c0b5501f2e069f4b0f6b2168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
