# canonicalPrimeMargin_pos_of_accepts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd5cc81f-6ad6-ba59-14d8-625c4c4ab9e3",
  "kind": "theorem",
  "lexical_name": "canonicalPrimeMargin_pos_of_accepts",
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
  "slug": "canonicalprimemargin-pos-of-accepts--26c800c4988291990bebdde6",
  "source": {
    "blob": "4ff2c07d0b593b14207670441f6c0e540d793ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 265,
    "path": "GRWTSK/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26c800c4988291990bebdde65d7fa1f0bd6c02b95b675bb46b09cbb6c8e10d03",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd5cc81f-6ad6-ba59-14d8-625c4c4ab9e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalPrimeMargin_pos_of_accepts
    (n : ℕ) (hn : 2 ≤ n) {T : ℝ} (hT : 2 ≤ T)
    (heightLog : DyadicInput T)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
    (zeroUpper correctionLower : ℚ)
    (accepted : accepts n heightLog stageLog cutoffLog
      zeroUpper correctionLower = true) :
    0 < canonicalPrimeMargin n T (zeroUpper : ℝ) (correctionLower : ℝ) := by
  have hq := (accepts_iff n heightLog stageLog cutoffLog
    zeroUpper correctionLower).mp accepted
  have hqR :
      0 < (marginQ n heightLog stageLog cutoffLog
        zeroUpper correctionLower : ℝ) := by
    exact_mod_cast hq
  exact hqR.trans_le
    (marginQ_le_canonicalPrimeMargin n hn hT heightLog stageLog cutoffLog
      zeroUpper correctionLower)

/-- Equality at zero is rejected; the strict margin is not weakened. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ff2c07d0b593b14207670441f6c0e540d793ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
