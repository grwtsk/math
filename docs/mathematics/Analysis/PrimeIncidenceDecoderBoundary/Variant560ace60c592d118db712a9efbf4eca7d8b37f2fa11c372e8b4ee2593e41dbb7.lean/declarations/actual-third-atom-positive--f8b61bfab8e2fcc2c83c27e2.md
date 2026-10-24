# actual_third_atom_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ef26b1a-758b-1567-1fa2-9825b10f0f24",
  "kind": "theorem",
  "lexical_name": "actual_third_atom_positive",
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
  "slug": "actual-third-atom-positive--f8b61bfab8e2fcc2c83c27e2",
  "source": {
    "blob": "ab46c5a522483b5e9377dc582c051e44e9703e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 75,
    "path": "GRWTSK/Analysis/PrimeIncidenceDecoderBoundary/Variant560ace60c592d118db712a9efbf4eca7d8b37f2fa11c372e8b4ee2593e41dbb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b61bfab8e2fcc2c83c27e26117f2b722da0aea75851a51c65a458836dbc357",
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

Occurrence: `result:7ef26b1a-758b-1567-1fa2-9825b10f0f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_third_atom_positive {A : ℝ} (hA : 8 ≤ A) : 0 < actualAtom A 3 := by
  have hl0 : 0 ≤ Real.log (3 : ℝ) := Real.log_nonneg (by norm_num)
  have hc := actual_correlation_positive_on_two_log_width hA
    (by rw [abs_of_nonneg hl0]; linarith [log_three_less_two])
  unfold actualAtom
  rw [centeredMangoldt_apply (by norm_num : 2 ≤ 3),
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 3)]
  norm_num only [Nat.cast_ofNat]
  exact div_pos (mul_pos (by linarith [log_three_greater_one]) (by linarith)) (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIncidenceDecoderBoundary/Variant560ace60c592d118db712a9efbf4eca7d8b37f2fa11c372e8b4ee2593e41dbb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIncidenceDecoderBoundary/Variant560ace60c592d118db712a9efbf4eca7d8b37f2fa11c372e8b4ee2593e41dbb7.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab46c5a522483b5e9377dc582c051e44e9703e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
