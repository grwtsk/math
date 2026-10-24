# exists_one_half_le_im_and_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6359817e-e164-3bb4-f2bb-81a685074a56",
  "kind": "lemma",
  "lexical_name": "exists_one_half_le_im_and_norm_le",
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
  "slug": "exists-one-half-le-im-and-norm-le--125c8ddce10303fc5998eab7",
  "source": {
    "blob": "abafa2680456df6ea78dc9a5ffeb88b3f78281a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:125c8ddce10303fc5998eab75fa615d3237db4426098cfa4873a6dd714db9fa2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6359817e-e164-3bb4-f2bb-81a685074a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_one_half_le_im_and_norm_le (hk : k ≤ 0) (f : F) (τ : ℍ) :
    ∃ ξ : ℍ, 1 / 2 ≤ ξ.im ∧ ‖f τ‖ ≤ ‖f ξ‖ :=
  let ⟨γ, hγ, hdenom⟩ := exists_one_half_le_im_smul_and_norm_denom_le τ
  ⟨γ • τ, hγ, by
    have : SlashInvariantFormClass F Γ(1) k := Gamma_one_coe_eq_SL ▸ ‹_›
    simpa only [slash_action_eqn_SL'' _ (mem_Gamma_one γ), norm_mul, norm_zpow]
      using le_mul_of_one_le_left (norm_nonneg _) <|
        one_le_zpow_of_nonpos₀ (norm_pos_iff.2 (denom_ne_zero _ _)) hdenom hk⟩

variable (k) in
/-- If a constant function is modular of weight `k`, then either `k = 0`, or the constant is `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abafa2680456df6ea78dc9a5ffeb88b3f78281a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
