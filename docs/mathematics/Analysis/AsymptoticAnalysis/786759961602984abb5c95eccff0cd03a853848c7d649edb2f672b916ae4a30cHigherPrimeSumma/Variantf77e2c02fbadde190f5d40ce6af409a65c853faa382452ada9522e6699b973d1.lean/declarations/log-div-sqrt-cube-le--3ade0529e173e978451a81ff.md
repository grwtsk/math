# log_div_sqrt_cube_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb12c6f5-4704-43b6-5467-f70fddd6cbd7",
  "kind": "theorem",
  "lexical_name": "log_div_sqrt_cube_le",
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
  "slug": "log-div-sqrt-cube-le--3ade0529e173e978451a81ff",
  "source": {
    "blob": "624b234ace6b95c789cb23023337af8959fcedc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 27,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ade0529e173e978451a81fff9526838b86892bd0b880f3e6bb401ee456da60b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb12c6f5-4704-43b6-5467-f70fddd6cbd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_div_sqrt_cube_le (p : Nat.Primes) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3 ≤
      4 * (p : ℝ) ^ (-5 / 4 : ℝ) := by
  have hp : 0 < (p : ℝ) := by exact_mod_cast p.prop.pos
  have hs : 0 < Real.sqrt (p : ℝ) := Real.sqrt_pos.mpr hp
  have hlog := Real.log_le_rpow_div hp.le (by norm_num : 0 < (1 / 4 : ℝ))
  have hcube : Real.sqrt (p : ℝ) ^ 3 = (p : ℝ) ^ (3 / 2 : ℝ) := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_natCast, ← Real.rpow_mul hp.le]
    norm_num
  calc
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3 ≤
        ((p : ℝ) ^ (1 / 4 : ℝ) / (1 / 4 : ℝ)) /
          Real.sqrt (p : ℝ) ^ 3 := div_le_div_of_nonneg_right hlog (by positivity)
    _ = 4 * (p : ℝ) ^ (-5 / 4 : ℝ) := by
      rw [hcube]
      calc
        _ = 4 * ((p : ℝ) ^ (1 / 4 : ℝ) / (p : ℝ) ^ (3 / 2 : ℝ)) := by ring
        _ = _ := by rw [← Real.rpow_sub hp]; norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624b234ace6b95c789cb23023337af8959fcedc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
