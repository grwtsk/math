# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff24acaf281bac806d247a6d66fcf5944f14586f1ac2dc2fd2c696b9ad200b01",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cd7ffd08de22b14f5d37ac04",
  "source": {
    "blob": "af334fb1032352966ab6ced2c4e4a9d1d87b2bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 342,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd7ffd08de22b14f5d37ac04596f36be845636ef4aa93bd5dccfcd74caf3a0d0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff24acaf281bac806d247a6d66fcf5944f14586f1ac2dc2fd2c696b9ad200b01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {A} [CommRing A] [Algebra R A] [Module.FinitePresentation R M] :
    Module.FinitePresentation A (A ⊗[R] M) := by
  classical
  obtain ⟨n, f, hf⟩ := Module.Finite.exists_fin' R M
  have inst := Module.finitePresentation_of_projective A (A ⊗[R] (Fin n → R))
  apply Module.finitePresentation_of_surjective (f.baseChange A)
    (LinearMap.lTensor_surjective A hf)
  have : Function.Exact ((LinearMap.ker f).subtype.baseChange A) (f.baseChange A) :=
    lTensor_exact A f.exact_subtype_ker_map hf
  rw [LinearMap.exact_iff] at this
  rw [this, ← Submodule.map_top]
  apply Submodule.FG.map
  have : Module.Finite R (LinearMap.ker f) :=
    ⟨(Submodule.fg_top _).mpr (Module.FinitePresentation.fg_ker f hf)⟩
  exact Module.Finite.fg_top (R := A) (M := A ⊗[R] LinearMap.ker f)

open TensorProduct in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af334fb1032352966ab6ced2c4e4a9d1d87b2bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
