# reflection_mul_reflection_zpow_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad5d6f2c333f1b45c06678df2933e39b188e4056",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d6a9e77-637c-644f-aa1e-e30dc32d28e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63141109-fbff-bace-3390-ef727e6376e7",
  "kind": "lemma",
  "lexical_name": "reflection_mul_reflection_zpow_apply",
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
  "slug": "reflection-mul-reflection-zpow-apply--a15cc4cc0a4a1edabe1bff14",
  "source": {
    "blob": "ad5d6f2c333f1b45c06678df2933e39b188e4056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 240,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a15cc4cc0a4a1edabe1bff1478acd4fe8724f1485081d5d11fe0c926f8b9c20b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63141109-fbff-bace-3390-ef727e6376e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflection_mul_reflection_zpow_apply (m : ℤ) (z : M)
    (t : R := f y * g x - 2) (ht : t = f y * g x - 2 := by rfl) :
    ((reflection hf * reflection hg) ^ m) z =
      z +
        ((S R ((m - 2) / 2)).eval t * ((S R ((m - 1) / 2)).eval t + (S R ((m - 3) / 2)).eval t)) •
          ((g x * f z - g z) • y - f z • x) +
        ((S R ((m - 1) / 2)).eval t * ((S R (m / 2)).eval t + (S R ((m - 2) / 2)).eval t)) •
          ((f y * g z - f z) • x - g z • y) := by
  induction m using Int.negInduction with
  | nat m => exact_mod_cast reflection_mul_reflection_pow_apply hf hg m z t ht
  | neg _ m =>
    have ht' : t = g x * f y - 2 := by rwa [mul_comm (g x)]
    rw [zpow_neg, ← inv_zpow, mul_inv_rev, reflection_inv, reflection_inv, zpow_natCast,
      reflection_mul_reflection_pow_apply hg hf m z t ht', add_right_comm z]
    have aux (a b : ℤ) (hab : a + b = -3 := by omega) : a / 2 = -(b / 2) - 2 := by omega
    rw [aux (-m - 3) m, aux (-m - 2) (m - 1), aux (-m - 1) (m - 2), aux (-m) (m - 3)]
    simp only [S_neg_sub_two, Polynomial.eval_neg]
    ring_nf

/-- A formula for $(r_1 r_2)^m$, where $m$ is an integer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5d6f2c333f1b45c06678df2933e39b188e4056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
