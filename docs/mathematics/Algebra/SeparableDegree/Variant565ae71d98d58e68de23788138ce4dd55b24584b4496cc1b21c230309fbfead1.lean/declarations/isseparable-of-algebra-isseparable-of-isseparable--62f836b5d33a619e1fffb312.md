# IsSeparable.of_algebra_isSeparable_of_isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fb7452b-ae54-c0af-1072-495c0217c280",
  "kind": "theorem",
  "lexical_name": "IsSeparable.of_algebra_isSeparable_of_isSeparable",
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
  "slug": "isseparable-of-algebra-isseparable-of-isseparable--62f836b5d33a619e1fffb312",
  "source": {
    "blob": "a7daa8503eeedcf4200b20ca5388abfd77f3d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 813,
    "path": "GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62f836b5d33a619e1fffb31201d8467018581b475f2a5c7a2f9ab27b0dfa8a6c",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fb7452b-ae54-c0af-1072-495c0217c280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeparable.of_algebra_isSeparable_of_isSeparable [Algebra E K] [IsScalarTower F E K]
    [Algebra.IsSeparable F E] {x : K} (hsep : IsSeparable E x) : IsSeparable F x := by
  set f := minpoly E x with hf
  let E' : IntermediateField F E := adjoin F f.coeffs
  have : FiniteDimensional F E' :=
    finiteDimensional_adjoin fun x _ ↦ Algebra.IsSeparable.isIntegral F x
  let g : E'[X] := f.toSubring E'.toSubring (subset_adjoin F _)
  have h : g.map (algebraMap E' E) = f := f.map_toSubring E'.toSubring (subset_adjoin F _)
  clear_value g
  have hx : x ∈ E'⟮x⟯.restrictScalars F := mem_adjoin_simple_self _ x
  have hzero : aeval x g = 0 := by
    simpa only [← hf, ← h, aeval_map_algebraMap] using minpoly.aeval E x
  have halg : IsIntegral E' x :=
    isIntegral_trans (R := F) (A := E) _ (IsSeparable.isIntegral hsep) |>.tower_top
  simp only [IsSeparable, ← hf, ← h, separable_map] at hsep
  replace hsep := hsep.of_dvd <| minpoly.dvd E' x hzero
  have : Algebra.IsSeparable F E' := Algebra.isSeparable_tower_bot_of_isSeparable F E' E
  have := (isSeparable_adjoin_simple_iff_isSeparable _ _).2 hsep
  have := adjoin.finiteDimensional halg
  have : FiniteDimensional F E'⟮x⟯ := FiniteDimensional.trans F E' E'⟮x⟯
  have := finSepDegree_mul_finSepDegree_of_isAlgebraic F E' E'⟮x⟯
  rw [finSepDegree_eq_finrank_of_isSeparable F E',
    finSepDegree_eq_finrank_of_isSeparable E' E'⟮x⟯,
    Module.finrank_mul_finrank F E' E'⟮x⟯,
    eq_comm, finSepDegree_eq_finrank_iff F E'⟮x⟯] at this
  change Algebra.IsSeparable F (restrictScalars F E'⟮x⟯) at this
  exact isSeparable_of_mem_isSeparable F K hx

/-- If `E / F` and `K / E` are both separable extensions, then `K / F` is also separable. -/
@[stacks 09HB]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7daa8503eeedcf4200b20ca5388abfd77f3d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
