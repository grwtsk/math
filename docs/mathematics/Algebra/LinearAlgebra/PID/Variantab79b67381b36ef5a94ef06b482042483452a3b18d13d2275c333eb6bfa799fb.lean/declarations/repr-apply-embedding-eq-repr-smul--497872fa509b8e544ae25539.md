# repr_apply_embedding_eq_repr_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6a614f0-8981-a316-e0b6-4daa96823445",
  "kind": "lemma",
  "lexical_name": "repr_apply_embedding_eq_repr_smul",
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
  "slug": "repr-apply-embedding-eq-repr-smul--497872fa509b8e544ae25539",
  "source": {
    "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 448,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:497872fa509b8e544ae2553956a8a2da86cc795f216baaac350c5e6ac6dd487b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6a614f0-8981-a316-e0b6-4daa96823445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma repr_apply_embedding_eq_repr_smul {i : Fin n} :
    snf.bM.repr m (snf.f i) = snf.bN.repr (snf.a i • m) i := by
  obtain ⟨m, hm⟩ := m
  obtain ⟨c, rfl⟩ := snf.bN.mem_submodule_iff.mp hm
  replace hm : (⟨Finsupp.sum c fun i t ↦ t • (↑(snf.bN i) : M), hm⟩ : N) =
      Finsupp.sum c fun i t ↦ t • ⟨snf.bN i, (snf.bN i).2⟩ := by
    ext; change _ = N.subtype _; simp [map_finsuppSum]
  classical
  simp_rw [hm, map_smul, map_finsuppSum, map_smul, Subtype.coe_eta, repr_self,
    Finsupp.smul_single, smul_eq_mul, mul_one, Finsupp.sum_single, Finsupp.smul_apply, snf.snf,
    map_smul, repr_self, Finsupp.smul_single, smul_eq_mul, mul_one, Finsupp.sum_apply,
    Finsupp.single_apply, EmbeddingLike.apply_eq_iff_eq, Finsupp.sum_ite_eq',
    Finsupp.mem_support_iff, ite_not, mul_comm, ite_eq_right_iff]
  exact fun a ↦ (mul_eq_zero_of_right _ a).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `393373167928c6a90d2d42a212fc7b66a0e98b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
