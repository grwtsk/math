# mutationMatrix_adjacent_braid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9af03638-05dc-2665-ef1a-33c6175d0010",
  "kind": "theorem",
  "lexical_name": "mutationMatrix_adjacent_braid",
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
  "slug": "mutationmatrix-adjacent-braid--6d150dfac643c6776d0a33ae",
  "source": {
    "blob": "1ea33e4270453795191ee6cda73f1ab35a23a527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d150dfac643c6776d0a33aea7b9a6ff9f2b95d6ce493dac8950fa74352bdc9a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9af03638-05dc-2665-ef1a-33c6175d0010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutationMatrix_adjacent_braid {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i j : Fin n) (hne : i ≠ j)
    (hij : A i j = 1) (hji : A j i = 1) :
    mutationMatrix A i * mutationMatrix A j * mutationMatrix A i =
      mutationMatrix A j * mutationMatrix A i * mutationMatrix A j := by
  let X := single i i (1 : ℤ) * cartanMatrix A
  let Y := single j j (1 : ℤ) * cartanMatrix A
  have hx : X * X = X + X := cartan_row_square A hzero i
  have hy : Y * Y = Y + Y := cartan_row_square A hzero j
  have hxyx : X * Y * X = X := cartan_row_triple A i j hne hij hji
  have hyxy : Y * X * Y = Y := cartan_row_triple A j i hne.symm hji hij
  rw [mutationMatrix_cartan A hzero i, mutationMatrix_cartan A hzero j]
  change (1-X)*(1-Y)*(1-X) = (1-Y)*(1-X)*(1-Y)
  have heq : (1-X)*(1-Y)*(1-X) =
      1-X-X-Y+X*X+X*Y+Y*X-X*Y*X := by noncomm_ring
  have heq' : (1-Y)*(1-X)*(1-Y) =
      1-Y-Y-X+Y*Y+Y*X+X*Y-Y*X*Y := by noncomm_ring
  rw [heq, heq', hx, hy, hxyx, hyxy]
  abel

end FormalResearch.MutationGame
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea33e4270453795191ee6cda73f1ab35a23a527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
