# thetaPhiRawD2_eq_gaussians

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a37aacc165cd26eff3b8ab34ab3a023b216e1e7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86a1ed1d-3137-1604-bf81-ab80f8f282a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a719f9f-f0b4-7521-942e-abb0f1d8959e",
  "kind": "theorem",
  "lexical_name": "thetaPhiRawD2_eq_gaussians",
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
  "slug": "thetaphirawd2-eq-gaussians--d380507d8a112db2546d54c3",
  "source": {
    "blob": "a37aacc165cd26eff3b8ab34ab3a023b216e1e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d380507d8a112db2546d54c3327a259f0c994692563a0193525b8e5fb3a87e24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a719f9f-f0b4-7521-942e-abb0f1d8959e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiRawD2_eq_gaussians (t : ℝ) :
    thetaPhiRawD2 t =
      (330 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
      (75 * Real.pi) * thetaGaussianSum 2 5 t -
      (224 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
      (32 * Real.pi ^ 4) * thetaGaussianSum 8 17 t := by
  unfold thetaPhiRawD2
  simp_rw [thetaPhiTermSecondDeriv_eq_gaussians]
  rw [((((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi))).sub
      ((thetaGaussianTerm_summable 6 13 t).mul_left (224 * Real.pi ^ 3))).tsum_add
      ((thetaGaussianTerm_summable 8 17 t).mul_left (32 * Real.pi ^ 4)),
    (((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi))).tsum_sub
      ((thetaGaussianTerm_summable 6 13 t).mul_left (224 * Real.pi ^ 3)),
    ((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).tsum_sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi)),
    tsum_mul_left, tsum_mul_left, tsum_mul_left, tsum_mul_left]
  rfl


/-- The third source derivative as a finite combination of Gaussian sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a37aacc165cd26eff3b8ab34ab3a023b216e1e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
