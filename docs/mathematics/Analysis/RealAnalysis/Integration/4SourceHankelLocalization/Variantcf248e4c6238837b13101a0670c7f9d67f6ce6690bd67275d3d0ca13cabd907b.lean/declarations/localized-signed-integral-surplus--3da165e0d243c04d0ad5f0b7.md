# localized_signed_integral_surplus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61d4db3b-4d07-7740-db4f-ec0aecf2bdbb",
  "kind": "theorem",
  "lexical_name": "localized_signed_integral_surplus",
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
  "slug": "localized-signed-integral-surplus--3da165e0d243c04d0ad5f0b7",
  "source": {
    "blob": "390bafa19f023a8cb6faa922f7caf7ce15c6cdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variantcf248e4c6238837b13101a0670c7f9d67f6ce6690bd67275d3d0ca13cabd907b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3da165e0d243c04d0ad5f0b78e4a97e0fbbbd9898a724114911249a4a58fa89c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variantcf248e4c6238837b13101a0670c7f9d67f6ce6690bd67275d3d0ca13cabd907b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d4db3b-4d07-7740-db4f-ec0aecf2bdbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localized_signed_integral_surplus {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, B ≤ m) (ht : ∀ n ∈ t, B ≤ n) :
    (∫ x, forwardProfile A s c x * reflectedProfile A t d x) =
      ((∫ x, (localizedForwardProfile A B s c x +
        localizedReflectedProfile A B t d x) ^ 2) -
        (∫ x, (localizedForwardProfile A B s c x -
          localizedReflectedProfile A B t d x) ^ 2)) / 4 := by
  obtain ⟨hp, hm⟩ := localized_square_sectors_integrable hA B s t c d
  calc
    _ = ∫ x, ((localizedForwardProfile A B s c x + localizedReflectedProfile A B t d x) ^ 2 -
        (localizedForwardProfile A B s c x - localizedReflectedProfile A B t d x) ^ 2) / 4 := by
      apply integral_congr_ae
      filter_upwards [] with x
      rw [← localized_product_eq hA hB s t c d hs ht x]
      ring
    _ = _ := by rw [integral_div, integral_sub hp hm]

/-- The unchanged normalized source is nonzero at the unit-scale center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variantcf248e4c6238837b13101a0670c7f9d67f6ce6690bd67275d3d0ca13cabd907b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variantcf248e4c6238837b13101a0670c7f9d67f6ce6690bd67275d3d0ca13cabd907b.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `390bafa19f023a8cb6faa922f7caf7ce15c6cdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
