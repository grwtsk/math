# principalCoefficient_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9e98e5fdeedc887527921185be261963ffab4ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:651093e8-9c60-4998-8fe9-461019fe7fb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db2ba7bd-ecd6-cafb-73f7-1d99f1b2875d",
  "kind": "theorem",
  "lexical_name": "principalCoefficient_ne_zero",
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
  "slug": "principalcoefficient-ne-zero--abf9565305687f2bf2d6f44a",
  "source": {
    "blob": "c9e98e5fdeedc887527921185be261963ffab4ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abf9565305687f2bf2d6f44a371dd680ff09d04a8beb3f8a28f2b35c4461d2f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db2ba7bd-ecd6-cafb-73f7-1d99f1b2875d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem principalCoefficient_ne_zero
    (m : ℕ) (hm : m ≠ 0) (z : ℂ)
    (hz : z ≠ 0) (hp : z ≠ 1 / 2) (hn : z ≠ -(1 / 2)) :
    principalCoefficient m z ≠ 0 := by
  have hm' : (m : ℂ) ≠ 0 := by exact_mod_cast hm
  have hf : z ^ 2 - 1 / 4 ≠ 0 :=
    pole_factor_ne_zero z hp hn
  unfold principalCoefficient
  exact div_ne_zero
    (mul_ne_zero
      (mul_ne_zero
        (mul_ne_zero
          (mul_ne_zero (by norm_num) hm')
          (by norm_num))
        (by norm_num [Nat.factorial]))
      (pow_ne_zero _ hf))
    (pow_ne_zero _ hz)

/-- B3.3 finite-kernel checkpoint.  It records the exact analytic obligations
that remain after the finite algebra in this module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9e98e5fdeedc887527921185be261963ffab4ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
