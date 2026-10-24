# norm_eq_prod_embeddings_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54ab3bbf-61a2-bfae-d5e8-e4c8ee00507e",
  "kind": "theorem",
  "lexical_name": "norm_eq_prod_embeddings_gen",
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
  "slug": "norm-eq-prod-embeddings-gen--3a35b58ab7d2fd4deaec854e",
  "source": {
    "blob": "08f80e2ac0915662f4461e2b1a6395ceda0c4778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 261,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a35b58ab7d2fd4deaec854e54a901eb06427fbf5eed670117f0c37f00911ac7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54ab3bbf-61a2-bfae-d5e8-e4c8ee00507e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_prod_embeddings_gen [Algebra R F] (pb : PowerBasis R S)
    (hE : (minpoly R pb.gen).Splits (algebraMap R F)) (hfx : (minpoly R pb.gen).Separable) :
    algebraMap R F (norm R pb.gen) =
      (@Finset.univ _ (PowerBasis.AlgHom.fintype pb)).prod fun σ => σ pb.gen := by
  letI := Classical.decEq F
  rw [PowerBasis.norm_gen_eq_prod_roots pb hE]
  rw [@Fintype.prod_equiv (S →ₐ[R] F) _ _ (PowerBasis.AlgHom.fintype pb) _ _ pb.liftEquiv'
    (fun σ => σ pb.gen) (fun x => x) ?_]
  rw [Finset.prod_mem_multiset, Finset.prod_eq_multiset_prod, Multiset.toFinset_val,
    Multiset.dedup_eq_self.mpr, Multiset.map_id]
  · exact nodup_roots hfx.map
  · intro x; rfl
  · intro σ; simp only [PowerBasis.liftEquiv'_apply_coe]
#align algebra.norm_eq_prod_embeddings_gen Algebra.norm_eq_prod_embeddings_gen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f80e2ac0915662f4461e2b1a6395ceda0c4778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
