# cases_c_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f1a9e3d-eab9-8f80-3eb8-c06f41809fd0",
  "kind": "lemma",
  "lexical_name": "cases_c_zero",
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
  "slug": "cases-c-zero--e67db7688c0040fa3d67a1b1",
  "source": {
    "blob": "7c6ff5e0ef6481aedbc362481a943158f1515c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 491,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67db7688c0040fa3d67a1b147ac266b3382b84c1c4a6f1acb160bd2a9f0b1e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f1a9e3d-eab9-8f80-3eb8-c06f41809fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma cases_c_zero (hz : z ∈ 𝒟) (hg : g • z ∈ 𝒟) (hc : g 1 0 = 0) :
    ((g = T ∨ g = -T) ∧ z.re = -1 / 2) ∨
    ((g = T⁻¹ ∨ g = -T⁻¹) ∧ z.re = 1 / 2) ∨
    (g = 1 ∨ g = -1) := by
  wlog hd : 0 ≤ g 1 1
  · specialize this hz (g := -g) (SL_neg_smul g z ▸ hg) (by simpa using hc) ?_
    · simpa using (not_le.mp hd).le
    convert! this using 2 <;> simp [neg_eq_iff_eq_neg, or_comm]
  have hd' : g 1 1 = 1 ∨ g 1 1 = -1 := by
    simpa [hc, isCoprime_zero_left, Int.isUnit_iff] using bottom_row_coprime g
  replace hd : g 1 1 = 1 := by grind
  have ha : g 0 0 = 1 := by grind [det_fin_two, g.property]
  let b := g 0 1
  have hgz : g = T ^ b := by
    ext i j
    rw [coe_T_zpow]
    fin_cases i <;> fin_cases j <;> tauto
  have hre : (g • z).re = b + z.re := by
    rw [hgz, ← coe_re, coe_T_zpow_smul_eq, add_re, coe_re, intCast_re, add_comm]
  have := (abs_sub_abs_le_abs_add ..).trans (hre ▸ hg.2)
  grw [sub_le_iff_le_add, hz.2, add_halves, ← Int.cast_abs, ← Int.cast_one, Int.cast_le,
    Int.abs_le_one_iff] at this
  rcases this with hb | hb | hb <;> rw [hb] at hgz
  · rw [hgz]
    simp
  · left
    rw [hgz, zpow_one, eq_self_iff_true, true_or, true_and]
    rw [hb, Int.cast_one] at hre
    linarith [(le_abs_self _).trans (abs_neg z.re ▸ hz.2), (le_abs_self _).trans hg.2]
  · right
    left
    rw [hgz, zpow_neg_one, eq_self_iff_true, true_or, true_and]
    rw [hb, Int.cast_neg, Int.cast_one] at hre
    linarith [(le_abs_self _).trans hz.2, (le_abs_self _).trans (abs_neg (g • z).re ▸ hg.2)]

/-- Classify possible `d` when `c = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ff5e0ef6481aedbc362481a943158f1515c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
