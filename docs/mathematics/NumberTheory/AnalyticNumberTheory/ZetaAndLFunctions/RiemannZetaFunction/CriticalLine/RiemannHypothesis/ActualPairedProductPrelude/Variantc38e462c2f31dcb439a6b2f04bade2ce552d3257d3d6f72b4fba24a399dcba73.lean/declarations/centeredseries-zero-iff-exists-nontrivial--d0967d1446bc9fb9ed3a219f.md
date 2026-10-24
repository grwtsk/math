# centeredSeries_zero_iff_exists_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d980310f-76c3-6dcd-d84b-916088308cea",
  "kind": "theorem",
  "lexical_name": "centeredSeries_zero_iff_exists_nontrivial",
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
  "slug": "centeredseries-zero-iff-exists-nontrivial--d0967d1446bc9fb9ed3a219f",
  "source": {
    "blob": "f44ad91696b763a4f6276767d907bf75960d9923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductPrelude/Variantc38e462c2f31dcb439a6b2f04bade2ce552d3257d3d6f72b4fba24a399dcba73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0967d1446bc9fb9ed3a219fb0a38985bd71c0b907cc91e39bc6d4c98ee21f6e",
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

Occurrence: `result:d980310f-76c3-6dcd-d84b-916088308cea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredSeries_zero_iff_exists_nontrivial (w : ℂ) :
    XiToeplitz.centeredSeries w = 0 ↔
      ∃ u : ℂ, u ^ 2 = w ∧ NontrivialZetaZero (1 / 2 + u) := by
  constructor
  · intro hw
    obtain ⟨u, hu⟩ := XiToeplitz.exists_complex_square w
    refine ⟨u, hu, ?_⟩
    apply (XiToeplitz.xi_zero_iff_nontrivial (1 / 2 + u)).mp
    rw [← XiToeplitz.centeredSeries_square u, hu, hw]
  · rintro ⟨u, rfl, hu⟩
    rw [XiToeplitz.centeredSeries_square]
    exact (XiToeplitz.xi_zero_iff_nontrivial (1 / 2 + u)).mpr hu

/-- Translation from the centered coordinate does not change analytic
multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductPrelude/Variantc38e462c2f31dcb439a6b2f04bade2ce552d3257d3d6f72b4fba24a399dcba73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductPrelude/Variantc38e462c2f31dcb439a6b2f04bade2ce552d3257d3d6f72b4fba24a399dcba73.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44ad91696b763a4f6276767d907bf75960d9923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
