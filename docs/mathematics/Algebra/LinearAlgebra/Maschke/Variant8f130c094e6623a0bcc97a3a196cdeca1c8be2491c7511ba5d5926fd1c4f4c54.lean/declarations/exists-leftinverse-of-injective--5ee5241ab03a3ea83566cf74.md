# exists_leftInverse_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60e69b9c-672e-2881-0567-d7b649ab9f87",
  "kind": "theorem",
  "lexical_name": "exists_leftInverse_of_injective",
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
  "slug": "exists-leftinverse-of-injective--5ee5241ab03a3ea83566cf74",
  "source": {
    "blob": "af3d102b10f32271efe49becb6449938847be38e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee5241ab03a3ea83566cf7438d812dce885503cae2dc60b3b79267b9f896ea1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60e69b9c-672e-2881-0567-d7b649ab9f87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_leftInverse_of_injective
    (f : V →ₗ[MonoidAlgebra k G] W) (hf : LinearMap.ker f = ⊥) :
    ∃ g : W →ₗ[MonoidAlgebra k G] V, g.comp f = LinearMap.id := by
  let A := MonoidAlgebra k G
  letI : Module k W := .compHom W (algebraMap k A)
  letI : Module k V := .compHom V (algebraMap k A)
  have := IsScalarTower.of_compHom k A W
  have := IsScalarTower.of_compHom k A V
  obtain ⟨φ, hφ⟩ := (f.restrictScalars k).exists_leftInverse_of_injective <| by
    simp only [hf, Submodule.restrictScalars_bot, LinearMap.ker_restrictScalars]
  refine ⟨φ.equivariantProjection G, DFunLike.ext _ _ ?_⟩
  exact φ.equivariantProjection_condition G _ (.mk0 _ <| NeZero.ne _) <| DFunLike.congr_fun hφ

namespace Submodule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3d102b10f32271efe49becb6449938847be38e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
