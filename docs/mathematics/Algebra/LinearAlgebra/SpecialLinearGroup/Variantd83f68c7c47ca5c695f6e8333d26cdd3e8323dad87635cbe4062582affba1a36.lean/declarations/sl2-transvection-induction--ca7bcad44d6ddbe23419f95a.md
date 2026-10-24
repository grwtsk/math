# SL2.transvection_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f23281e3-c1a8-c98b-04e2-fac4d5ae9407",
  "kind": "theorem",
  "lexical_name": "SL2.transvection_induction",
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
  "slug": "sl2-transvection-induction--ca7bcad44d6ddbe23419f95a",
  "source": {
    "blob": "2336b1615bef41d2a93efe72389be2b1f6172533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 811,
    "line": 796,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca7bcad44d6ddbe23419f95aee196f70c4612dc6fa993ae6fa7f8354be90607b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f23281e3-c1a8-c98b-04e2-fac4d5ae9407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 796–811.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SL2.transvection_induction (P : SL(2, F) → Prop)
    (htransvec : ∀ (i j : Fin 2) (h : i ≠ j) c, P (SpecialLinearGroup.transvection h c))
    (hmul : ∀ A B, P A → P B → P (A * B)) (A : SL(2, F)) : P A := by
  refine diagonal_transvection_induction' P _ (fun i j hij c hc ↦ ?_) htransvec hmul
  fin_cases i
  · obtain rfl : j = 1 := by fin_cases j <;> tauto
    change P (diag2 c hc)
    rw [diag2_decompose c hc]
    refine hmul _ _ (hmul _ _ (hmul _ _ (hmul _ _ (hmul _ _ ?_ ?_) ?_) ?_) ?_) ?_
    all_goals exact htransvec _ _ _ _
  · obtain rfl : j = 0 := by fin_cases j <;> tauto
    rw [show diag2n hij c hc = diag2 c⁻¹ (inv_ne_zero hc) by
      ext; simp [diag2n_coe, diagonal_apply]; grind, diag2_decompose c⁻¹ (inv_ne_zero hc)]
    refine hmul _ _ (hmul _ _ (hmul _ _ (hmul _ _ (hmul _ _ ?_ ?_) ?_) ?_) ?_) ?_
    all_goals exact htransvec _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean#L796).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2336b1615bef41d2a93efe72389be2b1f6172533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
