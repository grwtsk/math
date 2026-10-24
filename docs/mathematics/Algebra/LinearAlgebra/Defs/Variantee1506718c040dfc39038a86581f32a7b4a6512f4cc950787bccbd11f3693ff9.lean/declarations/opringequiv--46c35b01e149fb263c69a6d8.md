# opRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a6f034c6335e9cb1b5c271c4cdd8c2be012ec3c097d385b4ef9c21eca99b600",
  "kind": "def",
  "lexical_name": "opRingEquiv",
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
  "slug": "opringequiv--46c35b01e149fb263c69a6d8",
  "source": {
    "blob": "fca5a6e3447253dcd0c6da0733a9691f235cb095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 749,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantee1506718c040dfc39038a86581f32a7b4a6512f4cc950787bccbd11f3693ff9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46c35b01e149fb263c69a6d8874005544c989e446e1e02027c1c7ae44e8a2b53",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantee1506718c040dfc39038a86581f32a7b4a6512f4cc950787bccbd11f3693ff9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a6f034c6335e9cb1b5c271c4cdd8c2be012ec3c097d385b4ef9c21eca99b600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def opRingEquiv [Monoid G] :
    (MonoidAlgebra k G)ᵐᵒᵖ ≃+* MonoidAlgebra kᵐᵒᵖ Gᵐᵒᵖ :=
  { opAddEquiv.symm.trans <|
      (Finsupp.mapRange.addEquiv (opAddEquiv : k ≃+ kᵐᵒᵖ)).trans <| Finsupp.domCongr opEquiv with
    map_mul' := by
      -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
      rw [Equiv.toFun_as_coe, AddEquiv.toEquiv_eq_coe]; erw [AddEquiv.coe_toEquiv]
      rw [← AddEquiv.coe_toAddMonoidHom]
      refine Iff.mpr (AddMonoidHom.map_mul_iff (R := (MonoidAlgebra k G)ᵐᵒᵖ)
        (S := MonoidAlgebra kᵐᵒᵖ Gᵐᵒᵖ) _) ?_
      ext
      -- Porting note: `reducible` cannot be `local` so proof gets long.
      simp only [AddMonoidHom.coe_comp, AddEquiv.coe_toAddMonoidHom, opAddEquiv_apply,
        Function.comp_apply, singleAddHom_apply, AddMonoidHom.compr₂_apply, AddMonoidHom.coe_mul,
        AddMonoidHom.coe_mulLeft, AddMonoidHom.compl₂_apply]
      -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
      erw [AddEquiv.trans_apply, AddEquiv.trans_apply, AddEquiv.trans_apply, AddEquiv.trans_apply,
        AddEquiv.trans_apply, AddEquiv.trans_apply, MulOpposite.opAddEquiv_symm_apply]
      rw [MulOpposite.unop_mul (α := MonoidAlgebra k G), unop_op, unop_op, single_mul_single]
      simp }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantee1506718c040dfc39038a86581f32a7b4a6512f4cc950787bccbd11f3693ff9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantee1506718c040dfc39038a86581f32a7b4a6512f4cc950787bccbd11f3693ff9.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca5a6e3447253dcd0c6da0733a9691f235cb095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
