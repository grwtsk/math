# schur_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac7d77d4-8403-0e82-2166-acaa33ad067b",
  "kind": "theorem",
  "lexical_name": "schur_margin",
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
  "slug": "schur-margin--5b469cab1383b76a9f0582b5",
  "source": {
    "blob": "6372b598e009d9b5e682d1b50f3bdb5a0895ab2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b469cab1383b76a9f0582b5d515bd6a6e5ce5a6e4ea323c7dd6982fb1841460",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac7d77d4-8403-0e82-2166-acaa33ad067b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schur_margin (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (a η : ℝ) (hη : 0 ≤ η)
    (hA : ∀ x : m → ℂ, a * ‖WithLp.toLp 2 x‖ ^ 2 ≤ hermitianEnergy A x)
    (hmargin : ∀ x : m → ℂ,
      hermitianEnergy (Cᴴ * ⅟B * C) x ≤ (1 - η) * hermitianEnergy A x)
    (x : m → ℂ) :
    a * η * ‖WithLp.toLp 2 x‖ ^ 2 ≤ hermitianEnergy (Feshbach.schur A Cᴴ C B) x := by
  have hf : hermitianEnergy (Feshbach.schur A Cᴴ C B) x =
      hermitianEnergy A x - hermitianEnergy (Cᴴ * ⅟B * C) x := by
    simp only [hermitianEnergy, Feshbach.schur, sub_mulVec, dotProduct_sub, Complex.sub_re]
  have hmul := mul_le_mul_of_nonneg_left (hA x) hη
  rw [hf]
  nlinarith [hmargin x]

omit [DecidableEq m] in
/-- Application to the actual PR267 Schur packet. Both coordinate norms are
Euclidean `L²`; no ordinary transpose or product maximum norm is substituted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6372b598e009d9b5e682d1b50f3bdb5a0895ab2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
