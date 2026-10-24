# short_add_signed_boundary_eq_closedPrimeMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c02694c6-f3da-28cf-7979-9ba44f85f667",
  "kind": "theorem",
  "lexical_name": "short_add_signed_boundary_eq_closedPrimeMoment",
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
  "slug": "short-add-signed-boundary-eq-closedprimemoment--7bf987b53d201e559355cc6e",
  "source": {
    "blob": "2ab44a1a0eecc856a036f4176df1f77fe12fcdd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 142,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant784bf10c762bb2098b4c688bbdd2ce460f283f5f88ecc06bad76809008adf31c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf987b53d201e559355cc6ec81795700dddc1135bf2282ea2be98ea66e6a16d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant784bf10c762bb2098b4c688bbdd2ce460f283f5f88ecc06bad76809008adf31c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c02694c6-f3da-28cf-7979-9ba44f85f667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem short_add_signed_boundary_eq_closedPrimeMoment (A : ℝ) (hA : 1 ≤ A)
    (U : ℕ) (hU : 1 ≤ U) :
    (∑ m ∈ Finset.Icc 1 U, vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
      (∑ d ∈ Finset.Icc 1 U, realMoebius d *
        (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) =
      EstimatePrimeSmoothDefect.closedPrimeMoment A := by
  rw [short_add_signed_boundary_eq_mertensResidual A hA U hU]
  exact mertensResidual_eq_closedPrimeMoment A hA

end
end FormalResearch.RiemannHypothesis.SourcePhysicalCutoffComplement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant784bf10c762bb2098b4c688bbdd2ce460f283f5f88ecc06bad76809008adf31c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant784bf10c762bb2098b4c688bbdd2ce460f283f5f88ecc06bad76809008adf31c.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ab44a1a0eecc856a036f4176df1f77fe12fcdd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
