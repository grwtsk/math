# riemannZeta_eq_exp_LSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9e2b7e8-e9a6-4657-8dfc-38b0df601682",
  "kind": "theorem",
  "lexical_name": "riemannZeta_eq_exp_LSeries",
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
  "slug": "riemannzeta-eq-exp-lseries--1a7421656a5e3700e318cdc6",
  "source": {
    "blob": "5e736399417772e88ffed62b99b22deab944529a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 272,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a7421656a5e3700e318cdc6a1578d00a329b9b0e1ad56750ca2fe6a47e41fbd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9e2b7e8-e9a6-4657-8dfc-38b0df601682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_eq_exp_LSeries {s : ℂ} (hs : 1 < s.re) :
    exp (LSeries (fun (n : ℕ) ↦ Λ n / Real.log n) s) = riemannZeta s := by
  rw [← LSeries_one_eq_riemannZeta hs]
  convert LSeries_eq_exp_LSeries (1 : DirichletCharacter ℂ 1) hs
  <;> simp [MulChar.one_apply <| isUnit_of_subsingleton _]

/-- For real `s > 1`, the logarithm of the (real) Riemann zeta function equals
`∑' n, Λ n / (n ^ s * Real.log n)`, where `Λ` is the von Mangoldt function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e736399417772e88ffed62b99b22deab944529a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
