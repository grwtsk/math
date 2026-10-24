# LSeries.hasDerivAt_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfdbdcb1-2c5d-a6b0-59f1-6d86739cdc6f",
  "kind": "lemma",
  "lexical_name": "LSeries.hasDerivAt_term",
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
  "slug": "lseries-hasderivat-term--b066e6429acc4354bda58d65",
  "source": {
    "blob": "df4570e0aad7d9cc41e0bc21d5bab221ccc89e10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b066e6429acc4354bda58d65ab2172b2a523e632a0402e527418d41717d1697e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfdbdcb1-2c5d-a6b0-59f1-6d86739cdc6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.hasDerivAt_term (f : ℕ → ℂ) (n : ℕ) (s : ℂ) :
    HasDerivAt (fun z ↦ term f z n) (-(term (logMul f) s n)) s := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [hasDerivAt_const]
  simp_rw [term_of_ne_zero hn, ← neg_div, ← neg_mul, mul_comm, mul_div_assoc, div_eq_mul_inv,
    ← cpow_neg]
  exact HasDerivAt.const_mul (f n) (by simpa only [mul_comm, ← mul_neg_one (log n), ← mul_assoc]
    using (hasDerivAt_neg' s).const_cpow (Or.inl <| Nat.cast_ne_zero.mpr hn))

/- This lemma proves two things at once, since their proofs are intertwined; we give separate
non-private lemmas below that extract the two statements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df4570e0aad7d9cc41e0bc21d5bab221ccc89e10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
