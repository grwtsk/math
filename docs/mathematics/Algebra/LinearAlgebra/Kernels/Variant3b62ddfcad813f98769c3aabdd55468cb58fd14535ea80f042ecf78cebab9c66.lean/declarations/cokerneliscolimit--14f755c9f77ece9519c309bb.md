# cokernelIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4349c1f9264cb7b2326f1a303700bc3cced3487430e35bc3ab7c604ede37025c",
  "kind": "def",
  "lexical_name": "cokernelIsColimit",
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
  "slug": "cokerneliscolimit--14f755c9f77ece9519c309bb",
  "source": {
    "blob": "ce37e4e27ae0c0ec7a1cf0b87c093ca1e18fc232",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14f755c9f77ece9519c309bba446ec200b4e6c4878de5e5312495d21d2d31125",
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

Occurrence: `declaration:4349c1f9264cb7b2326f1a303700bc3cced3487430e35bc3ab7c604ede37025c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cokernelIsColimit : IsColimit (cokernelCocone f) :=
  Cofork.IsColimit.mk _
    (fun s => ofHom <| (LinearMap.range f.hom).liftQ (Cofork.π s).hom <|
      LinearMap.range_le_ker_iff.2 <| ModuleCat.hom_ext_iff.mp <| CokernelCofork.condition s)
    (fun s => hom_ext <| (LinearMap.range f.hom).liftQ_mkQ (Cofork.π s).hom _) fun s m h => by
    -- Porting note (https://github.com/leanprover-community/mathlib4/pull/11036): broken dot notation
    haveI : Epi (ofHom (LinearMap.range f.hom).mkQ) :=
      (epi_iff_range_eq_top _).mpr (Submodule.range_mkQ _)
    -- Porting note (https://github.com/leanprover-community/mathlib4/pull/11036): broken dot notation
    apply (cancel_epi (ofHom (LinearMap.range f.hom).mkQ)).1
    exact h

end

/-- The category of R-modules has kernels, given by the inclusion of the kernel submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce37e4e27ae0c0ec7a1cf0b87c093ca1e18fc232` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
