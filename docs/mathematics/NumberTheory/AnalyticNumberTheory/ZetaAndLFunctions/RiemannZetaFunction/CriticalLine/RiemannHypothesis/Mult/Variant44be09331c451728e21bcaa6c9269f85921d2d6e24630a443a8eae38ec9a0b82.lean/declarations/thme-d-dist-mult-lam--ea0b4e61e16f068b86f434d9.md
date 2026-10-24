# thmE_D_dist_mult_lam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c76052f9810171e7781c852c9137792e5eae2faa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44be09331c451728e21bcaa6c9269f85921d2d6e24630a443a8eae38ec9a0b82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33b8bb06-4331-67ff-0d7c-7c9ed4c73edc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4dd2238a-185e-b2d8-bf5e-945fc8d8a0c3",
  "kind": "theorem",
  "lexical_name": "thmE_D_dist_mult_lam",
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
  "slug": "thme-d-dist-mult-lam--ea0b4e61e16f068b86f434d9",
  "source": {
    "blob": "c76052f9810171e7781c852c9137792e5eae2faa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 418,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant44be09331c451728e21bcaa6c9269f85921d2d6e24630a443a8eae38ec9a0b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea0b4e61e16f068b86f434d9771ac42b442e74ac1713d088612a1c4455b0fecb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant44be09331c451728e21bcaa6c9269f85921d2d6e24630a443a8eae38ec9a0b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dd2238a-185e-b2d8-bf5e-945fc8d8a0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_D_dist_mult_lam (hq : 1 < q) (hprim : χ.IsPrimitive) {lam : ℝ} (h0 : 0 < lam)
    (h1 : lam < 1) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (GD lam - ε) * (NcountL χ T (2 * T) : ℝ) ≤ NdistL χ T (2 * T) := by
  have hP := paramsOf_valid taperProfile_stdProfile h0 h1.le
  simpa [paramsOf] using (thmDChi_mult_lam_abstract (LZeros (LSeam_of hq hprim)) (parity χ) (by omega)
    (coeff χ) (coeffUnimodular_of_primitive hq hprim) (paperInputsChi_L hq hprim)
    (paramsOf stdProfile lam) hP h1).2

/-- **0.6725… of the zeros of L(s,χ) are SIMPLE AND ON THE CRITICAL LINE, UNCONDITIONAL** (every
primitive χ mod q > 1; multiplicity-aware Theorem D: HD 1 = 2 − 1/c₁* = 3/2 − cot(1/√2)/√2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant44be09331c451728e21bcaa6c9269f85921d2d6e24630a443a8eae38ec9a0b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant44be09331c451728e21bcaa6c9269f85921d2d6e24630a443a8eae38ec9a0b82.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c76052f9810171e7781c852c9137792e5eae2faa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
