# Pre_inputs.default

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c312b1ff8992dd53276f42439079bb9b2328d71590e85bbbbee1d19f28687bd1",
  "kind": "def",
  "lexical_name": "Pre_inputs.default",
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
  "slug": "pre-inputs-default--a00d7087e7e0bc16c9799d19",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a00d7087e7e0bc16c9799d19640e031e2cc04c19217379212034e4147f920a34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c312b1ff8992dd53276f42439079bb9b2328d71590e85bbbbee1d19f28687bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Pre_inputs.default : Pre_inputs := {
  ε := BKLNW_app.table_8_ε
  hε := BKLNW_app.theorem_2
  x₁ := 1e19
  hx₁ := by grw [← exp_one_rpow, rpow_ofNat, exp_one_lt_three]; norm_num
  hx₁' := buthe_eq_1_7
}

@[blueprint
  "bklnw-lemma-11a"
  (title := "BKLNW Lemma 11a")
  (statement := /-- With the hypotheses as above, we have $\theta(x) \leq (1+\eps(\log x_1)) x)$ for all $x > 0$.-/)
  (proof := /-- Follows immediately from the given hypothesis $\theta(x) \leq \psi(x)$, splitting into the cases $x ≥ x_1$ and $x < x_1$. -/)
  (latexEnv := "lemma")
  (discussion := 788)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
