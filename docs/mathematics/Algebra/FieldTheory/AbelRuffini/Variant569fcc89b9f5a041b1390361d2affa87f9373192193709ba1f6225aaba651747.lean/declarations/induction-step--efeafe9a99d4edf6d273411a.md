# induction_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb5d01369bba318d3f35378b8b4339a53b6bb7f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f47be570-3e4c-b85c-0edc-6facfe7570ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff85026c-24f0-6e32-84eb-0b3c905786a1",
  "kind": "theorem",
  "lexical_name": "induction_step",
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
  "slug": "induction-step--efeafe9a99d4edf6d273411a",
  "source": {
    "blob": "eb5d01369bba318d3f35378b8b4339a53b6bb7f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 276,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efeafe9a99d4edf6d273411a60801cfb1e3b6c0120b7670720e3dedc6fbde96a",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variant569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff85026c-24f0-6e32-84eb-0b3c905786a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem induction_step {x y z : E}
    (hx : x ∈ solvableByRad F E) (hy : y ∈ solvableByRad F E) (hz : z ∈ solvableByRad F E)
    (hx' : Group.IsSolvable (minpoly F x).Gal) (hy' : Group.IsSolvable (minpoly F y).Gal)
    (hz' : z ∈ F⟮x, y⟯) : Group.IsSolvable (minpoly F z).Gal := by
  let p := minpoly F x
  let q := minpoly F y
  have hpq := SplittingField.splits (p * q)
  rw [Polynomial.map_mul,
    splits_mul (map_ne_zero (minpoly.ne_zero (isIntegral_of_mem_solvableByRad hx)))
      (map_ne_zero (minpoly.ne_zero (isIntegral_of_mem_solvableByRad hy)))] at hpq
  have f : ↥F⟮x, y⟯ →ₐ[F] (p * q).SplittingField :=
    Classical.choice <| nonempty_algHom_adjoin_of_splits <| by
      rintro a (rfl | rfl)
      · exact ⟨isIntegral_of_mem_solvableByRad hx, hpq.1⟩
      · exact ⟨isIntegral_of_mem_solvableByRad hy, hpq.2⟩
  have key : minpoly F z = minpoly F (f ⟨z, hz'⟩) := by
    refine minpoly.eq_of_irreducible_of_monic
      (minpoly.irreducible (isIntegral_of_mem_solvableByRad hz)) ?_
      (minpoly.monic (isIntegral_of_mem_solvableByRad hz))
    rw [aeval_algHom_apply, map_eq_zero]
    apply (algebraMap (↥F⟮x, y⟯) E).injective
    simp [← aeval_algebraMap_apply]
  rw [key]
  refine gal_isSolvable_of_splits ⟨Normal.splits ?_ (f ⟨z, hz'⟩)⟩ (gal_mul_isSolvable hx' hy')
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variant569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb5d01369bba318d3f35378b8b4339a53b6bb7f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
