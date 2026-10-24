# zpow_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f20e44f3d74d1364fd070b39a2bb969ae8c9a46f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:717cfdc2-c572-2e7e-5614-010403ec3209",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdb6f5d3-521b-2214-73b1-a0b5fe012638",
  "kind": "theorem",
  "lexical_name": "zpow_add_one",
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
  "slug": "zpow-add-one--e2ff1df35f2b486055c43270",
  "source": {
    "blob": "f20e44f3d74d1364fd070b39a2bb969ae8c9a46f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2ff1df35f2b486055c4327035d881b592017af1628a09f2cf1aacd0707371dc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdb6f5d3-521b-2214-73b1-a0b5fe012638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zpow_add_one {A : M} (h : IsUnit A.det) : ∀ n : ℤ, A ^ (n + 1) = A ^ n * A
  | (n : ℕ) => by simp only [← Nat.cast_succ, pow_succ', zpow_ofNat]
  | -[n+1] =>
    calc
      A ^ (-(n + 1) + 1 : ℤ) = (A ^ n)⁻¹ := by
        rw [neg_add, neg_add_cancel_right, zpow_neg h, zpow_ofNat]
      _ = (A * A ^ n)⁻¹ * A := by
        rw [mul_inv_rev, Matrix.mul_assoc, nonsing_inv_mul _ h, Matrix.mul_one]
      _ = A ^ (-(n + 1 : ℤ)) * A := by
        rw [zpow_neg h, ← Int.ofNat_succ, zpow_ofNat, pow_succ]
#align matrix.zpow_add_one Matrix.zpow_add_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f20e44f3d74d1364fd070b39a2bb969ae8c9a46f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
