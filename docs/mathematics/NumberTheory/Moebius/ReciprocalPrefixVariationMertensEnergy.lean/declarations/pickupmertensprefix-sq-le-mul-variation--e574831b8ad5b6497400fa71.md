# pickupMertensPrefix_sq_le_mul_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a050e5-826b-398d-d2e4-475ed978230b",
  "kind": "theorem",
  "lexical_name": "pickupMertensPrefix_sq_le_mul_variation",
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
  "slug": "pickupmertensprefix-sq-le-mul-variation--e574831b8ad5b6497400fa71",
  "source": {
    "blob": "17f35e5a211dc1c8ea91ca1cc2872cedfdfe6ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e574831b8ad5b6497400fa7173b4104060d79759f817e502455ba63db56fa0c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a050e5-826b-398d-d2e4-475ed978230b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupMertensPrefix_sq_le_mul_variation {n : ℕ} (hn : 1 ≤ n) :
    pickupMertensPrefix n ^ 2 ≤
      (n : ℝ) * reciprocalPrefixVariationSquare n := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hhistory :
      0 ≤ ∑ k ∈ Finset.range n,
        pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ)) := by
    positivity
  have hend :
      pickupMertensPrefix n ^ 2 / (n : ℝ) ≤
        reciprocalPrefixVariationSquare n := by
    rw [reciprocalPrefixVariationSquare_eq_mertensSquareEnergy]
    unfold mertensSquareEnergy
    linarith
  calc
    pickupMertensPrefix n ^ 2 =
        (n : ℝ) * (pickupMertensPrefix n ^ 2 / (n : ℝ)) := by
      field_simp
    _ ≤ (n : ℝ) * reciprocalPrefixVariationSquare n :=
      mul_le_mul_of_nonneg_left hend hnpos.le

/-- A positive power saving for the exact Mertens-square energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f35e5a211dc1c8ea91ca1cc2872cedfdfe6ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
