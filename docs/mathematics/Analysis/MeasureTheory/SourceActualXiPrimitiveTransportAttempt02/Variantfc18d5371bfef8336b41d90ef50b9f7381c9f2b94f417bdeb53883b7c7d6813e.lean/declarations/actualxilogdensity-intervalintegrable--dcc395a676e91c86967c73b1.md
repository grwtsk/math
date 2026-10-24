# actualXiLogDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d9f7bbc-62b8-6ff5-84f7-63a6ef14bbf6",
  "kind": "theorem",
  "lexical_name": "actualXiLogDensity_intervalIntegrable",
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
  "slug": "actualxilogdensity-intervalintegrable--dcc395a676e91c86967c73b1",
  "source": {
    "blob": "4692603930cdd10a126024686fd166a37d3fb974",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 29,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantfc18d5371bfef8336b41d90ef50b9f7381c9f2b94f417bdeb53883b7c7d6813e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcc395a676e91c86967c73b1490b7d6b6042d54b85187290551a2336962308b1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantfc18d5371bfef8336b41d90ef50b9f7381c9f2b94f417bdeb53883b7c7d6813e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d9f7bbc-62b8-6ff5-84f7-63a6ef14bbf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable actualXiLogDensity volume a b := by
  have hpsi : IntervalIntegrable (fun t => Chebyshev.psi (Real.exp t)) volume a b :=
    (Chebyshev.psi_mono.comp Real.exp_monotone).intervalIntegrable
  have hxi := (hpsi.sub (Real.continuous_exp.intervalIntegrable a b)).add
    ((continuous_const : Continuous (fun _ : ℝ =>
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))).intervalIntegrable a b)
  have he : Continuous (fun t : ℝ => Real.exp (-t / 2)) :=
    Real.continuous_exp.comp ((continuous_id : Continuous (fun t : ℝ => t)).neg.div_const 2)
  change IntervalIntegrable (fun t => Real.exp (-t / 2) *
    (Chebyshev.psi (Real.exp t) - Real.exp t +
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))) volume a b
  exact hxi.continuousOn_mul he.continuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantfc18d5371bfef8336b41d90ef50b9f7381c9f2b94f417bdeb53883b7c7d6813e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantfc18d5371bfef8336b41d90ef50b9f7381c9f2b94f417bdeb53883b7c7d6813e.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4692603930cdd10a126024686fd166a37d3fb974` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
