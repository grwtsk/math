# raw_prime_decay_of_mangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d67842d1-0627-43fb-9a83-13b98efb1026",
  "kind": "theorem",
  "lexical_name": "raw_prime_decay_of_mangoldt",
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
  "slug": "raw-prime-decay-of-mangoldt--d18ae94bb693caa78175c9ae",
  "source": {
    "blob": "b63c70e9d5c28a3e9f3af056ab58888ae42971a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d18ae94bb693caa78175c9aee27a7ca15ea346ffca1ffa60b73b9ac9c47754f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67842d1-0627-43fb-9a83-13b98efb1026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_prime_decay_of_mangoldt {C : ℝ} (hC : RawMangoldtDecay C) :
    RawPrimeDecay (C+properPowerB2) := by
  constructor
  · exact add_nonneg hC.1 (properPowerMoment_nonneg 2)
  · intro t ht
    rw [actual_prime_remainder_eq_full_plus_tail]
    calc
      |actualRemainder t+omittedOnsetTail t| ≤
          |actualRemainder t|+|omittedOnsetTail t| := abs_add_le _ _
      _ ≤ C/t^2+properPowerB2/t^2 := by
        rw [abs_of_nonneg (omittedOnsetTail_nonneg t)]
        exact add_le_add (hC.2 t ht)
          (omittedOnsetTail_le_B2_div_square t (by linarith))
      _ = (C+properPowerB2)/t^2 := by ring

/-- Genuine first-prime integrability follows through the proved strict complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b63c70e9d5c28a3e9f3af056ab58888ae42971a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
