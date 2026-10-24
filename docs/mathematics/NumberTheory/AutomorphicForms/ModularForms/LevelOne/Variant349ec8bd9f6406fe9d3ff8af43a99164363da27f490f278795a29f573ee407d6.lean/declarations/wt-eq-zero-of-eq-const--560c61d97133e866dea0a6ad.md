# wt_eq_zero_of_eq_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bff9475c-0b0f-eb5d-a695-68154e040cb4",
  "kind": "lemma",
  "lexical_name": "wt_eq_zero_of_eq_const",
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
  "slug": "wt-eq-zero-of-eq-const--560c61d97133e866dea0a6ad",
  "source": {
    "blob": "606cf3cd5b75b04d9d44ae4b783478469e04161f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:560c61d97133e866dea0a6ad6a88a82af3fb60b6cabf6e7b6862b4bc0cd6cec0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bff9475c-0b0f-eb5d-a695-68154e040cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma wt_eq_zero_of_eq_const {f : F} {c : ℂ} (hf : ⇑f = Function.const _ c) :
    k = 0 ∨ c = 0 := by
  have hI := slash_action_eqn'' f (mem_Gamma_one S) I
  have h2I2 := slash_action_eqn'' f (mem_Gamma_one S) ⟨2 * Complex.I, by norm_num⟩
  simp_rw [sl_moeb, hf, Function.const, denom_S, coe_mk_subtype] at hI h2I2
  nth_rw 1 [h2I2] at hI
  simp only [mul_zpow, coe_I, mul_eq_mul_right_iff, mul_left_eq_self₀] at hI
  refine hI.imp_left (Or.casesOn · (fun H ↦ ?_) (False.elim ∘ zpow_ne_zero k I_ne_zero))
  rwa [← ofReal_ofNat, ← ofReal_zpow, ← ofReal_one, ofReal_inj,
    zpow_eq_one_iff_right₀ (by norm_num) (by norm_num)] at H

end SlashInvariantForm

namespace ModularFormClass

variable [ModularFormClass F Γ(1) k]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `606cf3cd5b75b04d9d44ae4b783478469e04161f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
