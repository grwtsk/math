# compensatedImpulse_three_power_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14655d74-a9be-433d-4405-1d828ea1f20a",
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
  "slug": "compensatedimpulse-three-power-pos--295e786188cfe7f71c9beb6c",
  "source": {
    "blob": "38d1f6d31462d7a84bbe4616af20abce5d598d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 186,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:295e786188cfe7f71c9beb6c9be3a60a0304b7cb1ce88b7a1b3ec19ff09f7b36",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14655d74-a9be-433d-4405-1d828ea1f20a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–195.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38d1f6d31462d7a84bbe4616af20abce5d598d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
