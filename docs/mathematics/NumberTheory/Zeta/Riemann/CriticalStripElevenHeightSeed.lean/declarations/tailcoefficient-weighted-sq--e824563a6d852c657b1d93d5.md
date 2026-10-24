# tailCoefficient_weighted_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:334befa3-57fb-c534-6d70-a111a8f67a42",
  "kind": "lemma",
  "lexical_name": "tailCoefficient_weighted_sq",
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
  "slug": "tailcoefficient-weighted-sq--e824563a6d852c657b1d93d5",
  "source": {
    "blob": "73bfb3df3acd33a26689a28edb1bbfe2c80d40a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e824563a6d852c657b1d93d5d0c9ce77df00b8d87192c0d8452dfadcc410e063",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:334befa3-57fb-c534-6d70-a111a8f67a42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tailCoefficient_weighted_sq {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    2*(tailCoefficient s)^2 ≤ (7/16 : ℝ)^2*(2*s.re+1) := by
  have hy := height_square_bounds hlo hhi
  have h := (CutoffTwoCertificate.gap_bounds hx hx1 hy.1 hy.2).2
  have hs5 : 0 < s.re+5 := by linarith
  have hd : 0 < 967680*(s.re+5) := mul_pos (by norm_num) hs5
  rw [tailCoefficient, div_pow, ← mul_div_assoc, shiftedProduct_sq]
  apply (div_le_iff₀ (sq_pos_of_pos hd)).mpr
  unfold CutoffTwoCertificate.tailGap at h
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73bfb3df3acd33a26689a28edb1bbfe2c80d40a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
