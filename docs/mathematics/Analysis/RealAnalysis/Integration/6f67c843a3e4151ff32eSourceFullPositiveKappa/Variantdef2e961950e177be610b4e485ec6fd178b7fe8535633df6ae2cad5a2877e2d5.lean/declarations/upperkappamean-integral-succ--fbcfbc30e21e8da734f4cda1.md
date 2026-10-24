# upperKappaMean_integral_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b11f9f17-3af4-2990-bc88-a295cea30432",
  "kind": "theorem",
  "lexical_name": "upperKappaMean_integral_succ",
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
  "slug": "upperkappamean-integral-succ--fbcfbc30e21e8da734f4cda1",
  "source": {
    "blob": "d69d8556b463a4355155dc0116df7eaa0e315bc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/6f67c843a3e4151ff32eSourceFullPositiveKappa/Variantdef2e961950e177be610b4e485ec6fd178b7fe8535633df6ae2cad5a2877e2d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbcfbc30e21e8da734f4cda1f49a31a2c3d2b71edc39faf91f1193011194994d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/6f67c843a3e4151ff32eSourceFullPositiveKappa/Variantdef2e961950e177be610b4e485ec6fd178b7fe8535633df6ae2cad5a2877e2d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b11f9f17-3af4-2990-bc88-a295cea30432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperKappaMean_integral_succ (j : ℕ) :
    (∫ u in Ioi (1 : ℝ), upperKappaMeanWeight (j + 1) u) = 0 := by
  unfold upperKappaMeanWeight
  simp only [Nat.add_sub_cancel]
  rw [integral_sub ((upperLogWeight_integrable j).const_mul ((j + 1 : ℕ) : ℝ))
    ((upperLogWeight_integrable (j + 1)).div_const 2), integral_const_mul, integral_div,
    upperLogWeight_integral, upperLogWeight_integral]
  simp only [Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  rw [show j + 1 + 1 = (j + 1) + 1 from rfl, pow_succ]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/6f67c843a3e4151ff32eSourceFullPositiveKappa/Variantdef2e961950e177be610b4e485ec6fd178b7fe8535633df6ae2cad5a2877e2d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/6f67c843a3e4151ff32eSourceFullPositiveKappa/Variantdef2e961950e177be610b4e485ec6fd178b7fe8535633df6ae2cad5a2877e2d5.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d69d8556b463a4355155dc0116df7eaa0e315bc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
