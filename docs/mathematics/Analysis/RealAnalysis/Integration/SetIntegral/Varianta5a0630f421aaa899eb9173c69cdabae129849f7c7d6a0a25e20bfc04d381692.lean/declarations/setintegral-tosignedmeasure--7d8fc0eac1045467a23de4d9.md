# setIntegral_toSignedMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe7d4066-983e-7e41-ca67-f054a0f22ea3",
  "kind": "theorem",
  "lexical_name": "setIntegral_toSignedMeasure",
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
  "slug": "setintegral-tosignedmeasure--7d8fc0eac1045467a23de4d9",
  "source": {
    "blob": "ffed85567055957af5325ba9761e2f3ebd7792e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 537,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d8fc0eac1045467a23de4d9c4df219cb930573dd6b0c11b660b3895f6195303",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe7d4066-983e-7e41-ca67-f054a0f22ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem setIntegral_toSignedMeasure {μ : Measure X} [IsFiniteMeasure μ]
    {f : X → G} {s : Set X} (hs : MeasurableSet s) :
    ∫ᵛ x in s, f x ∂<•μ.toSignedMeasure = ∫ x in s, f x ∂μ := by
  rw [← integral_toSignedMeasure, restrict_toSignedMeasure hs]

/-- If `f` is integrable, then `∫ᵛ x in s, f x ∂[B; μ]` is absolutely continuous in `s`:
it tends to zero as `μ.variation s` tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffed85567055957af5325ba9761e2f3ebd7792e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
