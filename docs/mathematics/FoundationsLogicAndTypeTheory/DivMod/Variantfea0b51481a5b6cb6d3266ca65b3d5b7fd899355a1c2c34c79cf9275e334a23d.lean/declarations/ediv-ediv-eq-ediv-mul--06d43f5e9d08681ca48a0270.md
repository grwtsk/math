# ediv_ediv_eq_ediv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2159b723-6b78-f012-42f4-5a398a43bc4c",
  "kind": "theorem",
  "lexical_name": "ediv_ediv_eq_ediv_mul",
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
  "slug": "ediv-ediv-eq-ediv-mul--06d43f5e9d08681ca48a0270",
  "source": {
    "blob": "15a06da89c4c393594ba208842a73db450b91144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06d43f5e9d08681ca48a02705bbeefec797a81cd651cd5f1d672a9313a2f84b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2159b723-6b78-f012-42f4-5a398a43bc4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediv_ediv_eq_ediv_mul (m : Int) {n k : Int} (hn : 0 ≤ n) :
    m / n / k = m / (n * k) := by
  have {k : Int} (hk : 0 < k) : m / n / k = m / (n * k) := by
    obtain rfl | hn' : n = 0 ∨ 0 < n := by omega
    · simp
    · apply Int.le_antisymm
      · apply Int.le_ediv_of_mul_le (Int.mul_pos hn' hk)
        calc
          m / n / k * (n * k) = m / n / k * k * n := by ac_rfl
          _ ≤ m / n * n :=
            Int.mul_le_mul_of_nonneg_right (Int.ediv_mul_le (m / n) (Int.ne_of_gt hk)) hn
          _ ≤ m :=
            Int.ediv_mul_le m (Int.ne_of_gt hn')
      · apply Int.le_ediv_of_mul_le hk
        rw [← Int.mul_ediv_mul_of_pos_left m n hk, Int.mul_comm m k, Int.mul_comm (_ / _) k]
        apply Int.mul_ediv_le_mul_ediv_assoc
        · exact Int.le_of_lt hk
        · exact Int.le_of_lt <| Int.mul_pos hn' hk
  · rcases Int.lt_trichotomy 0 k with hk | rfl | hk
    · exact this hk
    · simp
    · rw [← Int.neg_neg (m / n / k), ← Int.ediv_neg, this (Int.neg_pos_of_neg hk), ← Int.ediv_neg,
        Int.mul_neg, Int.neg_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15a06da89c4c393594ba208842a73db450b91144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
