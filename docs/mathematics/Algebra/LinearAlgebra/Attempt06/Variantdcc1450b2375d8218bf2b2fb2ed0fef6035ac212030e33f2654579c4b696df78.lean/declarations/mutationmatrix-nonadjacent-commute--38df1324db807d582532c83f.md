# mutationMatrix_nonadjacent_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9754dc93-7758-71a0-7342-90d501e00aa2",
  "kind": "theorem",
  "lexical_name": "mutationMatrix_nonadjacent_commute",
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
  "slug": "mutationmatrix-nonadjacent-commute--38df1324db807d582532c83f",
  "source": {
    "blob": "a309560e30f56d3a1bd774414cbe7c32d14c53a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt06/Variantdcc1450b2375d8218bf2b2fb2ed0fef6035ac212030e33f2654579c4b696df78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38df1324db807d582532c83fdd79797b2d7e59051177d86156bec0f927da2970",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt06/Variantdcc1450b2375d8218bf2b2fb2ed0fef6035ac212030e33f2654579c4b696df78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9754dc93-7758-71a0-7342-90d501e00aa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutationMatrix_nonadjacent_commute {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i j : Fin n) (hij : A i j = 0) (hji : A j i = 0) :
    mutationMatrix A i * mutationMatrix A j = mutationMatrix A j * mutationMatrix A i := by
  by_cases hne : i = j
  · subst j
    rfl
  have hcij : cartanMatrix A i j = 0 := by
    simp [cartanMatrix, Matrix.ofNat_apply, hne, hij]
  have hcji : cartanMatrix A j i = 0 := by
    simp [cartanMatrix, Matrix.ofNat_apply, Ne.symm hne, hji]
  have hcross : (single i i (1 : ℤ) * cartanMatrix A) *
      (single j j 1 * cartanMatrix A) = 0 := by
    rw [← Matrix.mul_assoc, single_mul_mul_single]
    simp [hcij]
  have hcross' : (single j j (1 : ℤ) * cartanMatrix A) *
      (single i i 1 * cartanMatrix A) = 0 := by
    rw [← Matrix.mul_assoc, single_mul_mul_single]
    simp [hcji]
  rw [mutationMatrix_cartan A hzero i, mutationMatrix_cartan A hzero j]
  simp only [sub_mul, mul_sub, one_mul, mul_one, hcross, hcross']
  abel

/-- A loop-free Cartan row has diagonal two; its rank-one operator satisfies X²=2X. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt06/Variantdcc1450b2375d8218bf2b2fb2ed0fef6035ac212030e33f2654579c4b696df78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt06/Variantdcc1450b2375d8218bf2b2fb2ed0fef6035ac212030e33f2654579c4b696df78.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a309560e30f56d3a1bd774414cbe7c32d14c53a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
