# _root_.GRWTSK.Algebra.LinearAlgebra.Derivation.Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.LinearMap.compDer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86947a3d2e40f166d807f703292eb76b4bc38d315f52fd70e8821e51f8666f91",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Derivation.Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.LinearMap.compDer",
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
  "slug": "root-grwtsk-algebra-linearalgebra-derivation-variant9e1fdf926e712333bae4--63080e21a179f83bb214e2e7",
  "source": {
    "blob": "7aa2a5e2eac071ca595089040bc651c6333c7c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63080e21a179f83bb214e2e78afe8642eaa0663a97ad0ab0b3533aab49715f73",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86947a3d2e40f166d807f703292eb76b4bc38d315f52fd70e8821e51f8666f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.LinearAlgebra.Derivation.Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.LinearMap.compDer : Derivation R A M →ₗ[R] Derivation R A N where
  toFun D :=
    { toLinearMap := (f : M →ₗ[R] N).comp (D : A →ₗ[R] M)
      map_one_eq_zero' := by simp only [LinearMap.comp_apply, coeFn_coe, map_one_eq_zero, map_zero]
      leibniz' := fun a b => by
        simp only [coeFn_coe, LinearMap.comp_apply, LinearMap.map_add, leibniz,
          LinearMap.coe_restrictScalars, LinearMap.map_smul] }
  map_add' D₁ D₂ := by ext; exact LinearMap.map_add _ _ _
  map_smul' r D := by dsimp; ext; exact LinearMap.map_smul (f : M →ₗ[R] N) _ _
#align linear_map.comp_der LinearMap.compDer

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aa2a5e2eac071ca595089040bc651c6333c7c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
