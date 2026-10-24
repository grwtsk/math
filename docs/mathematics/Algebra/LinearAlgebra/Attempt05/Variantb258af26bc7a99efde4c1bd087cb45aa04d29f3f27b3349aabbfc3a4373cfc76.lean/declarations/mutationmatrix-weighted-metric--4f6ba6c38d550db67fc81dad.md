# mutationMatrix_weighted_metric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7840c52-02cc-63df-212c-46ccaae68c3f",
  "kind": "theorem",
  "lexical_name": "mutationMatrix_weighted_metric",
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
  "slug": "mutationmatrix-weighted-metric--4f6ba6c38d550db67fc81dad",
  "source": {
    "blob": "1ea33e4270453795191ee6cda73f1ab35a23a527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f6ba6c38d550db67fc81dadbdbefd9cad4e4726fc478e442e43cd192fc7df8f",
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

Occurrence: `result:d7840c52-02cc-63df-212c-46ccaae68c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutationMatrix_weighted_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (d : Fin n → ℤ)
    (hbalance : ∀ i j, d i * A i j = d j * A j i) (i : Fin n) :
    (mutationMatrix A i)ᵀ * (diagonal d * cartanMatrix A) * mutationMatrix A i =
      diagonal d * cartanMatrix A := by
  ext j k
  rw [mutation_form_entry A _ hzero i j k]
  have hcol : (diagonal d * cartanMatrix A) j i = d i * cartanMatrix A i j := by
    have hsym := congrArg (fun M => M i j) (weightedCartan_symmetric A d hbalance)
    simpa only [transpose_apply, diagonal_mul] using hsym
  rw [hcol]
  simp only [diagonal_mul]
  have hii : cartanMatrix A i i = 2 := by
    simp [cartanMatrix, hzero, Matrix.ofNat_apply]
  rw [hii]
  ring

/-- Symmetric loop-free integer adjacency preserves its Cartan form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea33e4270453795191ee6cda73f1ab35a23a527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
