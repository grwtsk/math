# thetaPhiDerivativePolynomial_christoffel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de885f71e044849bf77118f867a82340c571f72b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1aef8c38-3eb8-954e-25f7-8d3984ef4baf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55344f68-ac64-c5da-350c-5b5da03a26a5",
  "kind": "theorem",
  "lexical_name": "thetaPhiDerivativePolynomial_christoffel",
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
  "slug": "thetaphiderivativepolynomial-christoffel--ff125b3e4eb0930b580c76cf",
  "source": {
    "blob": "de885f71e044849bf77118f867a82340c571f72b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff125b3e4eb0930b580c76cf1dff33ea74f0323f916c6d476ae55cac16e75ee5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55344f68-ac64-c5da-350c-5b5da03a26a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiDerivativePolynomial_christoffel
    (n : ℕ) :
    thetaPhiBasePolynomial (n + 1) +
        thetaPhiBasePolynomial n =
      (-2 : ℝ) • thetaPhiDerivativePolynomial n := by
  induction n with
  | zero =>
      change
        thetaPhiDerivativeStep
            (Polynomial.monomial 0 1) +
            Polynomial.monomial 0 1 =
          (-2 : ℝ) •
            (Polynomial.monomial 0 (-3) +
              Polynomial.monomial 1 2)
      rw [thetaPhiDerivativeStep_monomial]
      simp only [smul_add, Polynomial.smul_monomial,
        smul_eq_mul]
      simp_rw [← Polynomial.C_mul_X_pow_eq_monomial]
      norm_num
      ext n
      by_cases hn : n = 0
      · subst n
        simp
        norm_num
      · simp [Polynomial.coeff_C, Polynomial.coeff_one, hn]
  | succ n ih =>
      change
        thetaPhiDerivativeStep
            (thetaPhiBasePolynomial (n + 1)) +
            thetaPhiDerivativeStep
              (thetaPhiBasePolynomial n) =
          (-2 : ℝ) •
            thetaPhiDerivativeStep
              (thetaPhiDerivativePolynomial n)
      rw [← thetaPhiDerivativeStep_add, ih,
        thetaPhiDerivativeStep_smul]

/-- Evaluation form of the Christoffel identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de885f71e044849bf77118f867a82340c571f72b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
