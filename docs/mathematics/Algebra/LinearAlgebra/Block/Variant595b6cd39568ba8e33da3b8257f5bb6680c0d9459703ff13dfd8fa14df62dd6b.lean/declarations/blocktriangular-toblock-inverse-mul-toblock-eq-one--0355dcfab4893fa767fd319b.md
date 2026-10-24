# BlockTriangular.toBlock_inverse_mul_toBlock_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5c7ae9a-0ce2-912e-9646-6b7d192d922d",
  "kind": "theorem",
  "lexical_name": "BlockTriangular.toBlock_inverse_mul_toBlock_eq_one",
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
  "slug": "blocktriangular-toblock-inverse-mul-toblock-eq-one--0355dcfab4893fa767fd319b",
  "source": {
    "blob": "97a724930e365f533c97d633991cfcaea93f85d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 319,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0355dcfab4893fa767fd319b7dada57d9e393338af3f16760ec42dfcf97a252c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5c7ae9a-0ce2-912e-9646-6b7d192d922d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BlockTriangular.toBlock_inverse_mul_toBlock_eq_one [LinearOrder α] [Invertible M]
    (hM : BlockTriangular M b) (k : α) :
    ((M⁻¹.toBlock (fun i => b i < k) fun i => b i < k) *
        M.toBlock (fun i => b i < k) fun i => b i < k) =
      1 := by
  let p i := b i < k
  have h_sum :
    M⁻¹.toBlock p p * M.toBlock p p +
        (M⁻¹.toBlock p fun i => ¬p i) * M.toBlock (fun i => ¬p i) p =
      1 := by
    rw [← toBlock_mul_eq_add, inv_mul_of_invertible M, toBlock_one_self]
  have h_zero : M.toBlock (fun i => ¬p i) p = 0 := by
    ext i j
    simpa using hM (lt_of_lt_of_le j.2 (le_of_not_lt i.2))
  simpa [h_zero] using h_sum

/-- The inverse of an upper-left subblock of a block-triangular matrix `M` is the upper-left
subblock of `M⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97a724930e365f533c97d633991cfcaea93f85d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
