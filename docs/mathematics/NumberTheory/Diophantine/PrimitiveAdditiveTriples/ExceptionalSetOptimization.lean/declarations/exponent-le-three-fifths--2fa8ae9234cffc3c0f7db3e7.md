# exponent_le_three_fifths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:facccd64-9e0f-93fd-eaa4-b4ac1793dcfd",
  "kind": "theorem",
  "lexical_name": "exponent_le_three_fifths",
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
  "slug": "exponent-le-three-fifths--2fa8ae9234cffc3c0f7db3e7",
  "source": {
    "blob": "dd349bd05ddeeed7862c17c06c82c3b51c385809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa8ae9234cffc3c0f7db3e7d12cbdcc9e6090d208cb60e52452f5caec7ccabd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:facccd64-9e0f-93fd-eaa4-b4ac1793dcfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponent_le_three_fifths (x : Data) (h : Feasible x) :
    x.exponent ≤ (3 : ℝ) / 5 := by
  have ha0 : 0 ≤ x.a_part 0 := h.nonneg_a 0
  have ha1 : 0 ≤ x.a_part 1 := h.nonneg_a 1
  have ha2 : 0 ≤ x.a_part 2 := h.nonneg_a 2
  have ha3 : 0 ≤ x.a_part 3 := h.nonneg_a 3
  have ha4 : 0 ≤ x.a_part 4 := h.nonneg_a 4
  have ha5 : 0 ≤ x.a_part 5 := h.nonneg_a 5
  have hb0 : 0 ≤ x.b_part 0 := h.nonneg_b 0
  have hb1 : 0 ≤ x.b_part 1 := h.nonneg_b 1
  have hb2 : 0 ≤ x.b_part 2 := h.nonneg_b 2
  have hb3 : 0 ≤ x.b_part 3 := h.nonneg_b 3
  have hb4 : 0 ≤ x.b_part 4 := h.nonneg_b 4
  have hb5 : 0 ≤ x.b_part 5 := h.nonneg_b 5
  have hc0 : 0 ≤ x.c_part 0 := h.nonneg_c 0
  have hc1 : 0 ≤ x.c_part 1 := h.nonneg_c 1
  have hc2 : 0 ≤ x.c_part 2 := h.nonneg_c 2
  have hc3 : 0 ≤ x.c_part 3 := h.nonneg_c 3
  have hc4 : 0 ≤ x.c_part 4 := h.nonneg_c 4
  have hc5 : 0 ≤ x.c_part 5 := h.nonneg_c 5
  have h_a_total := h.nonneg_a_total
  have h_b_total := h.nonneg_b_total
  have h_c_total := h.nonneg_c_total
  have h_exponent := h.nonneg_exponent
  have h61 := h.h61
  have h62_a := h.h62_a
  have h62_b := h.h62_b
  have h62_c := h.h62_c
  have h63_a := h.h63_a
  have h63_b := h.h63_b
  have h63_c := h.h63_c
  have h64 := h.h64
  have h65 := h.h65
  have h66_a := h.h66_a
  have h66_b := h.h66_b
  have h66_c := h.h66_c
  have h67_ab := h.h67_ab
  have h67_bc := h.h67_bc
  have h67_ca := h.h67_ca
  have h68_a := h.h68_a
  have h68_b := h.h68_b
  have h68_c := h.h68_c
  have h69_a := h.h69_a
  have h69_b := h.h69_b
  have h69_c := h.h69_c
  have h610 := h.h610
  simp only [Data.p, Data.total] at h61 h65 h66_a h66_b h66_c h67_ab h67_bc h67_ca h68_a h68_b h68_c h69_a h69_b h69_c h610
  have h64ab : x.exponent ≤ x.a_total + x.b_total :=
    (le_min_iff.mp h64).1
  have h64ac : x.exponent ≤ x.a_total + x.c_total :=
    (le_min_iff.mp (le_min_iff.mp h64).2).1
  have h64bc : x.exponent ≤ x.b_total + x.c_total :=
    (le_min_iff.mp (le_min_iff.mp h64).2).2
  have h_a0_env := Data.even_part_le_envelope x.a_part
  have h_a1_env := Data.third_part_le_envelope x.a_part
  have h_a2_env := Data.fifth_part_le_envelope x.a_part
  have h_b0_env := Data.even_part_le_envelope x.b_part
  have h_b1_env := Data.third_part_le_envelope x.b_part
  have h_b2_env := Data.fifth_part_le_envelope x.b_part
  have h_c0_env := Data.even_part_le_envelope x.c_part
  have h_c1_env := Data.third_part_le_envelope x.c_part
  have h_c2_env := Data.fifth_part_le_envelope x.c_part
  rcases min_le_iff.mp h66_a with h66_a | h66_a
  · rcases min_le_iff.mp h69_a with h69_a | h69_a
    · linarith
    · rcases min_le_iff.mp h66_b with h66_b | h66_b
      · rcases min_le_iff.mp h66_c with h66_c | h66_c
        · rcases min_le_iff.mp h69_b with h69_b | h69_b
          · linarith
          · linarith
        · rcases min_le_iff.mp h65 with h65 | h65
          · rcases min_le_iff.mp h67_ab with h67_ab | h67_ab
            · linarith
            · linarith
          · rcases min_le_iff.mp h67_ab with h67_ab | h67_ab
            · linarith
            · linarith
      · rcases min_le_iff.mp h67_ca with h67_ca | h67_ca
        · rcases min_le_iff.mp h65 with h65 | h65
          · linarith
          · linarith
        · rcases min_le_iff.mp h69_b with h69_b | h69_b
          · rcases min_le_iff.mp h68_b with h68_b | h68_b
            · linarith
            · rcases min_le_iff.mp h65 with h65 | h65
              · linarith
              · linarith
          · rcases min_le_iff.mp h68_c with h68_c | h68_c
            · rcases min_le_iff.mp h66_c with h66_c | h66_c
              · linarith
              · linarith
            · rcases min_le_iff.mp h65 with h65 | h65
              · linarith
              · linarith
  · rcases min_le_iff.mp h65 with h65 | h65
    · rcases min_le_iff.mp h66_c with h66_c | h66_c
      · rcases min_le_iff.mp h67_bc with h67_bc | h67_bc
        · linarith
        · linarith
      · rcases min_le_iff.mp h66_b with h66_b | h66_b
        · linarith
        · rcases min_le_iff.mp h67_ab with h67_ab | h67_ab
          · linarith
          · rcases min_le_iff.mp h67_bc with h67_bc | h67_bc
            · linarith
            · rcases min_le_iff.mp h68_c with h68_c | h68_c
              · rcases min_le_iff.mp h67_ca with h67_ca | h67_ca
                · linarith
                · rcases min_le_iff.mp h68_b with h68_b | h68_b
                  · rcases min_le_iff.mp h68_a with h68_a | h68_a
                    · linarith
                    · linarith
                  · linarith
              · linarith
    · rcases min_le_iff.mp h67_bc with h67_bc | h67_bc
      · rcases min_le_iff.mp h68_a with h68_a | h68_a
        · linarith
        · linarith
      · rcases min_le_iff.mp h69_a with h69_a | h69_a
        · rcases min_le_iff.mp h68_a with h68_a | h68_a
          · linarith
          · linarith
        · rcases min_le_iff.mp h68_c with h68_c | h68_c
          · rcases min_le_iff.mp h68_b with h68_b | h68_b
            · rcases min_le_iff.mp h66_c with h66_c | h66_c
              · rcases min_le_iff.mp h66_b with h66_b | h66_b
                · linarith
                · linarith
              · rcases min_le_iff.mp h66_b with h66_b | h66_b
                · linarith
                · linarith
            · linarith
          · linarith

end ExceptionalSetOptimization

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd349bd05ddeeed7862c17c06c82c3b51c385809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
