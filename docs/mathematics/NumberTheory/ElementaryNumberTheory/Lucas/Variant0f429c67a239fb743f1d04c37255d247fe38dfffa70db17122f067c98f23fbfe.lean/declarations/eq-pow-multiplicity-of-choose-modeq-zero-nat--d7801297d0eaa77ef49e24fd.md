# eq_pow_multiplicity_of_choose_modEq_zero_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23100292-69ff-6c0e-49cc-12ea710dc06d",
  "kind": "theorem",
  "lexical_name": "eq_pow_multiplicity_of_choose_modEq_zero_nat",
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
  "slug": "eq-pow-multiplicity-of-choose-modeq-zero-nat--d7801297d0eaa77ef49e24fd",
  "source": {
    "blob": "da577617157bbaffb0e8d3576c77923344d3330b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 161,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7801297d0eaa77ef49e24fd21122c9bbdfedf38d232021733d5d15aa20a2a8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23100292-69ff-6c0e-49cc-12ea710dc06d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_multiplicity_of_choose_modEq_zero_nat (hn : 0 < n)
    (h : ∀ i ∈ Icc 1 (n - 1), n.choose i ≡ 0 [MOD p]) : n = p ^ multiplicity p n :=
  eq_pow_multiplicity_of_choose_modEq_zero hn (by exact_mod_cast h)

/-- For a prime power `n`, the minimal prime factor divides the greatest common divisor of
`choose n 1, ⋯, choose n (n - 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da577617157bbaffb0e8d3576c77923344d3330b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
