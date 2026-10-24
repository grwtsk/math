# condLExp_finsetSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28634c59-aa04-2171-aa10-0e9b3a6a68b4",
  "kind": "theorem",
  "lexical_name": "condLExp_finsetSum",
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
  "slug": "condlexp-finsetsum--a9d5fb0ade56436c469c94b2",
  "source": {
    "blob": "09bf39056775d3f28d8703d3e7a03950392b4875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 346,
    "path": "GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d5fb0ade56436c469c94b2cc90efe6b0fc91b282857387a2383c41268b7c5f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28634c59-aa04-2171-aa10-0e9b3a6a68b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condLExp_finsetSum (s : Finset ι) {X : ι → Ω → ℝ≥0∞}
    (hX : ∀ i, AEMeasurable[mΩ₀] (X i) P) :
    P⁻[∑ i ∈ s, X i|mΩ] =ᵐ[P] ∑ i ∈ s, P⁻[X i|mΩ] := by
  convert! condLExp_tsum mΩ (fun i : s ↦ hX i)
  · simp [Finset.sum_attach]
  · simp [Finset.sum_attach _ (f := (P⁻[X ·|mΩ]))]

@[deprecated (since := "2026-04-08")] alias condLExp_finset_sum := condLExp_finsetSum

end Sum

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09bf39056775d3f28d8703d3e7a03950392b4875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
