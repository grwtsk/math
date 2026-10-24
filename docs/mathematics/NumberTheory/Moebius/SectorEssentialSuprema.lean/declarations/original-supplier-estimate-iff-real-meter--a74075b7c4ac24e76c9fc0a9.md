# original_supplier_estimate_iff_real_meter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b290d11-8fb8-8160-7c63-a4f158409f15",
  "kind": "theorem",
  "lexical_name": "original_supplier_estimate_iff_real_meter",
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
  "slug": "original-supplier-estimate-iff-real-meter--a74075b7c4ac24e76c9fc0a9",
  "source": {
    "blob": "09884075d49fedab864c6ac8639e043d9d7f23d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 186,
    "path": "GRWTSK/NumberTheory/Moebius/SectorEssentialSuprema.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a74075b7c4ac24e76c9fc0a91cc33941c9e2cb52a57604f548a9cf6bd7464808",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SectorEssentialSuprema.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b290d11-8fb8-8160-7c63-a4f158409f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_supplier_estimate_iff_real_meter :
    OriginalSupplierEstimate ↔ OriginalSupplierMeterEstimate := by
  constructor
  · rintro ⟨K₀, D, p, R, hK, hD, hp, hR, bound⟩
    refine ⟨K₀, D, p, R, hK, hD, hp, hR, ?_⟩
    intro A threshold
    have hA : 1 ≤ A := (le_max_left 1 (4 * K₀)).trans (hR.trans threshold)
    rw [real_meter_le_iff hA]
    refine ⟨supplier_allowance_nonnegative hA hK hD, ?_, ?_⟩
    · simpa only [one_mul] using bound A threshold 1 (Or.inr rfl)
    · simpa only [neg_one_mul, neg_pos] using bound A threshold (-1) (Or.inl rfl)
  · rintro ⟨K₀, D, p, R, hK, hD, hp, hR, bound⟩
    refine ⟨K₀, D, p, R, hK, hD, hp, hR, ?_⟩
    intro A threshold σ polarity
    have hA : 1 ≤ A := (le_max_left 1 (4 * K₀)).trans (hR.trans threshold)
    rcases (real_meter_le_iff hA _).mp (bound A threshold) with ⟨_, positive, negative⟩
    rcases polarity with rfl | rfl
    · simpa only [neg_one_mul, neg_pos] using negative
    · simpa only [one_mul] using positive

/-- A genuine absolute-growth proof returns to the original essential-supremum meter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SectorEssentialSuprema.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SectorEssentialSuprema.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09884075d49fedab864c6ac8639e043d9d7f23d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
