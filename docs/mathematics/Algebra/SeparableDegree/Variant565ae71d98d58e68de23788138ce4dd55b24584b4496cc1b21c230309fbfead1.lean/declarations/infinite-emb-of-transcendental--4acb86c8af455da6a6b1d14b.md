# infinite_emb_of_transcendental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb2ddd1d2640caa5ba7197f13c8097a8823fe5aaead0ef30617738d16e2a914f",
  "kind": "instance",
  "lexical_name": "infinite_emb_of_transcendental",
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
  "slug": "infinite-emb-of-transcendental--4acb86c8af455da6a6b1d14b",
  "source": {
    "blob": "a7daa8503eeedcf4200b20ca5388abfd77f3d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 263,
    "path": "GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4acb86c8af455da6a6b1d14b3cb2aac2a290460098339006bea9ede3b5922f23",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb2ddd1d2640caa5ba7197f13c8097a8823fe5aaead0ef30617738d16e2a914f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance infinite_emb_of_transcendental [H : Algebra.Transcendental F E] : Infinite (Emb F E) := by
  obtain ⟨ι, x, hx⟩ := exists_isTranscendenceBasis' F E
  have := hx.isAlgebraic_field
  rw [← (embProdEmbOfIsAlgebraic F (adjoin F (Set.range x)) E).infinite_iff]
  refine @Prod.infinite_of_left _ _ ?_ _
  rw [← (embEquivOfEquiv _ _ _ hx.1.aevalEquivField).infinite_iff]
  obtain ⟨i⟩ := hx.nonempty_iff_transcendental.2 H
  let K := FractionRing (MvPolynomial ι F)
  let i1 := IsScalarTower.toAlgHom F (MvPolynomial ι F) (AlgebraicClosure K)
  have hi1 : Function.Injective i1 := by
    rw [IsScalarTower.coe_toAlgHom', IsScalarTower.algebraMap_eq _ K]
    exact (algebraMap K (AlgebraicClosure K)).injective.comp (IsFractionRing.injective _ _)
  let f (n : ℕ) : Emb F K := IsFractionRing.liftAlgHom
    (g := i1.comp <| MvPolynomial.aeval fun i : ι ↦ MvPolynomial.X i ^ (n + 1)) <| hi1.comp <| by
      simpa [algebraicIndependent_iff_injective_aeval] using
        MvPolynomial.algebraicIndependent_polynomial_aeval_X _
          fun i : ι ↦ (Polynomial.transcendental_X F).pow n.succ_pos
  refine Infinite.of_injective f fun m n h ↦ ?_
  replace h : (MvPolynomial.X i) ^ (m + 1) = (MvPolynomial.X i) ^ (n + 1) := hi1 <| by
    simpa [f, -map_pow] using congr($h (algebraMap _ K (MvPolynomial.X (R := F) i)))
  simpa using congr(MvPolynomial.totalDegree $h)

/-- If the field extension `E / F` is transcendental, then `Field.finSepDegree F E = 0`, which
actually means that `Field.Emb F E` is infinite (see `Field.infinite_emb_of_transcendental`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7daa8503eeedcf4200b20ca5388abfd77f3d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
