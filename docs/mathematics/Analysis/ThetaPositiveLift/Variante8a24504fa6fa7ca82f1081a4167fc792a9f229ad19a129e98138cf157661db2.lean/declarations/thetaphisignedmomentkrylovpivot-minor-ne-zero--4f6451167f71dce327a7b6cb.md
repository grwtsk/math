# thetaPhiSignedMomentKrylovPivot_minor_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70fa868eeeeca69d6ff9079aead2bab2c3ea6eb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:463f3080-376d-9e0a-e448-eed9dfa2a398",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10eae456-ff36-fe3f-aaee-5c5130f3e284",
  "kind": "theorem",
  "lexical_name": "thetaPhiSignedMomentKrylovPivot_minor_ne_zero",
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
  "slug": "thetaphisignedmomentkrylovpivot-minor-ne-zero--4f6451167f71dce327a7b6cb",
  "source": {
    "blob": "70fa868eeeeca69d6ff9079aead2bab2c3ea6eb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 95,
    "path": "GRWTSK/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f6451167f71dce327a7b6cb35507c472d5d5c05c28b98dabf1f4a54208d2816",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10eae456-ff36-fe3f-aaee-5c5130f3e284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiSignedMomentKrylovPivot_minor_ne_zero
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    columnMinor
        (thetaPhiSignedMomentKrylovFrame k L N t)
        (Fin.castLE hk) ≠ 0 := by
  unfold columnMinor
  rw [thetaPhiSignedMomentKrylovPivot_submatrix_eq hk t,
    Matrix.det_mul, Matrix.det_transpose,
    Matrix.det_diagonal]
  apply mul_ne_zero
  · apply Matrix.det_vandermonde_ne_zero_iff.mpr
    intro i j hij
    apply Fin.ext
    exact thetaPhiSignedMomentNode_injective hij
  · apply Finset.prod_ne_zero_iff.mpr
    intro j hj
    exact Real.sqrt_ne_zero'.mpr
      (thetaPhiBaseChristoffelMagnitude_pos
        hN t j.val)

/-- The positive theta Krylov frame has full row rank on every nondegenerate
finite cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70fa868eeeeca69d6ff9079aead2bab2c3ea6eb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
