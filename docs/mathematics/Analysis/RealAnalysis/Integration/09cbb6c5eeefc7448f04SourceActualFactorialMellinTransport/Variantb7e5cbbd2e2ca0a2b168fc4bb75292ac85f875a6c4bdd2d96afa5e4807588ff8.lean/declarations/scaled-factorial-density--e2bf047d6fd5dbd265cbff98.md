# scaled_factorial_density

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b01a7bf3-aaa3-8c41-7ce3-3e546a0535d3",
  "kind": "theorem",
  "lexical_name": "scaled_factorial_density",
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
  "slug": "scaled-factorial-density--e2bf047d6fd5dbd265cbff98",
  "source": {
    "blob": "9e4bf48b7619584d233240b490ec314109fb4bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2bf047d6fd5dbd265cbff9819b82fe2464de85c52467efd5bb0c17afe4429ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b01a7bf3-aaa3-8c41-7ce3-3e546a0535d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scaled_factorial_density {d x : ℝ} (hd : 0 < d) (hx : 0 < x) :
    factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2) =
      d ^ (-(3 : ℝ) / 2) * factorialMellinWeight (x * d⁻¹) := by
  have hxdiv : 0 < x / d := div_pos hx hd
  have hxde : x = d * (x / d) := by field_simp
  have hp : x ^ (-(3 : ℝ) / 2) =
      d ^ (-(3 : ℝ) / 2) * (x / d) ^ (-(3 : ℝ) / 2) := by
    conv_lhs => rw [hxde]
    exact Real.mul_rpow hd.le hxdiv.le
  unfold factorialMellinWeight
  rw [hp, ← div_eq_mul_inv]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e4bf48b7619584d233240b490ec314109fb4bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
