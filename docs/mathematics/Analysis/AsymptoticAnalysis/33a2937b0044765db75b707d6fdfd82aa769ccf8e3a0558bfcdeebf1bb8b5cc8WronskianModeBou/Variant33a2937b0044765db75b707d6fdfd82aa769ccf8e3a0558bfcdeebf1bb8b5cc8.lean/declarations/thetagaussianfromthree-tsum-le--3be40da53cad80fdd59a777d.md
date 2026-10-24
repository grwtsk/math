# thetaGaussianFromThree_tsum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6518146da7558fdc703d86bc420a77dc1e03d0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fc4eb15-c2be-9170-4586-add7c2b6d318",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f74d167-dcd4-3912-8f5d-cfe42621b108",
  "kind": "theorem",
  "lexical_name": "thetaGaussianFromThree_tsum_le",
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
  "slug": "thetagaussianfromthree-tsum-le--3be40da53cad80fdd59a777d",
  "source": {
    "blob": "c6518146da7558fdc703d86bc420a77dc1e03d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3be40da53cad80fdd59a777de503054cd4ee5036e8acd9d2f9e3cb8c4c8dddba",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f74d167-dcd4-3912-8f5d-cfe42621b108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianFromThree_tsum_le {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 12) :
    (∑' m : ℕ, ((m : ℝ) + 3) ^ p * Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) ≤
      2 * 3 ^ p * Real.exp (-8 * A) := by
  have h := (thetaGaussianFromThree_summable hA p hp).tsum_le_tsum
    (gaussianFromThree_geometric hA p hp)
    ((summable_geometric_of_norm_lt_one
      (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left (gaussianFromThree A p 0))
  rw [tsum_mul_left, tsum_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)] at h
  change (∑' m, gaussianFromThree A p m) ≤ _
  apply h.trans_eq
  simp only [gaussianFromThree, Nat.cast_zero, zero_add]
  norm_num
  ring

/-- A uniform rational upper bound for the exponential remainder factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6518146da7558fdc703d86bc420a77dc1e03d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
