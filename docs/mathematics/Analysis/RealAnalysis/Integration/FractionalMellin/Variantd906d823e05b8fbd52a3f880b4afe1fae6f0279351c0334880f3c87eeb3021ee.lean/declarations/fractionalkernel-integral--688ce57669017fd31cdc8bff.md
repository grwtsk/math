# fractionalKernel_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5815b6f-dbbe-87cb-d80f-145cc704d552",
  "kind": "theorem",
  "lexical_name": "fractionalKernel_integral",
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
  "slug": "fractionalkernel-integral--688ce57669017fd31cdc8bff",
  "source": {
    "blob": "834efd3042ed8e3fa4ecb1e2664c07e7b9f2ca88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:688ce57669017fd31cdc8bfffffb44dcae958c95035c034904a83cc728ccef6f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5815b6f-dbbe-87cb-d80f-145cc704d552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalKernel_integral (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    (∫ x : ℝ in Ioi (0 : ℝ), fractionalKernel s x) = -riemannZeta s / s := by
  rw [← intervalIntegral.integral_interval_add_Ioi
    (fractionalKernel_integrable s hs hs') (fractionalKernel_integrable_tail s hs),
    fractionalKernel_integral_near_zero s hs', fractionalKernel_integral_tail s hs hs']
  ring

/-- Positive rescaling preserves genuine full-half-line Mellin integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834efd3042ed8e3fa4ecb1e2664c07e7b9f2ca88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
