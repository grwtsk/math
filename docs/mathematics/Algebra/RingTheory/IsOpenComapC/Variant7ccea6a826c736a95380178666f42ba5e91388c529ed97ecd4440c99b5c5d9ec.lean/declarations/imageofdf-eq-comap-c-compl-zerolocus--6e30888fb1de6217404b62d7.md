# imageOfDf_eq_comap_C_compl_zeroLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c48c4c73-0209-07e6-4988-8b83e387fa58",
  "kind": "theorem",
  "lexical_name": "imageOfDf_eq_comap_C_compl_zeroLocus",
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
  "slug": "imageofdf-eq-comap-c-compl-zerolocus--6e30888fb1de6217404b62d7",
  "source": {
    "blob": "da5bf9d6200b96310508c193b6ec6f2a2d57f7f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e30888fb1de6217404b62d7417e3d22f78f162d5d39e44660818a4344c75acb",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c48c4c73-0209-07e6-4988-8b83e387fa58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imageOfDf_eq_comap_C_compl_zeroLocus :
    imageOfDf f = PrimeSpectrum.comap (C : R →+* R[X]) '' (zeroLocus {f})ᶜ := by
  ext x
  refine ⟨fun hx => ⟨⟨map C x.asIdeal, isPrime_map_C_of_isPrime x.isPrime⟩, ⟨?_, ?_⟩⟩, ?_⟩
  · rw [mem_compl_iff, mem_zeroLocus, singleton_subset_iff]
    obtain ⟨i, hi⟩ := hx
    exact fun a => hi (mem_map_C_iff.mp a i)
  · ext x
    refine ⟨fun h => ?_, fun h => subset_span (mem_image_of_mem C.1 h)⟩
    rw [← @coeff_C_zero R x _]
    exact mem_map_C_iff.mp h 0
  · rintro ⟨xli, complement, rfl⟩
    exact comap_C_mem_imageOfDf complement

/-- The morphism `C⁺ : Spec R[x] → Spec R` is open. -/
@[stacks 00FB "First part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5bf9d6200b96310508c193b6ec6f2a2d57f7f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
