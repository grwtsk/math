# norm_LSeries_line_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd6aaf92-4233-fe37-071c-a5dd3da3f008",
  "kind": "theorem",
  "lexical_name": "norm_LSeries_line_le",
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
  "slug": "norm-lseries-line-le--53febcecee9ddeb674da92bd",
  "source": {
    "blob": "7ab24618853daeb6c2ef5214ca2f76f0f75a906f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53febcecee9ddeb674da92bd6d2d5617cecd25cd1ecf2b632b0d3eeb788ebb68",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd6aaf92-4233-fe37-071c-a5dd3da3f008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_LSeries_line_le (a : ℕ → ℂ) (c t : ℝ)
    (ha : Summable (fun N : ℕ => ‖a N‖ * (N : ℝ) ^ (-c))) :
    ‖LSeries a ((c:ℂ) + t * I)‖ ≤ ∑' n : ℕ, (if n = 0 then (0:ℝ) else ‖a n‖ * ((n:ℝ) ^ (-c))) := by
  have hs : Summable (fun n : ℕ => ‖LSeries.term a ((c:ℂ) + t * I) n‖) :=
    (summable_coeff_bound a c ha).congr fun n => (norm_LSeries_term_line a c t n).symm
  calc ‖LSeries a ((c:ℂ) + t * I)‖ = ‖∑' n, LSeries.term a ((c:ℂ) + t * I) n‖ := rfl
    _ ≤ ∑' n, ‖LSeries.term a ((c:ℂ) + t * I) n‖ := norm_tsum_le_tsum_norm hs
    _ = _ := tsum_congr fun n => norm_LSeries_term_line a c t n

/-- integrability of each term and summability of the L¹ norms (the domination for Step 3). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab24618853daeb6c2ef5214ca2f76f0f75a906f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
