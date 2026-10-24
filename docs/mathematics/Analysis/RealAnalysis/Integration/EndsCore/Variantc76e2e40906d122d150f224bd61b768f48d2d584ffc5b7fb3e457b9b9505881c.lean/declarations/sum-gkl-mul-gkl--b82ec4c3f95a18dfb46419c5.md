# sum_gkl_mul_gkl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a6829f4-193e-decb-0167-7832edf171dc",
  "kind": "theorem",
  "lexical_name": "sum_gkl_mul_gkl",
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
  "slug": "sum-gkl-mul-gkl--b82ec4c3f95a18dfb46419c5",
  "source": {
    "blob": "76395d7f7e7303c94775bff76ac7487ba1a94ab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b82ec4c3f95a18dfb46419c54e268684e8b1484d521159b1ed5e76c466e21b0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a6829f4-193e-decb-0167-7832edf171dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_gkl_mul_gkl (q : ℝ × ℝ) :
    ∑ k : Fin p.d, ∑ l : Fin p.d, gkl p F ν k l q.1 * gkl p F ν k l q.2 = trG2integrand p F ν q := by
  unfold trG2integrand Kfun gkl
  rw [sq, Finset.sum_mul_sum, Finset.sum_mul, Finset.sum_mul]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Finset.sum_mul, Finset.sum_mul]
  refine Finset.sum_congr rfl fun l _ => ?_
  ring

/-- The heart of "the interchange being justified by absolute convergence" (§5.3):
`K(τ,τ')² ν(τ)ν(τ')` is integrable on `ℝ²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76395d7f7e7303c94775bff76ac7487ba1a94ab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
