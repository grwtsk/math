# negative_seven_real_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b82c7951-7c57-94c6-bb83-18d33a39ea3f",
  "kind": "theorem",
  "lexical_name": "negative_seven_real_power",
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
  "slug": "negative-seven-real-power--eba83e47c2cfea0e3fb4a872",
  "source": {
    "blob": "f58a79a8deb9491cb039465c636e51451c8f84e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eba83e47c2cfea0e3fb4a872459f7392ea51b9a7a0513af012a3d0611f33010b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b82c7951-7c57-94c6-bb83-18d33a39ea3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem negative_seven_real_power {x : ℝ} (hx : 0 < x) :
    x^(-7 : ℝ) = 1/x^7 := by
  rw [show (-7 : ℝ) = -(7 : ℝ) by norm_num, Real.rpow_neg hx.le,
    one_div]
  simp only [Real.rpow_ofNat]

/-- Genuine integrability precedes the improper integral identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f58a79a8deb9491cb039465c636e51451c8f84e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
