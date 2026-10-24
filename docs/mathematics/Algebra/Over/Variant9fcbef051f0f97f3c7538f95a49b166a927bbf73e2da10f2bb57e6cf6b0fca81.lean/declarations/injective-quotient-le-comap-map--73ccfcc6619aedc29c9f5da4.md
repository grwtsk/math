# injective_quotient_le_comap_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eab245e6-9927-6e8a-782d-294c2384d48a",
  "kind": "theorem",
  "lexical_name": "injective_quotient_le_comap_map",
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
  "slug": "injective-quotient-le-comap-map--73ccfcc6619aedc29c9f5da4",
  "source": {
    "blob": "9eff4df97936422d010f723bf024f2a045de6dfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 85,
    "path": "GRWTSK/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ccfcc6619aedc29c9f5da4d77ec7dea35f40aa5b19aba00a281163f61806ba",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eab245e6-9927-6e8a-782d-294c2384d48a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem injective_quotient_le_comap_map (P : Ideal R[X]) :
    Function.Injective <|
      Ideal.quotientMap
        (Ideal.map (Polynomial.mapRingHom (Quotient.mk (P.comap (C : R →+* R[X])))) P)
        (Polynomial.mapRingHom (Ideal.Quotient.mk (P.comap (C : R →+* R[X]))))
        le_comap_map := by
  refine' quotientMap_injective' (le_of_eq _)
  rw [comap_map_of_surjective (mapRingHom (Ideal.Quotient.mk (P.comap (C : R →+* R[X]))))
      (map_surjective (Ideal.Quotient.mk (P.comap (C : R →+* R[X]))) Ideal.Quotient.mk_surjective)]
  refine' le_antisymm (sup_le le_rfl _) (le_sup_of_le_left le_rfl)
  refine' fun p hp =>
    polynomial_mem_ideal_of_coeff_mem_ideal P p fun n => Ideal.Quotient.eq_zero_iff_mem.mp _
  simpa only [coeff_map, coe_mapRingHom] using ext_iff.mp (Ideal.mem_bot.mp (mem_comap.mp hp)) n
#align ideal.injective_quotient_le_comap_map Ideal.injective_quotient_le_comap_map

/-- The identity in this lemma asserts that the "obvious" square
```
    R    → (R / (P ∩ R))
    ↓          ↓
R[x] / P → (R / (P ∩ R))[x] / (P / (P ∩ R))
```
commutes.  It is used, for instance, in the proof of `quotient_mk_comp_C_is_integral_of_jacobson`,
in the file `RingTheory.Jacobson`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eff4df97936422d010f723bf024f2a045de6dfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
