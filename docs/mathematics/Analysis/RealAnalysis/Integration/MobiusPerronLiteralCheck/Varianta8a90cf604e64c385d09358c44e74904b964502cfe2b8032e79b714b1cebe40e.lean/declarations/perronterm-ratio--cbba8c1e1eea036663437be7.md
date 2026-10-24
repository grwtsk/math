# perronTerm_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9d557f5-8053-ba77-33bf-81d7936bbd1f",
  "kind": "theorem",
  "lexical_name": "perronTerm_ratio",
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
  "slug": "perronterm-ratio--cbba8c1e1eea036663437be7",
  "source": {
    "blob": "7c04659ef147791d64d81b74d7fa14d454f9750e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbba8c1e1eea036663437be7c8f9c4c6820ac6f95b4b0e7ad4eec552fde4353c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9d557f5-8053-ba77-33bf-81d7936bbd1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perronTerm_ratio (c x : ℝ) (hx : 0 < x) (n : ℕ) (hn : 0 < n) (t : ℝ) :
    perronTerm c x n t = (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
      perronIntegrand c (x / (n : ℝ)) t := by
  have hn0 : (n : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hn.ne'
  have hnr : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  rw [perronTerm, LSeries.term_of_ne_zero hn.ne']
  unfold perronIntegrand
  rw [show 1 + (c : ℂ) + (t : ℂ) * Complex.I =
      1 + ((c : ℂ) + (t : ℂ) * Complex.I) by ring,
    Complex.cpow_add _ _ hn0, Complex.cpow_one,
    Complex.ofReal_div, Complex.div_cpow_ofReal_nonneg hx.le hnr]
  push_cast
  ring

/-- The original zeta Perron integrand is genuinely integrable on every line c>0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c04659ef147791d64d81b74d7fa14d454f9750e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
