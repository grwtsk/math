# kernelIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:503cfba59ca83038f4951a6eca0e7d5f791b0f65a97cf69d1cc7aa847fba9ebf",
  "kind": "def",
  "lexical_name": "kernelIsLimit",
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
  "slug": "kernelislimit--9ebc4a391479685134cd0f0d",
  "source": {
    "blob": "ce37e4e27ae0c0ec7a1cf0b87c093ca1e18fc232",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ebc4a391479685134cd0f0df08dbbc6e2bb7e8a16c2b54f19a0d08d88e78976",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:503cfba59ca83038f4951a6eca0e7d5f791b0f65a97cf69d1cc7aa847fba9ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kernelIsLimit : IsLimit (kernelCone f) :=
  Fork.IsLimit.mk _
    (fun s => ofHom <|
    -- Porting note (https://github.com/leanprover-community/mathlib4/pull/11036): broken dot notation on LinearMap.ker
      LinearMap.codRestrict (LinearMap.ker f.hom) (Fork.ι s).hom fun c =>
        LinearMap.mem_ker.2 <| by
          -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
          erw [← ConcreteCategory.comp_apply]
          rw [Fork.condition, HasZeroMorphisms.comp_zero (Fork.ι s) N]
          rfl)
    (fun _ => hom_ext <| LinearMap.subtype_comp_codRestrict _ _ _) fun s m h =>
      hom_ext <| LinearMap.ext fun x => Subtype.ext_iff_val.2 (by simp [← h]; rfl)

/-- The cokernel cocone induced by the projection onto the quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce37e4e27ae0c0ec7a1cf0b87c093ca1e18fc232` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
