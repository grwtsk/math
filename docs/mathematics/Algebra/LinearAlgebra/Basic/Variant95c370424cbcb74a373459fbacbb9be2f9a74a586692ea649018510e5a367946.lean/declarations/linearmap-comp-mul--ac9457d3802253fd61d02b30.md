# linearMap_comp_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0ba656f-0567-8bf2-7c94-74ee66ad579e",
  "kind": "theorem",
  "lexical_name": "linearMap_comp_mul'",
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
  "slug": "linearmap-comp-mul--ac9457d3802253fd61d02b30",
  "source": {
    "blob": "bf830b9c8d0364e7ab390a54692f968308e48059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 653,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac9457d3802253fd61d02b30d0d016df38a6caf29f29002ec81d23377710b1b0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ba656f-0567-8bf2-7c94-74ee66ad579e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearMap_comp_mul' :
    Algebra.linearMap R (A ⊗[R] B) ∘ₗ LinearMap.mul' R R =
      map (Algebra.linearMap R A) (Algebra.linearMap R B) := by
  ext
  simp only [AlgebraTensorModule.curry_apply, curry_apply, LinearMap.coe_restrictScalars, map_tmul,
    Algebra.linearMap_apply, map_one, LinearMap.coe_comp, Function.comp_apply,
    LinearMap.mul'_apply, mul_one, Algebra.TensorProduct.one_def]

end Lemmas

end TensorProduct.Algebra

open LinearMap in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf830b9c8d0364e7ab390a54692f968308e48059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
