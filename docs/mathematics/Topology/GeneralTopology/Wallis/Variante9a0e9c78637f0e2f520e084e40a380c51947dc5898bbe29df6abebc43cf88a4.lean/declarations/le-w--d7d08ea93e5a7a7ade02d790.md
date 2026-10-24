# le_W

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51ae0a60-f5fc-dad8-fce3-8e83cd346eff",
  "kind": "theorem",
  "lexical_name": "le_W",
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
  "slug": "le-w--d7d08ea93e5a7a7ade02d790",
  "source": {
    "blob": "bb82347a1d73a9cff822b1f851ccba6b6c2adfe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d08ea93e5a7a7ade02d7904c96935de58ab189af98a82faf12be04d897c364",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51ae0a60-f5fc-dad8-fce3-8e83cd346eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_W (k : ℕ) : ((2 : ℝ) * k + 1) / (2 * k + 2) * (π / 2) ≤ W k := by
  rw [← le_div_iff₀ pi_div_two_pos, div_eq_inv_mul (W k) _]
  rw [W_eq_integral_sin_pow_div_integral_sin_pow, le_div_iff₀ (integral_sin_pow_pos _)]
  convert integral_sin_pow_succ_le (2 * k + 1)
  rw [integral_sin_pow (2 * k)]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb82347a1d73a9cff822b1f851ccba6b6c2adfe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
