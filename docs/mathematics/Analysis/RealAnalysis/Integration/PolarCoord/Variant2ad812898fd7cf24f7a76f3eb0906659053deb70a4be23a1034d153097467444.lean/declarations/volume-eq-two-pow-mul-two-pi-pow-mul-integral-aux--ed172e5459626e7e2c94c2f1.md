# volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87c40f14-a699-9236-821a-c35875b4a249",
  "kind": "theorem",
  "lexical_name": "volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux",
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
  "slug": "volume-eq-two-pow-mul-two-pi-pow-mul-integral-aux--ed172e5459626e7e2c94c2f1",
  "source": {
    "blob": "a9c5acef0a49cf0170cb4fb694d3fde14e22f088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 420,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed172e5459626e7e2c94c2f1e7820c9522f40d34e56cf433c0432357967feb4c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87c40f14-a699-9236-821a-c35875b4a249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux
    (hA : normAtAllPlaces ⁻¹' normAtAllPlaces '' A = A) :
    normAtAllPlaces '' A ∩ (⋂ w : {w // IsReal w}, {x | x w.1 ≠ 0}) =
      normAtComplexPlaces '' plusPart A := by
  ext x
  refine ⟨?_, ?_⟩
  · rintro ⟨⟨a, ha, rfl⟩, ha₂⟩
    refine ⟨mixedSpaceOfRealSpace (normAtAllPlaces a), ⟨?_, ?_⟩, ?_⟩
    · rw [← hA, Set.mem_preimage, normAtAllPlaces_normAtAllPlaces]
      exact Set.mem_image_of_mem normAtAllPlaces ha
    · intro w
      refine lt_of_le_of_ne' (normAtPlace_nonneg _ _) (Set.mem_iInter.mp ha₂ w)
    · rw [normAtComplexPlaces_normAtAllPlaces]
  · rintro ⟨a, ⟨ha₁, ha₂⟩, rfl⟩
    refine ⟨⟨a, ha₁, funext fun w ↦ ?_⟩, Set.mem_iInter.mpr fun w ↦ ?_⟩
    · obtain hw | hw := isReal_or_isComplex w
      · simpa [normAtComplexPlaces_apply_isReal ⟨w, hw⟩, normAtPlace_apply_of_isReal hw]
          using (ha₂ ⟨w, hw⟩).le
      · rw [normAtAllPlaces_apply, normAtPlace_apply_of_isComplex hw,
          normAtComplexPlaces_apply_isComplex ⟨w, hw⟩]
    · simpa [Set.mem_ofPred_eq, normAtComplexPlaces_apply_isReal] using (ha₂ w).ne'

open scoped Classical in
/--
If the measurable set `A` is norm-stable in the sense that
`normAtAllPlaces⁻¹ (normAtAllPlaces '' A) = A`, then its volume can be computed via an integral
over `normAtAllPlaces '' A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c5acef0a49cf0170cb4fb694d3fde14e22f088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
