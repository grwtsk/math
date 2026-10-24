# imo1998_q2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19953105781f75b7680b57c100de6e8934a59d32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:387d3341-82cb-5306-91e0-37ac746b9594",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f6d89ad-486f-5845-1b1e-dc00635e3eff",
  "kind": "theorem",
  "lexical_name": "imo1998_q2",
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
  "slug": "imo1998-q2--cf26df6fcaf64faaafbe5e4b",
  "source": {
    "blob": "19953105781f75b7680b57c100de6e8934a59d32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf26df6fcaf64faaafbe5e4b59a2b5137be4977f4053af161b11b369bdcc48de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f6d89ad-486f-5845-1b1e-dc00635e3eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imo1998_q2 [Fintype J] [Fintype C] (a b k : ℕ) (hC : Fintype.card C = a)
    (hJ : Fintype.card J = b) (ha : 0 < a) (hb : Odd b)
    (hk : ∀ p : JudgePair J, p.Distinct → (agreedContestants r p).card ≤ k) :
    (b - 1 : ℚ) / (2 * b) ≤ k / a := by
  rw [clear_denominators ha hb.pos]
  obtain ⟨z, hz⟩ := hb; rw [hz] at hJ; rw [hz]
  have h := le_trans (A_card_lower_bound r hJ) (A_card_upper_bound r hk)
  rw [hC, hJ] at h
  -- We are now essentially done; we just need to bash `h` into exactly the right shape.
  have hl : k * ((2 * z + 1) * (2 * z + 1) - (2 * z + 1)) = k * (2 * (2 * z + 1)) * z := by
    have : 0 < 2 * z + 1 := by aesop
    simp only [mul_comm, add_mul, one_mul, nonpos_iff_eq_zero, add_tsub_cancel_right]; ring
  have hr : 2 * z * z * a = 2 * z * a * z := by ring
  rw [hl, hr] at h
  rcases z with - | z
  · simp
  · exact le_of_mul_le_mul_right h z.succ_pos
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19953105781f75b7680b57c100de6e8934a59d32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
