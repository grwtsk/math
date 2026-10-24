# toConstProdLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcbb4a09cefd3f1889ab9ecda5378c2d9aee5f9db3994f89a114230743f25604",
  "kind": "def",
  "lexical_name": "toConstProdLinearMap",
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
  "slug": "toconstprodlinearmap--e64195d3fec2050d74a2e80e",
  "source": {
    "blob": "b8eb55b475fd0610e2d892d9bb6a30472a3a1f85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 791,
    "line": 767,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e64195d3fec2050d74a2e80e0adff87395ee3aeb041f225f294a0ce3dbc88af0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcbb4a09cefd3f1889ab9ecda5378c2d9aee5f9db3994f89a114230743f25604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–791.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toConstProdLinearMap : (V1 →ᵃ[k] V2) ≃ₗ[R] V2 × (V1 →ₗ[k] V2) where
  toFun f := ⟨f 0, f.linear⟩
  invFun p := p.2.toAffineMap + const k V1 p.1
  left_inv f := by
    ext
    rw [f.decomp]
    simp [const_apply _ _]  -- porting note: `simp` needs `_`s to use this lemma
  right_inv := by
    rintro ⟨v, f⟩
    ext <;> simp [const_apply _ _, const_linear _ _]  -- porting note: `simp` needs `_`s
  map_add' := by simp
  map_smul' := by simp
#align affine_map.to_const_prod_linear_map AffineMap.toConstProdLinearMap

end Module

end Ring

section CommRing

variable [CommRing k] [AddCommGroup V1] [AffineSpace V1 P1] [AddCommGroup V2]

variable [Module k V1] [Module k V2]

/-- `homothety c r` is the homothety (also known as dilation) about `c` with scale factor `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8eb55b475fd0610e2d892d9bb6a30472a3a1f85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
