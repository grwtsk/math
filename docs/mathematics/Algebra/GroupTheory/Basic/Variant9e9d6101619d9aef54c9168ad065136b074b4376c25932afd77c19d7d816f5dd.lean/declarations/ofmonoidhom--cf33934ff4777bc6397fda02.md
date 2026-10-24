# ofMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:384fe822451639a527bcad8f0d008f121cee592defcb07b75eec14368d6ed93f",
  "kind": "def",
  "lexical_name": "ofMonoidHom",
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
  "slug": "ofmonoidhom--cf33934ff4777bc6397fda02",
  "source": {
    "blob": "ef8f3f1e113c2c77806a0f8c6fbf77a61426df91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 115,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf33934ff4777bc6397fda020d2aff30eaa975bb77ba8605b640da5b63b2d404",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:384fe822451639a527bcad8f0d008f121cee592defcb07b75eec14368d6ed93f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofMonoidHom (f : E →* E') (comp_inl : f.comp S.inl = S'.inl)
    (rightHom_comp : S'.rightHom.comp f = S.rightHom) : S.Equiv S' where
  __ := f
  invFun e' :=
    let e := Function.surjInv S.rightHom_surjective (S'.rightHom e')
    e * S.inl (Function.invFun S'.inl ((f e)⁻¹ * e'))
  left_inv e := by
    simp only [OneHom.toFun_eq_coe, MonoidHom.toOneHom_coe, ← map_inv, ← map_mul]
    obtain ⟨n, hn⟩ :
        (Function.surjInv S.rightHom_surjective (S'.rightHom (f e)))⁻¹ * e ∈ S.inl.range := by
      rw [S.range_inl_eq_ker_rightHom, MonoidHom.mem_ker, map_mul, map_inv, ← MonoidHom.comp_apply,
        rightHom_comp]
      simpa only [Function.surjInv_eq] using inv_mul_cancel (S.rightHom e)
    rw [← eq_inv_mul_iff_mul_eq, ← hn, ← MonoidHom.comp_apply, comp_inl,
      Function.leftInverse_invFun S'.inl_injective]
  right_inv e' := by
    simp only [OneHom.toFun_eq_coe, MonoidHom.toOneHom_coe, map_mul]
    rw [← eq_inv_mul_iff_mul_eq, ← MonoidHom.comp_apply, comp_inl]
    apply Function.invFun_eq
    rw [← MonoidHom.mem_range, S'.range_inl_eq_ker_rightHom, MonoidHom.mem_ker, map_mul, map_inv,
      ← MonoidHom.comp_apply, rightHom_comp]
    simpa only [Function.surjInv_eq] using inv_mul_cancel (S'.rightHom e')
  inl_comm := congrArg DFunLike.coe comp_inl
  rightHom_comm := congrArg DFunLike.coe rightHom_comp

end Equiv

namespace Splitting

variable {S}
variable (s : S.Splitting)

/-- `G` acts on `N` by conjugation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef8f3f1e113c2c77806a0f8c6fbf77a61426df91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
