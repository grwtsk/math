# cpow_mul_div_cpow_eq_div_div_cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "620e6295e4d930b19a562314791e91c4d7e2182b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97d3dbaf-b4ba-649e-2120-42469b3b7ae9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0c182fe-1401-1052-4b37-054942809850",
  "kind": "lemma",
  "lexical_name": "cpow_mul_div_cpow_eq_div_div_cpow",
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
  "slug": "cpow-mul-div-cpow-eq-div-div-cpow--8774d9d3160fe8a179bc885f",
  "source": {
    "blob": "620e6295e4d930b19a562314791e91c4d7e2182b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8774d9d3160fe8a179bc885ffe421be0e9cf5fc2b7bceda73d9c3823396c9ecc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0c182fe-1401-1052-4b37-054942809850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cpow_mul_div_cpow_eq_div_div_cpow (m n : ℕ) (z : ℂ) (x : ℝ) :
    (n + 1) ^ (x : ℂ) * (z / m ^ (x : ℂ)) = z / (m / (n + 1)) ^ (x : ℂ) := by
  have Hn : (0 : ℝ) ≤ (n + 1 : ℝ)⁻¹ := by positivity
  rw [← mul_div_assoc, mul_comm, div_eq_mul_inv z, mul_div_assoc]
  congr
  simp_rw [div_eq_mul_inv]
  rw [show (n + 1 : ℂ)⁻¹ = (n + 1 : ℝ)⁻¹ by simp,
    show (n + 1 : ℂ) = (n + 1 : ℝ) by norm_cast, show (m : ℂ) = (m : ℝ) by norm_cast,
    mul_cpow_ofReal_nonneg m.cast_nonneg Hn, mul_inv, mul_comm]
  congr
  rw [← cpow_neg, show (-x : ℂ) = (-1 : ℝ) * x by simp, cpow_mul_ofReal_nonneg Hn,
    Real.rpow_neg_one, inv_inv]

open Filter Real in
/-- If the coefficients `f m` of an L-series are zero for `m ≤ n` and the L-series converges
at some point, then `f (n+1)` is the limit of `(n+1)^x * LSeries f x` as `x → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `620e6295e4d930b19a562314791e91c4d7e2182b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
