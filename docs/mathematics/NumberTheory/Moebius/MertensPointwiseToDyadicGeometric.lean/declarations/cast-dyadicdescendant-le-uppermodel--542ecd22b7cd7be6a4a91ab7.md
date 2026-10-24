# cast_dyadicDescendant_le_upperModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0b89abc-28d6-bfce-e39d-500ee3e806a7",
  "kind": "theorem",
  "lexical_name": "cast_dyadicDescendant_le_upperModel",
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
  "slug": "cast-dyadicdescendant-le-uppermodel--542ecd22b7cd7be6a4a91ab7",
  "source": {
    "blob": "c733396529d16479328faf49cf014faa96699ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:542ecd22b7cd7be6a4a91ab75cc4d694ae69531f916e9afbc5e87cbc58560949",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0b89abc-28d6-bfce-e39d-500ee3e806a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_dyadicDescendant_le_upperModel
    {j b n t : ℕ}
    (hb : b < 2 ^ (j + 1))
    (hn : n ≤ b / 2 ^ t) :
    (n : ℝ) ≤
      (2 * (((2 ^ j : ℕ) : ℝ))) /
        (((2 ^ t : ℕ) : ℝ)) := by
  calc
    (n : ℝ) ≤ (((b / 2 ^ t : ℕ) : ℝ)) := by
      exact_mod_cast hn
    _ ≤ (b : ℝ) / (((2 ^ t : ℕ) : ℝ)) :=
      Nat.cast_div_le
    _ ≤ (((2 ^ (j + 1) : ℕ) : ℝ)) /
        (((2 ^ t : ℕ) : ℝ)) := by
      apply div_le_div_of_nonneg_right
      · exact_mod_cast (Nat.le_of_lt hb)
      · positivity
    _ = (2 * (((2 ^ j : ℕ) : ℝ))) /
        (((2 ^ t : ℕ) : ℝ)) := by
      norm_num [pow_succ, mul_comm]

/-- Positive-base equality combining the square-root and epsilon factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c733396529d16479328faf49cf014faa96699ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
