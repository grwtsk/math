# actual_second_atom_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5928941-dd67-5a43-9784-62ec1d986621",
  "kind": "theorem",
  "lexical_name": "actual_second_atom_negative",
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
  "slug": "actual-second-atom-negative--e252d3b8ab0eb31a3134afae",
  "source": {
    "blob": "ab46c5a522483b5e9377dc582c051e44e9703e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/Analysis/PrimeIncidenceDecoderBoundary/Variant560ace60c592d118db712a9efbf4eca7d8b37f2fa11c372e8b4ee2593e41dbb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e252d3b8ab0eb31a3134afaea28150474d6ba8eeafdfe14cfecc3b04040e45e8",
  "verification": {
    "reference": "docs/verification/Analysis/PrimeIncidenceDecoderBoundary/Variant560ace60c592d118db712a9efbf4eca7d8b37f2fa11c372e8b4ee2593e41dbb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5928941-dd67-5a43-9784-62ec1d986621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_atom_negative {A : ℝ} (hA : 8 ≤ A) : actualAtom A 2 < 0 := by
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hc := actual_correlation_positive_on_two_log_width hA
    (by rw [abs_of_nonneg hl0]; linarith [log_two_less_one])
  unfold actualAtom
  rw [centeredMangoldt_apply (by norm_num : 2 ≤ 2),
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
  norm_num only [Nat.cast_ofNat]
  apply div_neg_of_neg_of_pos _ (by positivity)
  exact mul_neg_of_neg_of_pos (by linarith [log_two_less_one]) (by linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIncidenceDecoderBoundary/Variant560ace60c592d118db712a9efbf4eca7d8b37f2fa11c372e8b4ee2593e41dbb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIncidenceDecoderBoundary/Variant560ace60c592d118db712a9efbf4eca7d8b37f2fa11c372e8b4ee2593e41dbb7.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab46c5a522483b5e9377dc582c051e44e9703e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
