# volume_ball_of_dim_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d288c3ea7cf52ff89bcf39da627aee1ff7618595",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b6384a4-df7c-a313-c1c1-bcb240729690",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:623aa46c-42f5-d94c-6169-1b63419aafb1",
  "kind": "lemma",
  "lexical_name": "volume_ball_of_dim_odd",
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
  "slug": "volume-ball-of-dim-odd--69d11bd7afa531c1089c6da9",
  "source": {
    "blob": "d288c3ea7cf52ff89bcf39da627aee1ff7618595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 387,
    "path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d11bd7afa531c1089c6da9215d1a2f6b68e7308713ea4e38e628333b7e397c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623aa46c-42f5-d94c-6169-1b63419aafb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma volume_ball_of_dim_odd {k : ℕ} (hk : finrank ℝ E = 2 * k + 1) (x : E) (r : ℝ) :
    volume (ball x r) =
      .ofReal r ^ finrank ℝ E * .ofReal (π ^ k * 2 ^ (k + 1) / (finrank ℝ E : ℕ)‼) := by
  have : Nontrivial E := Module.nontrivial_of_finrank_pos (R := ℝ) (hk ▸ (2 * k).succ_pos)
  rw [volume_ball, hk, pow_succ (√π), pow_mul, sq_sqrt pi_nonneg, mul_div_assoc, mul_div_assoc]
  congr 3
  simp? [add_div, add_right_comm, -one_div, Gamma_nat_add_one_add_half] says
    simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_one, add_div, ne_eq,
      OfNat.ofNat_ne_zero, not_false_eq_true, mul_div_cancel_left₀, add_right_comm,
      Gamma_nat_add_one_add_half]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d288c3ea7cf52ff89bcf39da627aee1ff7618595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
