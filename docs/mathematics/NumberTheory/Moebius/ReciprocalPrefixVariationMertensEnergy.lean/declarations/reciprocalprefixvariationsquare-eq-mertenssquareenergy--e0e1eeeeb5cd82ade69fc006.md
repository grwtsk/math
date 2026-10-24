# reciprocalPrefixVariationSquare_eq_mertensSquareEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b04ad1f-28e9-df82-d32b-d646a5cbe0fc",
  "kind": "theorem",
  "lexical_name": "reciprocalPrefixVariationSquare_eq_mertensSquareEnergy",
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
  "slug": "reciprocalprefixvariationsquare-eq-mertenssquareenergy--e0e1eeeeb5cd82ade69fc006",
  "source": {
    "blob": "17f35e5a211dc1c8ea91ca1cc2872cedfdfe6ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0e1eeeeb5cd82ade69fc006d76fbe1c83658957281c0661fbc2b9dc1a5ef5e5",
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

Occurrence: `result:7b04ad1f-28e9-df82-d32b-d646a5cbe0fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalPrefixVariationSquare_eq_mertensSquareEnergy (n : ℕ) :
    reciprocalPrefixVariationSquare n = mertensSquareEnergy n := by
  induction n with
  | zero => simp [reciprocalPrefixVariationSquare, mertensSquareEnergy]
  | succ n ih =>
      rw [reciprocalPrefixVariationSquare_succ_eq_mertensSquareIncrement, ih]
      unfold mertensSquareEnergy
      rw [Finset.sum_range_succ]
      rcases n with _ | n
      · simp [pickupMertensPrefix]
      · have hn : (((n + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
        have hns : (((n + 2 : ℕ) : ℝ)) ≠ 0 := by positivity
        norm_num [Nat.cast_add, Nat.cast_one]
        field_simp
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f35e5a211dc1c8ea91ca1cc2872cedfdfe6ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
