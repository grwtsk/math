# ιSummand_comp_d_comp_πSummand_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc2b0656-ace3-f3c8-6410-d1bdd7a27b0c",
  "kind": "theorem",
  "lexical_name": "ιSummand_comp_d_comp_πSummand_eq_zero",
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
  "slug": "summand-comp-d-comp-summand-eq-zero--2c6e31079881285db76a5442",
  "source": {
    "blob": "6ab1fe0382dc81635f80d72d986a98f7bfc0df99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c6e31079881285db76a544265d625aa1f022a3b7fad23ae2519da8a8e2ca5bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc2b0656-ace3-f3c8-6410-d1bdd7a27b0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ιSummand_comp_d_comp_πSummand_eq_zero (j k : ℕ) (A : IndexSet (op [j])) (hA : ¬A.EqId) :
    s.ιSummand A ≫ K[X].d j k ≫ s.πSummand (IndexSet.id (op [k])) = 0 := by
  rw [A.eqId_iff_mono] at hA
  rw [← assoc, ← s.comp_PInfty_eq_zero_iff, assoc, ← PInfty.comm j k, s.ιSummand_eq, assoc,
    degeneracy_comp_PInfty_assoc X j A.e hA, zero_comp, comp_zero]
#align simplicial_object.splitting.ι_summand_comp_d_comp_π_summand_eq_zero SimplicialObject.Splitting.ιSummand_comp_d_comp_πSummand_eq_zero

/-- If `s` is a splitting of a simplicial object `X` in a preadditive category,
`s.nondeg_complex` is a chain complex which is given in degree `n` by
the nondegenerate `n`-simplices of `X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab1fe0382dc81635f80d72d986a98f7bfc0df99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
