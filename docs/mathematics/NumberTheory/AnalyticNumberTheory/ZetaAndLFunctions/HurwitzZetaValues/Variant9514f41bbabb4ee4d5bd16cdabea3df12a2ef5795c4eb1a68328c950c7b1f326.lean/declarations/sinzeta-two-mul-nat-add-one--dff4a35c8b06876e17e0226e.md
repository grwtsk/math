# sinZeta_two_mul_nat_add_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76500a5b-fbd7-1b6e-e046-444d2da2f0c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e62f7201-66b8-31fb-3afa-1c9e5e0a3ca1",
  "kind": "theorem",
  "lexical_name": "sinZeta_two_mul_nat_add_one'",
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
  "slug": "sinzeta-two-mul-nat-add-one--dff4a35c8b06876e17e0226e",
  "source": {
    "blob": "e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff4a35c8b06876e17e0226e5df35b6659d3a4ec611d11908d41e3dcbdb9ec99",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e62f7201-66b8-31fb-3afa-1c9e5e0a3ca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinZeta_two_mul_nat_add_one' (hk : k ≠ 0) (hx : x ∈ Icc (0 : ℝ) 1) :
    sinZeta x (2 * k + 1) = (-1) ^ (k + 1) / (2 * k + 1) / Gammaℂ (2 * k + 1) *
      ((Polynomial.bernoulli (2 * k + 1)).map (algebraMap ℚ ℂ)).eval (x : ℂ) := by
  rw [sinZeta_two_mul_nat_add_one hk hx]
  congr 1
  have : (2 * k + 1)! = (2 * k + 1) * Complex.Gamma (2 * k + 1) := by
    rw [(by simp : Complex.Gamma (2 * k + 1) = Complex.Gamma (↑(2 * k) + 1)),
       Complex.Gamma_nat_eq_factorial, ← Nat.cast_ofNat (R := ℂ), ← Nat.cast_mul,
      ← Nat.cast_add_one, ← Nat.cast_mul, ← Nat.factorial_succ]
  simp_rw [this, Gammaℂ, cpow_neg, ← div_div, div_inv_eq_mul, div_mul_eq_mul_div, div_div]
  rw [(by simp : 2 * (k : ℂ) + 1 = ↑(2 * k + 1)), cpow_natCast]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
