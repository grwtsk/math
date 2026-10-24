# Commute.mul_geom_sum₂_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c3b36ec-1103-db72-9149-8f416a9ab981",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1932459e-2cde-d1cf-5578-792ffc74782e",
  "kind": "theorem",
  "lexical_name": "Commute.mul_geom_sum₂_Ico",
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
  "slug": "commute-mul-geom-sum-ico--78b61f252096c0f6da4d467d",
  "source": {
    "blob": "fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 268,
    "path": "GRWTSK/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78b61f252096c0f6da4d467d745fa6bd8bb789f63c023bbed0c4946392954bf8",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1932459e-2cde-d1cf-5578-792ffc74782e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Commute.mul_geom_sum₂_Ico [Ring α] {x y : α} (h : Commute x y) {m n : ℕ}
    (hmn : m ≤ n) :
    ((x - y) * ∑ i in Finset.Ico m n, x ^ i * y ^ (n - 1 - i)) = x ^ n - x ^ m * y ^ (n - m) := by
  rw [sum_Ico_eq_sub _ hmn]
  have :
    ∑ k in range m, x ^ k * y ^ (n - 1 - k) =
      ∑ k in range m, x ^ k * (y ^ (n - m) * y ^ (m - 1 - k)) := by
    refine' sum_congr rfl fun j j_in => _
    rw [← pow_add]
    congr
    rw [mem_range, Nat.lt_iff_add_one_le, add_comm] at j_in
    have h' : n - m + (m - (1 + j)) = n - (1 + j) := tsub_add_tsub_cancel hmn j_in
    rw [← tsub_add_eq_tsub_tsub m, h', ← tsub_add_eq_tsub_tsub]
  rw [this]
  simp_rw [pow_mul_comm y (n - m) _]
  simp_rw [← mul_assoc]
  rw [← sum_mul, mul_sub, h.mul_geom_sum₂, ← mul_assoc, h.mul_geom_sum₂, sub_mul, ← pow_add,
    add_tsub_cancel_of_le hmn, sub_sub_sub_cancel_right (x ^ n) (x ^ m * y ^ (n - m)) (y ^ n)]
#align commute.mul_geom_sum₂_Ico Commute.mul_geom_sum₂_Ico

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
