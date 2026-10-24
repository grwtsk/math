# norm_eq_prod_automorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e19f516-5357-fd2c-8125-c5a34aaebff0",
  "kind": "theorem",
  "lexical_name": "norm_eq_prod_automorphisms",
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
  "slug": "norm-eq-prod-automorphisms--98b9f333bc1c84c6139fd157",
  "source": {
    "blob": "0971866de5214fd5f1ed42447cedb46ab9d060b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 236,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b9f333bc1c84c6139fd15713c0963b4d633c9341b8add792bba7474faf0ca0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e19f516-5357-fd2c-8125-c5a34aaebff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_prod_automorphisms [FiniteDimensional K L] [IsGalois K L] (x : L) :
    algebraMap K L (norm K x) = ∏ σ : L ≃ₐ[K] L, σ x := by
  apply FaithfulSMul.algebraMap_injective L (AlgebraicClosure L)
  rw [map_prod (algebraMap L (AlgebraicClosure L))]
  rw [← Fintype.prod_equiv (Normal.algHomEquivAut K (AlgebraicClosure L) L)]
  · rw [← norm_eq_prod_embeddings _ _ x, ← IsScalarTower.algebraMap_apply]
  · intro σ
    simp only [Normal.algHomEquivAut, AlgHom.restrictNormal', Equiv.coe_fn_mk,
      AlgEquiv.coe_ofBijective, AlgHom.restrictNormal_commutes, id.map_eq_id, RingHom.id_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0971866de5214fd5f1ed42447cedb46ab9d060b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
