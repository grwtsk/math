# quotient_mk_comp_C_isIntegral_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c4ec69c-2035-3d95-d7ac-30fb77b5ec1e",
  "kind": "theorem",
  "lexical_name": "quotient_mk_comp_C_isIntegral_of_isJacobsonRing",
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
  "slug": "quotient-mk-comp-c-isintegral-of-isjacobsonring--5852120972facd805769dc02",
  "source": {
    "blob": "d9dbe84d417b0086e6bfc7f205cefac230f5406b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 543,
    "path": "GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5852120972facd805769dc022d052a5bfa7cccc9818028178b8d022249ac2de8",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c4ec69c-2035-3d95-d7ac-30fb77b5ec1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_mk_comp_C_isIntegral_of_isJacobsonRing :
    ((Ideal.Quotient.mk P).comp C : R →+* R[X] ⧸ P).IsIntegral := by
  let P' : Ideal R := P.comap C
  haveI : P'.IsPrime := comap_isPrime C P
  let f : R[X] →+* Polynomial (R ⧸ P') := Polynomial.mapRingHom (Ideal.Quotient.mk P')
  have hf : Function.Surjective ↑f := map_surjective (Ideal.Quotient.mk P') Quotient.mk_surjective
  have hPJ : P = (P.map f).comap f := by
    rw [comap_map_of_surjective _ hf]
    refine le_antisymm (le_sup_of_le_left le_rfl) (sup_le le_rfl ?_)
    refine fun p hp =>
      polynomial_mem_ideal_of_coeff_mem_ideal P p fun n => Quotient.eq_zero_iff_mem.mp ?_
    simpa only [f, coeff_map, coe_mapRingHom] using (Polynomial.ext_iff.mp hp) n
  refine RingHom.IsIntegral.tower_bot
    (T := (R ⧸ comap C P)[X] ⧸ _) _ _ (injective_quotient_le_comap_map P) ?_
  rw [← quotient_mk_maps_eq]
  refine ((Ideal.Quotient.mk P').isIntegral_of_surjective Quotient.mk_surjective).trans _ _ ?_
  have : IsMaximal (Ideal.map (mapRingHom (Ideal.Quotient.mk (comap C P))) P) :=
    Or.recOn (map_eq_top_or_isMaximal_of_surjective f hf hP)
      (fun h => absurd (_root_.trans (h ▸ hPJ : P = comap f ⊤) comap_top : P = ⊤) hP.ne_top) id
  apply quotient_mk_comp_C_isIntegral_of_jacobson' _ ?_ (fun x hx => ?_)
  any_goals exact isJacobsonRing_quotient
  obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective x
  rwa [Quotient.eq_zero_iff_mem, mem_comap, hPJ, mem_comap, coe_mapRingHom, map_C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9dbe84d417b0086e6bfc7f205cefac230f5406b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
