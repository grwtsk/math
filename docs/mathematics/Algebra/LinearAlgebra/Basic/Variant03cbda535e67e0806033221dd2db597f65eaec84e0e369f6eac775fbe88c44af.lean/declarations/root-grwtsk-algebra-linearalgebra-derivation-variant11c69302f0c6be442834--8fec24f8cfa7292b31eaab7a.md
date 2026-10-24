# _root_.GRWTSK.Algebra.LinearAlgebra.Derivation.Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.LinearMap.compDer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5fc67fcfe69ad4e77688f3bdfdb79217a80327ce41ec607a03e28eb5b954e98",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Derivation.Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.LinearMap.compDer",
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
  "slug": "root-grwtsk-algebra-linearalgebra-derivation-variant11c69302f0c6be442834--8fec24f8cfa7292b31eaab7a",
  "source": {
    "blob": "4cef11039c6087e1ae3c40142ce076d17870708c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fec24f8cfa7292b31eaab7aeeab1f972cc7b69640535667e230fb26c2a0a82f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5fc67fcfe69ad4e77688f3bdfdb79217a80327ce41ec607a03e28eb5b954e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.LinearAlgebra.Derivation.Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.LinearMap.compDer : Derivation R A M →ₗ[R] Derivation R A N where
  toFun D :=
    { toLinearMap := (f : M →ₗ[R] N).comp (D : A →ₗ[R] M)
      map_one_eq_zero' := by simp only [LinearMap.comp_apply, coeFn_coe, map_one_eq_zero, map_zero]
      leibniz' := fun a b => by
        simp only [coeFn_coe, LinearMap.comp_apply, LinearMap.map_add, leibniz,
          LinearMap.coe_restrictScalars, LinearMap.map_smul] }
  map_add' D₁ D₂ := by ext; exact LinearMap.map_add _ _ _
  map_smul' r D := by dsimp; ext; exact LinearMap.map_smul (f : M →ₗ[R] N) _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cef11039c6087e1ae3c40142ce076d17870708c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
