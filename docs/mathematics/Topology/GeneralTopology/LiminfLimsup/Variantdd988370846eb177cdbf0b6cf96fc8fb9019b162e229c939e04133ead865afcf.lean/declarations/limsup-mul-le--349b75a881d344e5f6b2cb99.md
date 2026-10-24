# limsup_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c08dca0a-6635-67a6-61b6-33f539097bcc",
  "kind": "lemma",
  "lexical_name": "limsup_mul_le",
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
  "slug": "limsup-mul-le--349b75a881d344e5f6b2cb99",
  "source": {
    "blob": "4fc8c6425179579e5b0134d0e211cbaeb3fe4978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 498,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:349b75a881d344e5f6b2cb99dd124c867700c2e65e116e2b0cabd4c299ae66c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c08dca0a-6635-67a6-61b6-33f539097bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limsup_mul_le (h₁ : ∃ᶠ x in f, 0 ≤ u x) (h₂ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f u)
    (h₃ : 0 ≤ᶠ[f] v) (h₄ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f v) :
    limsup (u * v) f ≤ (limsup u f) * limsup v f := by
  have h := IsCoboundedUnder.of_frequently_ge (a := 0)
    <| (h₁.and_eventually h₃).mono fun x ⟨ux_0, vx_0⟩ ↦ mul_nonneg ux_0 vx_0
  have h' := isBoundedUnder_le_mul_of_nonneg h₁ h₂ h₃ h₄
  refine le_mul_of_forall_lt₀ fun a a_u b b_v ↦ (limsup_le_iff h h').2 fun c c_ab ↦ ?_
  filter_upwards [eventually_lt_of_limsup_lt a_u, eventually_lt_of_limsup_lt b_v, h₃]
    with x x_a x_b v_0
  apply lt_of_le_of_lt _ c_ab
  rcases lt_or_ge (u x) 0 with u_0 | u_0
  · apply (mul_nonpos_of_nonpos_of_nonneg u_0.le v_0).trans
    exact mul_nonneg ((le_limsup_of_frequently_le h₁ h₂).trans a_u.le) (v_0.trans x_b.le)
  · exact mul_le_mul x_a.le x_b.le v_0 (u_0.trans x_a.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc8c6425179579e5b0134d0e211cbaeb3fe4978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
