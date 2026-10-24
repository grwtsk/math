# norm_sub_prefix_le_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6394d2ce-3bbd-e851-761f-28a1df74bd08",
  "kind": "theorem",
  "lexical_name": "norm_sub_prefix_le_inverse",
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
  "slug": "norm-sub-prefix-le-inverse--ddf4b84b909eb4c22dd18d8f",
  "source": {
    "blob": "4b1b60777f2a3a7cbd103273535a4b54075ed7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddf4b84b909eb4c22dd18d8f73bec6784db588b33844a9170621f158086e019a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6394d2ce-3bbd-e851-761f-28a1df74bd08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_prefix_le_inverse (s : ℂ) (hs : -1 ≤ s.re) (N : ℕ) :
    ‖cubicRemainder s - ∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s)‖ ≤
      1 / (48 * ((N : ℝ) + 1)) := by
  have hq : 0 < (N : ℝ) + 1 := by positivity
  have hb := norm_cubicRemainder_sub_prefix_le (-1) (by norm_num) s hs N
  have he : decayPower 1 ((N : ℝ) + 1) = 1 / ((N : ℝ) + 1) := by
    simp only [decayPower, neg_one_mul, Real.exp_neg, Real.exp_log hq, one_div]
  norm_num only [show (-1 : ℝ) + 2 = 1 by norm_num, mul_one] at hb
  rw [he] at hb
  simpa only [div_div, mul_comm (48 : ℝ)] using hb

/-- The useful disk-domain remainder bound no longer needs a caller-supplied radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1b60777f2a3a7cbd103273535a4b54075ed7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
