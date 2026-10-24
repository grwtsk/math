# adic_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4849abbe384fea0074a2b23f052622181c5a52a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f641e694-5f44-c96b-9eab-5d2733028f26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bcf9cd8-3e02-abd1-b288-c84167e7f196",
  "kind": "theorem",
  "lexical_name": "adic_basis",
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
  "slug": "adic-basis--59ae786bc6f09116aab32261",
  "source": {
    "blob": "b4849abbe384fea0074a2b23f052622181c5a52a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59ae786bc6f09116aab322610a9671a196251477f3f919bc258a3383a069d29e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bcf9cd8-3e02-abd1-b288-c84167e7f196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adic_basis (I : Ideal R) : SubmodulesRingBasis fun n : ℕ => (I ^ n • ⊤ : Ideal R) :=
  { inter := by
      suffices ∀ i j : ℕ, ∃ k, I ^ k ≤ I ^ i ∧ I ^ k ≤ I ^ j by
        simpa only [smul_eq_mul, mul_top, Algebra.algebraMap_self, map_id, le_inf_iff] using! this
      intro i j
      exact ⟨max i j, pow_le_pow_right (le_max_left i j), pow_le_pow_right (le_max_right i j)⟩
    leftMul := by
      suffices ∀ (a : R) (i : ℕ), ∃ j : ℕ, a • I ^ j ≤ I ^ i by
        simpa only [smul_top_eq_map, Algebra.algebraMap_self, map_id] using! this
      intro r n
      use n
      rintro a ⟨x, hx, rfl⟩
      exact (I ^ n).smul_mem r hx
    mul := by
      suffices ∀ i : ℕ, ∃ j : ℕ, (↑(I ^ j) * ↑(I ^ j) : Set R) ⊆ (↑(I ^ i) : Set R) by
        simpa only [smul_top_eq_map, Algebra.algebraMap_self, map_id] using! this
      intro n
      use n
      rintro a ⟨x, _hx, b, hb, rfl⟩
      exact (I ^ n).smul_mem x hb }

/-- The adic ring filter basis associated to an ideal `I` is made of powers of `I`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4849abbe384fea0074a2b23f052622181c5a52a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
