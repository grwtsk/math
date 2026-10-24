# prod_embeddings_eq_finrank_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10a05df9e7abbcfb0d93d0ace2094e29bad80232",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53665fd9-e90d-574f-7b20-418e9e0a60e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e402174-eee2-7869-8ec4-f01aab179506",
  "kind": "theorem",
  "lexical_name": "prod_embeddings_eq_finrank_pow",
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
  "slug": "prod-embeddings-eq-finrank-pow--a8a45c33c92afad4ce621819",
  "source": {
    "blob": "10a05df9e7abbcfb0d93d0ace2094e29bad80232",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 192,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8a45c33c92afad4ce621819eb0bba8925fc4553c542ba6152a333db2a027859",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e402174-eee2-7869-8ec4-f01aab179506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_embeddings_eq_finrank_pow [Algebra L F] [IsScalarTower K L F] [IsAlgClosed E]
    [Algebra.IsSeparable K F] [FiniteDimensional K F] (pb : PowerBasis K L) :
    ∏ σ : F →ₐ[K] E, σ (algebraMap L F pb.gen) =
      ((@Finset.univ _ (PowerBasis.AlgHom.fintype pb)).prod
        fun σ : L →ₐ[K] E => σ pb.gen) ^ finrank L F := by
  have : FiniteDimensional L F := FiniteDimensional.right K L F
  have : Algebra.IsSeparable L F := Algebra.isSeparable_tower_top_of_isSeparable K L F
  let : Fintype (L →ₐ[K] E) := PowerBasis.AlgHom.fintype pb
  rw [Fintype.prod_equiv algHomEquivSigma (fun σ : F →ₐ[K] E => _) fun σ => σ.1 pb.gen,
    ← Finset.univ_sigma_univ, Finset.prod_sigma, ← Finset.prod_pow]
  · refine Finset.prod_congr rfl fun σ _ => ?_
    let : Algebra L E := σ.toRingHom.toAlgebra
    simp_rw [Finset.prod_const]
    congr
    exact AlgHom.card L F E
  · intro σ
    simp only [algHomEquivSigma, Equiv.coe_fn_mk, AlgHom.domRestrict, AlgHom.comp_apply,
      IsScalarTower.coe_toAlgHom']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10a05df9e7abbcfb0d93d0ace2094e29bad80232` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
