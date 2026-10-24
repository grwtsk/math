# sum_inv_affine_sq_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4f08f43-4484-baf4-68d3-fd89dd5ef020",
  "kind": "lemma",
  "lexical_name": "sum_inv_affine_sq_le'",
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
  "slug": "sum-inv-affine-sq-le--66071d2e83cc9c336208d5b3",
  "source": {
    "blob": "29fed6bbfed3694a1d9055ee5f406e372bbc4b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 180,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66071d2e83cc9c336208d5b315fe44ea21530de8a0cb6ee5fa2b6089baffda1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4f08f43-4484-baf4-68d3-fd89dd5ef020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_inv_affine_sq_le' {h : ℝ} (hh : 0 < h) (R : ℕ) :
    ∑ m ∈ range R, 1 / ((m:ℝ) * h + 1) ^ 2 ≤ 1 + 1 / h := by
  cases R with
  | zero => simp; positivity
  | succ R =>
    rw [Finset.sum_range_succ']
    simp only [Nat.cast_add, Nat.cast_one, Nat.cast_zero, zero_mul, zero_add, one_pow, div_one]
    linarith [sum_inv_affine_sq_le hh R]

/-- pointwise: 1/max(1, x²) ≤ 4/(|x|+1)². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fed6bbfed3694a1d9055ee5f406e372bbc4b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
