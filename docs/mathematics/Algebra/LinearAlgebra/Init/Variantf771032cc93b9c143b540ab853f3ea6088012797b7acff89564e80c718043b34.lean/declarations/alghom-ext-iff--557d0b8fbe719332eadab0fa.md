# algHom_ext_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb15ffcc-1d56-5d9e-2253-43989fad7ca3",
  "kind": "theorem",
  "lexical_name": "algHom_ext_iff",
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
  "slug": "alghom-ext-iff--557d0b8fbe719332eadab0fa",
  "source": {
    "blob": "5c8edb599c09fbeac461dbedf7864010de1ebb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 235,
    "path": "GRWTSK/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557d0b8fbe719332eadab0fa3cb8dad8429ea7a7f59373b29709d5dd7c82119c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb15ffcc-1d56-5d9e-2253-43989fad7ca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algHom_ext_iff {A : Type*} [CommSemiring A] [Algebra R A]
    {f g : DividedPowerAlgebra R M →ₐ[R] A} :
    f = g ↔ ∀ n m, f (dp R n m) = g (dp R n m) := by
  refine ⟨fun h _ _ ↦ by rw [h], fun h ↦ ?_⟩
  rw [DFunLike.ext'_iff]
  apply Function.Surjective.injective_comp_right mkAlgHom_surjective
  simpa [← AlgHom.coe_comp] using MvPolynomial.algHom_ext fun ⟨n, m⟩ ↦ h n m

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c8edb599c09fbeac461dbedf7864010de1ebb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
