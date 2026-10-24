# normalMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65047e5c8485e0237568eda3052a7322c3272b4035eb74c57d86b0bb77131581",
  "kind": "def",
  "lexical_name": "normalMono",
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
  "slug": "normalmono--daa044f8ab8970ac44a731ef",
  "source": {
    "blob": "68b23ad70d5988b9f83cb337506ff508a4b226b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daa044f8ab8970ac44a731ef5ce15abd331f04885a686cc96a9fcdd0da6c5b20",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65047e5c8485e0237568eda3052a7322c3272b4035eb74c57d86b0bb77131581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def normalMono (hf : Mono f) : NormalMono f where
  Z := of R (N ⧸ LinearMap.range f.hom)
  g := ofHom (LinearMap.range f.hom).mkQ
  w := hom_ext <| LinearMap.range_mkQ_comp _
  isLimit :=
    /- The following [invalid Lean code](https://github.com/leanprover-community/lean/issues/341)
        might help you understand what's going on here:
        ```
        calc
        M   ≃ₗ[R] f.ker.quotient  : (Submodule.quotEquivOfEqBot _ (ker_eq_bot_of_mono _)).symm
        ... ≃ₗ[R] f.range         : LinearMap.quotKerEquivRange f
        ... ≃ₗ[R] r.range.mkQ.ker : LinearEquiv.ofEq _ _ (Submodule.ker_mkQ _).symm
        ```
      -/
        IsKernel.isoKernel _ _ (kernelIsLimit _)
          (LinearEquiv.toModuleIso
            ((Submodule.quotEquivOfEqBot _ (ker_eq_bot_of_mono _)).symm ≪≫ₗ
              (LinearMap.quotKerEquivRange f.hom ≪≫ₗ
              LinearEquiv.ofEq _ _ (Submodule.ker_mkQ _).symm))) <| by ext; rfl

/-- In the category of modules, every epimorphism is normal. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b23ad70d5988b9f83cb337506ff508a4b226b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
