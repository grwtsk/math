# norm_remainder_sub_prefix_le_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2b0cc43-ecbe-49d4-318f-2168cab56016",
  "kind": "theorem",
  "lexical_name": "norm_remainder_sub_prefix_le_square",
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
  "slug": "norm-remainder-sub-prefix-le-square--8ea43c37155982f822bb3814",
  "source": {
    "blob": "b9a10655c573ec4c0242dee5c72dc304387ebc38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea43c37155982f822bb3814c30dfb8895a2a8b34ed56b3afa3f14a62179b414",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b0cc43-ecbe-49d4-318f-2168cab56016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_remainder_sub_prefix_le_square (N : ℕ) (s : ℂ) (hs : 0 ≤ s.re) :
    ‖CubicRemainder.cubicRemainder s - cellPrefix N s‖ ≤
      1 / (96 * cutoff N ^ 2) := by
  have hb := norm_cubicRemainder_sub_prefix_le 0 (by norm_num) s hs N
  have he : decayPower 2 (cutoff N) = 1 / cutoff N ^ 2 := by
    unfold decayPower
    rw [show -(2 : ℝ) * Real.log (cutoff N) =
      -(Real.log (cutoff N) + Real.log (cutoff N)) by ring,
      Real.exp_neg, Real.exp_add, Real.exp_log (cutoff_pos N)]
    simp [pow_two, one_div]
  norm_num only [zero_add] at hb
  change ‖CubicRemainder.cubicRemainder s - cellPrefix N s‖ ≤
    decayPower 2 (cutoff N) / 96 at hb
  rw [he] at hb
  convert hb using 1 <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a10655c573ec4c0242dee5c72dc304387ebc38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
