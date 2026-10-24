# xi_ne_zero_on_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6c8e5c5-d512-b7ea-4a8d-c71cfc751995",
  "kind": "theorem",
  "lexical_name": "xi_ne_zero_on_right",
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
  "slug": "xi-ne-zero-on-right--2ef6a8567fe87ea8a5ca7f0e",
  "source": {
    "blob": "2012bddeec7651acd30fa01c9adea972531c7210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ef6a8567fe87ea8a5ca7f0ee39b2d8c4ed546fde80b8f188aaa194a90228013",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c8e5c5-d512-b7ea-4a8d-c71cfc751995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_ne_zero_on_right (s : ℂ) (hs : 1 < s.re) : xi s ≠ 0 := by
  rw [xi_product_on_right s hs]
  have h0 : s ≠ 0 := by intro h; subst s; norm_num at hs
  have h1 : s - 1 ≠ 0 := by
    apply sub_ne_zero.mpr
    intro h
    subst s
    norm_num at hs
  exact div_ne_zero
    (mul_ne_zero (mul_ne_zero h0 h1)
      (mul_ne_zero (riemannZeta_ne_zero_of_one_le_re hs.le)
        (Gammaℝ_ne_zero_of_re_pos (by linarith))))
    (by norm_num)

/-- Negative even trivial zeros are not xi zeros: reflect to a nonvanishing right point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2012bddeec7651acd30fa01c9adea972531c7210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
