# norm_lt_norm_iff_mulValuation_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:def6e642-1d23-c2c2-dd9d-22489d0637c9",
  "kind": "lemma",
  "lexical_name": "norm_lt_norm_iff_mulValuation_lt",
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
  "slug": "norm-lt-norm-iff-mulvaluation-lt--d0c65a67bad2cc81563a1e55",
  "source": {
    "blob": "0a086f67d63d1db413964d538a37349956f65b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1229,
    "line": 1222,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0c65a67bad2cc81563a1e557bc1baf9b725d44e9f0cae81a58160e12ef1134a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:def6e642-1d23-c2c2-dd9d-22489d0637c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1222–1229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_lt_norm_iff_mulValuation_lt {x y : ℚ_[p]} :
    ‖x‖ < ‖y‖ ↔ mulValuation x < mulValuation y := by
  by_cases hy : y = 0
  · simp [hy]
  rw [norm_eq_zpow_log_mulValuation hy, norm_lt_zpow_iff_mulValuation_lt_exp,
    exp_log (mulValuation.ne_zero_iff.mpr hy)]

/-- The additive `p`-adic valuation on `ℚ_[p]`, as an `addValuation`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean#L1222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a086f67d63d1db413964d538a37349956f65b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
