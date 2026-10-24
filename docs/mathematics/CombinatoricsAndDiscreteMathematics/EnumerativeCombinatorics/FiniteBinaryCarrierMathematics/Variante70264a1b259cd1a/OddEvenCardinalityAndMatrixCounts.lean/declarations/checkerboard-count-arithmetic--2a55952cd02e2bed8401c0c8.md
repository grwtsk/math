# checkerboard_count_arithmetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88d72d88-c3f7-2b6c-65be-72c5b9f2267b",
  "kind": "theorem",
  "lexical_name": "checkerboard_count_arithmetic",
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
  "slug": "checkerboard-count-arithmetic--2a55952cd02e2bed8401c0c8",
  "source": {
    "blob": "86ff9af2ed87f2a3601cad0d133b677518a01fb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a55952cd02e2bed8401c0c8177173bc8e58c19c986d8af7c62f6cf671a8650c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d72d88-c3f7-2b6c-65be-72c5b9f2267b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem checkerboard_count_arithmetic (m n : Nat) :
    (m / 2) * (n - n / 2) + (m - m / 2) * (n / 2) = m * n / 2 := by
  have hee (a b : Nat) :
      a * b + a * b = (2 * a * (2 * b)) / 2 := by
    rw [show 2 * a * (2 * b) = 2 * (2 * a * b) by ring]
    rw [Nat.mul_div_right _ (by decide : 0 < 2)]
    ring
  have heo (a b : Nat) :
      a * (b + 1) + a * b = (2 * a * (2 * b + 1)) / 2 := by
    rw [show 2 * a * (2 * b + 1) = 2 * (a * (2 * b + 1)) by ring]
    rw [Nat.mul_div_right _ (by decide : 0 < 2)]
    ring
  have hoe (a b : Nat) :
      a * b + (a + 1) * b = ((2 * a + 1) * (2 * b)) / 2 := by
    rw [show (2 * a + 1) * (2 * b) = 2 * ((2 * a + 1) * b) by ring]
    rw [Nat.mul_div_right _ (by decide : 0 < 2)]
    ring
  have hoo (a b : Nat) :
      a * (b + 1) + (a + 1) * b =
        ((2 * a + 1) * (2 * b + 1)) / 2 := by
    have h :
        ((2 * a + 1) * (2 * b + 1)) / 2 =
          2 * a * b + a + b := by
      rw [show (2 * a + 1) * (2 * b + 1) =
        2 * (2 * a * b + a + b) + 1 by ring]
      rw [show (2 * (2 * a * b + a + b) + 1) / 2 =
        2 * a * b + a + b by omega]
    rw [h]
    ring
  have hm : m = 2 * (m / 2) + m % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod m 2).symm
  have hn : n = 2 * (n / 2) + n % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod n 2).symm
  rcases Nat.mod_two_eq_zero_or_one m with hm0 | hm1 <;>
  rcases Nat.mod_two_eq_zero_or_one n with hn0 | hn1
  · have hm_eq : m = 2 * (m / 2) := by omega
    have hn_eq : n = 2 * (n / 2) := by omega
    rw [hm_eq, hn_eq]
    rw [show 2 * (m / 2) / 2 = m / 2 by omega]
    rw [show 2 * (n / 2) / 2 = n / 2 by omega]
    rw [show 2 * (n / 2) - n / 2 = n / 2 by omega]
    rw [show 2 * (m / 2) - m / 2 = m / 2 by omega]
    exact hee (m / 2) (n / 2)
  · have hm_eq : m = 2 * (m / 2) := by omega
    have hn_eq : n = 2 * (n / 2) + 1 := by omega
    rw [hm_eq, hn_eq]
    rw [show 2 * (m / 2) / 2 = m / 2 by omega]
    rw [show (2 * (n / 2) + 1) / 2 = n / 2 by omega]
    rw [show 2 * (n / 2) + 1 - n / 2 = n / 2 + 1 by omega]
    rw [show 2 * (m / 2) - m / 2 = m / 2 by omega]
    exact heo (m / 2) (n / 2)
  · have hm_eq : m = 2 * (m / 2) + 1 := by omega
    have hn_eq : n = 2 * (n / 2) := by omega
    rw [hm_eq, hn_eq]
    rw [show (2 * (m / 2) + 1) / 2 = m / 2 by omega]
    rw [show 2 * (n / 2) / 2 = n / 2 by omega]
    rw [show 2 * (n / 2) - n / 2 = n / 2 by omega]
    rw [show 2 * (m / 2) + 1 - m / 2 = m / 2 + 1 by omega]
    exact hoe (m / 2) (n / 2)
  · have hm_eq : m = 2 * (m / 2) + 1 := by omega
    have hn_eq : n = 2 * (n / 2) + 1 := by omega
    rw [hm_eq, hn_eq]
    rw [show (2 * (m / 2) + 1) / 2 = m / 2 by omega]
    rw [show (2 * (n / 2) + 1) / 2 = n / 2 by omega]
    rw [show 2 * (n / 2) + 1 - n / 2 = n / 2 + 1 by omega]
    rw [show 2 * (m / 2) + 1 - m / 2 = m / 2 + 1 by omega]
    exact hoo (m / 2) (n / 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86ff9af2ed87f2a3601cad0d133b677518a01fb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
