# LinearIsometry.im_apply_eq_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45a5fe1729403eb38040e5aa4e9073f64e7d158a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b6a25ce-c348-7eeb-0b5f-d6ca752aaa4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:550416cd-6f6b-6fd2-6222-3323061af320",
  "kind": "theorem",
  "lexical_name": "LinearIsometry.im_apply_eq_im",
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
  "slug": "linearisometry-im-apply-eq-im--6edfa5141cc5b2e0c72b2bcc",
  "source": {
    "blob": "45a5fe1729403eb38040e5aa4e9073f64e7d158a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6edfa5141cc5b2e0c72b2bcc27c9fef73fd71a9f33f572bd86789eb59d78ea06",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:550416cd-6f6b-6fd2-6222-3323061af320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIsometry.im_apply_eq_im {f : ℂ →ₗᵢ[ℝ] ℂ} (h : f 1 = 1) (z : ℂ) :
    z + conj z = f z + conj (f z) := by
  have : ‖f z - 1‖ = ‖z - 1‖ := by rw [← f.norm_map (z - 1), f.map_sub, h]
  apply_fun fun x => x ^ 2 at this
  simp only [← normSq_eq_norm_sq] at this
  rw [← ofReal_inj, ← mul_conj, ← mul_conj] at this
  rw [RingHom.map_sub, RingHom.map_sub] at this
  simp only [sub_mul, mul_sub, one_mul, mul_one] at this
  rw [mul_conj, normSq_eq_norm_sq, LinearIsometry.norm_map] at this
  rw [mul_conj, normSq_eq_norm_sq] at this
  simp only [sub_sub, sub_right_inj, mul_one, ofReal_pow, RingHom.map_one] at this
  simp only [add_sub, sub_left_inj] at this
  rw [add_comm, ← this, add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a5fe1729403eb38040e5aa4e9073f64e7d158a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
