# a2Bound_transport_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b54dd04-a63b-a4f3-b8fd-905c7e9b6601",
  "kind": "theorem",
  "lexical_name": "a2Bound_transport_iff",
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
  "slug": "a2bound-transport-iff--18e5b38f20bdb7440b80e8d8",
  "source": {
    "blob": "480db2f5eac65640c9a6f869be03eca45ab3a14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/Analysis/Integral/AffineWeightedTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18e5b38f20bdb7440b80e8d8d00810069e5800e17277f298ca23d0ece8f78a8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrence3b749acd0af376d3c3934895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b54dd04-a63b-a4f3-b8fd-905c7e9b6601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem a2Bound_transport_iff (p : AffineChart) (w : ℝ → ℝ) (C : ℝ) :
    A2Bound (transportWeight p w) C ↔ A2Bound w C := by
  have hinv : (fun x => (transportWeight p w x)⁻¹) =
      transportWeight p (fun x => (w x)⁻¹) := rfl
  constructor
  · intro ht b h hh
    have hs := ht (p.apply b) (p.slope*h) (mul_ne_zero p.slope_ne_zero hh)
    rw [hinv, intervalMean_transport, intervalMean_transport] at hs
    exact hs
  · intro ht b h hh
    have hs := ht (p.inv b) (h/p.slope) (div_ne_zero hh p.slope_ne_zero)
    have h1 := intervalMean_transport p w (p.inv b) (h/p.slope)
    have h2 := intervalMean_transport p (fun x => (w x)⁻¹) (p.inv b) (h/p.slope)
    have hh' : p.slope*(h/p.slope)=h := by field_simp [p.slope_ne_zero]
    rw [AffineChart.apply_inv, hh'] at h1 h2
    rw [hinv, h1, h2]
    exact hs

/-- No implication about affine sums or the original arithmetic magnitude is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrence3b749acd0af376d3c3934895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integral/AffineWeightedTransport.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480db2f5eac65640c9a6f869be03eca45ab3a14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
