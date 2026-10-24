# weierstrass_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cc545e8a4f1f3764f04b77a29811cff41531c36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:699f9531-ecc5-4c95-ea52-3e8d1233151e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7af1dc05-7860-d032-54d1-1c0fe433f31a",
  "kind": "theorem",
  "lexical_name": "weierstrass_slope",
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
  "slug": "weierstrass-slope--6cba949496391a92911c0ebb",
  "source": {
    "blob": "2cc545e8a4f1f3764f04b77a29811cff41531c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cba949496391a92911c0ebbd8cb8dedb01c13d16bcc5f8dd1666a6dc1d2fe0b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7af1dc05-7860-d032-54d1-1c0fe433f31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weierstrass_slope {a : ℝ} (ha : a ∈ Set.Ioo 0 1) {b : ℕ} (hb : Odd b) (hab : 1 < a * b)
    (x : ℝ) (m : ℕ) :
    |seq b x m - x| * ((2 / 3 - π / (a * b - 1)) * (a * b) ^ m) ≤
      |weierstrass a b (seq b x m) - weierstrass a b x| := by
  simp_rw [weierstrass]
  have hsseq := summable_weierstrass ha b (seq b x m)
  have hsx := summable_weierstrass ha b x
  have hsum := hsseq.sub hsx
  rw [← hsseq.tsum_sub hsx]
  simp_rw [← mul_sub] at ⊢ hsum
  rw [← hsum.sum_add_tsum_nat_add m]
  have hsum_shift := (summable_nat_add_iff m).mpr hsum
  rw [add_comm]
  refine le_trans ?_ (abs_sub_abs_le_abs_add _ _)
  rw [sub_mul (2 / 3), mul_sub |seq b x m - x|]
  exact sub_le_sub (weierstrass_remainder ha.1 hb hsum_shift) (weierstrass_partial ha.1 hab x m)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc545e8a4f1f3764f04b77a29811cff41531c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
