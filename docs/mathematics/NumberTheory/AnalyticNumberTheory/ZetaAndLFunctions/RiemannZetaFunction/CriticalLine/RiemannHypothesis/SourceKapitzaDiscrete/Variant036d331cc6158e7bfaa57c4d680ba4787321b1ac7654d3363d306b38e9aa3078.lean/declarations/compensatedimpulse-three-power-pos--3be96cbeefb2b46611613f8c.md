# compensatedImpulse_three_power_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54a7cf85-cc10-c876-507f-2bdaa6172d04",
  "kind": "theorem",
  "lexical_name": "compensatedImpulse_three_power_pos",
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
  "slug": "compensatedimpulse-three-power-pos--3be96cbeefb2b46611613f8c",
  "source": {
    "blob": "b203e708acc3c94ce062bc2d36fcbc85e604b659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 221,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3be96cbeefb2b46611613f8c073f867908a7e7000a1d10cca0bf55db4448d95f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54a7cf85-cc10-c876-507f-2bdaa6172d04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedImpulse_three_power_pos {k : ℕ} (hk : k ≠ 0) :
    0 < compensatedImpulse (3 ^ k) := by
  rw [compensatedImpulse, ArithmeticFunction.vonMangoldt_apply_pow hk,
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 3)]
  have hl : (1 : ℝ) < Real.log 3 :=
    (Real.lt_log_iff_exp_lt (by norm_num : (0 : ℝ) < 3)).mpr Real.exp_one_lt_three
  norm_num only [Nat.cast_ofNat]
  linarith

end FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b203e708acc3c94ce062bc2d36fcbc85e604b659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
