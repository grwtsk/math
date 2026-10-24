# exists_isFinite_morphismRestrict_of_finite_preimage_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07e1ed0b-6097-77c3-3457-217f4be0ca5c",
  "kind": "lemma",
  "lexical_name": "exists_isFinite_morphismRestrict_of_finite_preimage_singleton",
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
  "slug": "exists-isfinite-morphismrestrict-of-finite-preimage-singleton--ddc3ba344122888947e48b44",
  "source": {
    "blob": "7f3bd6ad2dda371d0d02b07cc727d4afeb8fccbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 414,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddc3ba344122888947e48b442188f82813fd5c1f4de3c84b4b17215384d0b26e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07e1ed0b-6097-77c3-3457-217f4be0ca5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isFinite_morphismRestrict_of_finite_preimage_singleton
    [IsProper f] (y : Y) (hx : (f ⁻¹' {y}).Finite) :
    ∃ V : Y.Opens, y ∈ V ∧ IsFinite (f ∣_ V) := by
  let V : Y.Opens := ⟨_, (f.isClosedMap _ f.quasiFiniteLocus.isOpen.isClosed_compl).isOpen_compl⟩
  refine ⟨V, ?_, ?_⟩
  · suffices ∀ x, f x = y → f.QuasiFiniteAt x by simpa [V, not_imp_not]
    rintro x rfl
    have : Finite (f.fiber (f x)) := (f.fiberHomeo (f x)).finite_iff.mpr ‹_›
    exact Scheme.Hom.quasiFiniteAt_iff_isOpen_singleton_asFiber.mpr (isOpen_discrete _)
  · suffices LocallyQuasiFinite (f ∣_ V) from .of_isProper_of_locallyQuasiFinite _
    rw [← Scheme.Hom.quasiFiniteLocus_eq_top_iff]
    ext x
    have : f.QuasiFiniteAt ((f ⁻¹ᵁ V).ι x) := by by_contra H; exact x.2 ⟨_, H, by simp⟩
    rw [← Scheme.Hom.quasiFiniteAt_comp_iff_of_isOpenImmersion, ← morphismRestrict_ι,
      Scheme.Hom.quasiFiniteAt_comp_iff] at this
    simpa

@[stacks 0AH8]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3bd6ad2dda371d0d02b07cc727d4afeb8fccbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
