# summable_exp_neg_pi_mul_nat_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6aac66f-7740-95d7-5b68-eb644678647d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:053dd151-afee-065c-ce89-2f8cea6a4853",
  "kind": "theorem",
  "lexical_name": "summable_exp_neg_pi_mul_nat_sq",
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
  "slug": "summable-exp-neg-pi-mul-nat-sq--2109118f0afef387ae18c81e",
  "source": {
    "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2109118f0afef387ae18c81e07e5bfdcf1e8ed444f7c5fa2167344ea027499f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:053dd151-afee-065c-ce89-2f8cea6a4853`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_exp_neg_pi_mul_nat_sq {t : ℝ} (ht : 0 < t) :
    Summable fun n : ℕ => rexp (-π * t * ((n : ℝ) + 1) ^ 2) := by
  have : 0 < (↑t * I).im := by rwa [ofReal_mul_im, I_im, mul_one]
  convert summable_norm_iff.mpr (hasSum_nat_jacobiTheta this).summable using 1
  ext1 n
  rw [Complex.norm_eq_abs, Complex.abs_exp]
  rw [show ↑π * I * ((n : ℂ) + 1) ^ 2 * (↑t * I) = ((π * t * ((n : ℝ) + 1) ^ 2) : ℝ) * I ^ 2 by
    push_cast; ring]
  rw [I_sq, mul_neg_one, ← ofReal_neg, ofReal_re, neg_mul, neg_mul]
#align summable_exp_neg_pi_mul_nat_sq summable_exp_neg_pi_mul_nat_sq

/-- Relate `zetaKernel₁` to the Jacobi theta function on `ℍ`. (We don't use this as the definition
of `zetaKernel₁`, since the sum over `ℕ` rather than `ℤ` is more convenient for relating zeta to
the Dirichlet series for `re s > 1`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `840977beb5e3eaf65ad76ec0ec0d4647db7d0964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
