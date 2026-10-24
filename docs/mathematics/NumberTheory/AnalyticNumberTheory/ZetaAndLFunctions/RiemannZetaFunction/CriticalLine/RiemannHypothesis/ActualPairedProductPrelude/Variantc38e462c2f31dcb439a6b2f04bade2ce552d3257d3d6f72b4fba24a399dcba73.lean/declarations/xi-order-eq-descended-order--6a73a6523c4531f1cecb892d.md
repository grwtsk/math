# xi_order_eq_descended_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a05a3b7a-0ca3-9d4f-b723-0aa98494bd9a",
  "kind": "theorem",
  "lexical_name": "xi_order_eq_descended_order",
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
  "slug": "xi-order-eq-descended-order--6a73a6523c4531f1cecb892d",
  "source": {
    "blob": "f44ad91696b763a4f6276767d907bf75960d9923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductPrelude/Variantc38e462c2f31dcb439a6b2f04bade2ce552d3257d3d6f72b4fba24a399dcba73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a73a6523c4531f1cecb892da94c176f97eb5a26c6bbfa47358d5be3ef01bc68",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductPrelude/Variantc38e462c2f31dcb439a6b2f04bade2ce552d3257d3d6f72b4fba24a399dcba73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05a3b7a-0ca3-9d4f-b723-0aa98494bd9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_order_eq_descended_order (u : ℂ) (hu : u ≠ 0) :
    meromorphicOrderAt XiToeplitz.xi (1 / 2 + u) =
      meromorphicOrderAt XiToeplitz.centeredSeries (u ^ 2) := by
  have hs := meromorphicOrderAt_comp_square XiToeplitz.centeredSeries u hu
  have heq : (XiToeplitz.centeredSeries ∘ fun z : ℂ => z ^ 2) =
      (fun z : ℂ => XiToeplitz.xi (1 / 2 + z)) := by
    funext z
    exact XiToeplitz.centeredSeries_square z
  rw [heq] at hs
  exact (centeredXi_order u).symm.trans hs

/-- The centered preimages `u` and `-u` are one descended zero occurrence,
not two: the analytic orders agree exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductPrelude/Variantc38e462c2f31dcb439a6b2f04bade2ce552d3257d3d6f72b4fba24a399dcba73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductPrelude/Variantc38e462c2f31dcb439a6b2f04bade2ce552d3257d3d6f72b4fba24a399dcba73.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44ad91696b763a4f6276767d907bf75960d9923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
