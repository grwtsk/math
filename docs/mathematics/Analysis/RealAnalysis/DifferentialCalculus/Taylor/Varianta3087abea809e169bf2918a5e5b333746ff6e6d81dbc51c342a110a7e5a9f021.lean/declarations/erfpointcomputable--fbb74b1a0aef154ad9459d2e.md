# erfPointComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a22e89dbbd3edc9096e5f127ffce129e0a8a0a9cc73f078b4ff626e2457cf0aa",
  "kind": "def",
  "lexical_name": "erfPointComputable",
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
  "slug": "erfpointcomputable--fbb74b1a0aef154ad9459d2e",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1962,
    "line": 1933,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbb74b1a0aef154ad9459d2eb87bd0cac5ee7c8b385181456909cc2865bf20b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a22e89dbbd3edc9096e5f127ffce129e0a8a0a9cc73f078b4ff626e2457cf0aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1933–1962.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def erfPointComputable (q : ℚ) (n : ℕ := 15) : IntervalRat :=
  let _ := n
  let b : ℚ := min 1 ((2257 / 2000) * |q|)
  if hq : q < 0 then
    ⟨-b, 0, by
      unfold b
      have hb_nonneg : (0 : ℚ) ≤ min 1 ((2257 / 2000) * |q|) := by
        apply le_min
        · norm_num
        · exact mul_nonneg (by norm_num) (abs_nonneg q)
      linarith⟩
  else if h0 : q = 0 then
    ⟨0, 0, by norm_num⟩
  else
    ⟨0, b, by
      unfold b
      have hb_nonneg : (0 : ℚ) ≤ min 1 ((2257 / 2000) * |q|) := by
        apply le_min
        · norm_num
        · exact mul_nonneg (by norm_num) (abs_nonneg q)
      exact hb_nonneg⟩

/-- Computable interval enclosure for erf using Taylor series with monotonicity.

    erf(x) = (2/√π) * Σ_{n=0}^∞ (-1)^n * x^(2n+1) / (n! * (2n+1))

    Since erf is strictly monotone increasing (erf'(x) = (2/√π)e^{-x²} > 0),
    we use endpoint evaluation: erf([a,b]) ⊆ [erf(a), erf(b)].

    We intersect with [-1, 1] for safety. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
