# preimage_comap_zeroLocus_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feb8e218-092a-8fec-f82b-d27e531e876f",
  "kind": "theorem",
  "lexical_name": "preimage_comap_zeroLocus_aux",
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
  "slug": "preimage-comap-zerolocus-aux--9a889aa2f6eb2f3bb272b894",
  "source": {
    "blob": "28264c3f984918cdf2cc035f1a92c2286ed2594d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 583,
    "path": "GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a889aa2f6eb2f3bb272b894789c2ad91b6fb3c51abfd26ebaacbfde5f53b68c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feb8e218-092a-8fec-f82b-d27e531e876f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_comap_zeroLocus_aux (f : R →+* S) (s : Set R) :
    (fun y => ⟨Ideal.comap f y.asIdeal, inferInstance⟩ : PrimeSpectrum S → PrimeSpectrum R) ⁻¹'
        zeroLocus s =
      zeroLocus (f '' s) := by
  ext x
  simp only [mem_zeroLocus, Set.image_subset_iff, Set.mem_preimage, mem_zeroLocus, Ideal.coe_comap]
#align prime_spectrum.preimage_comap_zero_locus_aux PrimeSpectrum.preimage_comap_zeroLocus_aux

/-- The function between prime spectra of commutative rings induced by a ring homomorphism.
This function is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28264c3f984918cdf2cc035f1a92c2286ed2594d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
