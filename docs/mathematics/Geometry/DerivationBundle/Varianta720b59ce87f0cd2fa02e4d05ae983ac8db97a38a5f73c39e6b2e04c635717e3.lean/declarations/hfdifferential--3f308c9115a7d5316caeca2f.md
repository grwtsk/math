# hfdifferential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08b8164655908e8645566efd727eae3759f5b46ecc1f1c9c97e63fa03f993396",
  "kind": "def",
  "lexical_name": "hfdifferential",
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
  "slug": "hfdifferential--3f308c9115a7d5316caeca2f",
  "source": {
    "blob": "6f9cd3ac0af40c9d788231ab3a486a658df88299",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 140,
    "path": "GRWTSK/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f308c9115a7d5316caeca2fa5498593a8b3b3263afb83c181b2f9be43545687",
  "verification": {
    "reference": "docs/verification/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08b8164655908e8645566efd727eae3759f5b46ecc1f1c9c97e63fa03f993396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hfdifferential {f : C^∞⟮I, M; I', M'⟯} {x : M} {y : M'} (h : f x = y) :
    PointDerivation I x →ₗ[𝕜] PointDerivation I' y where
  toFun v :=
    Derivation.mk'
      { toFun := fun g => v (g.comp f)
        map_add' := fun g g' => by rw [ContMDiffMap.add_comp, Derivation.map_add]
        map_smul' := fun k g => by
          dsimp; rw [ContMDiffMap.smul_comp, Derivation.map_smul, smul_eq_mul] }
      fun g g' => by
        dsimp
        rw [ContMDiffMap.mul_comp, Derivation.leibniz,
          PointedContMDiffMap.smul_def, ContMDiffMap.comp_apply,
          PointedContMDiffMap.smul_def, ContMDiffMap.comp_apply, h]
        norm_cast
  map_smul' _ _ := rfl
  map_add' _ _ := rfl

/-- The homogeneous differential as a linear map, denoted as `𝒅` within the `Manifold` namespace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f9cd3ac0af40c9d788231ab3a486a658df88299` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
