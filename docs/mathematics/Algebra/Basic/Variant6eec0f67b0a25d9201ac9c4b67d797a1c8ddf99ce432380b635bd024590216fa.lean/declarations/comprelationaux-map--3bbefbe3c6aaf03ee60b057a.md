# compRelationAux_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:622c9cd0-86bc-ad33-e63f-ce585ff19ab9",
  "kind": "lemma",
  "lexical_name": "compRelationAux_map",
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
  "slug": "comprelationaux-map--3bbefbe3c6aaf03ee60b057a",
  "source": {
    "blob": "c1309cf19c9e39d525dc6d17e66d4e379b199bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 386,
    "path": "GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bbefbe3c6aaf03ee60b057ad633b9c7b799c28764b9a836115e2a499f0e2658",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:622c9cd0-86bc-ad33-e63f-ce585ff19ab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma compRelationAux_map (r : σ') :
    (Q.aux P) (Q.compRelationAux P r) = Q.relation r := by
  simp only [aux, compRelationAux, map_finsuppSum]
  simp only [map_mul, aeval_rename, aeval_monomial, Sum.elim_comp_inr]
  conv_rhs => rw [← (Q.relation r).ofCoeff_coeff,
    ← Finsupp.sum_single (AddMonoidAlgebra.coeff <| Q.relation r)]
  rw [AddMonoidAlgebra.ofCoeff_finsuppSum]
  congr
  ext u s m
  simp only [aeval, map_one, one_mul]
  change (eval₂ (algebraMap R (MvPolynomial ι' S)) (C ∘ P.val) (P.σ s) *
      (Finsupp.mapDomain Sum.inl u).prod fun i k ↦ Sum.elim X (C ∘ P.val) i ^ k).coeff m =
        (monomial u s).coeff m
  rw [monomial_eq, IsScalarTower.algebraMap_eq R S, algebraMap_eq, ← eval₂_comp_left, ← aeval_def]
  simp [Finsupp.prod_mapDomain_index_inj (Sum.inl_injective)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1309cf19c9e39d525dc6d17e66d4e379b199bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
