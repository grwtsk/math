# compl₂_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42e9d59c-0b30-e59d-35b4-4146f54a4077",
  "kind": "theorem",
  "lexical_name": "compl₂_comp",
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
  "slug": "compl-comp--a58cdaf94f03564edb058866",
  "source": {
    "blob": "7da8a42fd53e07b074f55ce637e52127a1aa11dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 179,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant7c6a368d727a9673d6f498ab5ff50e60636ae8e1486493a8a396345a638226ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a58cdaf94f03564edb058866738b7b073bf1a309a432ed41c7f5a9eb7167e6bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearMap/Variant7c6a368d727a9673d6f498ab5ff50e60636ae8e1486493a8a396345a638226ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42e9d59c-0b30-e59d-35b4-4146f54a4077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compl₂_comp {R₆ Q' : Type*} [Semiring R₆] [AddCommMonoid Q'] [Module R₆ Q']
    {σ₆₂ : R₆ →+* R₂} {σ₆₃ : R₆ →+* R₃} {σ₆₄ : R₆ →+* R₄}
    [RingHomCompTriple σ₆₂ σ₂₃ σ₆₃] [RingHomCompTriple σ₆₄ σ₄₂ σ₆₂] [RingHomCompTriple σ₆₄ σ₄₃ σ₆₃]
    (h : M →ₛₗ[σ₁₅] N →ₛₗ[σ₂₃] P) (g : Q →ₛₗ[σ₄₂] N) (f : Q' →ₛₗ[σ₆₄] Q) :
    h.compl₂ (g ∘ₛₗ f) = (h.compl₂ g).compl₂ f := rfl

end Semiring

section lcomp

variable (S N) [Module R N] [SMulCommClass R S N]

/-- Composing a given linear map `M → N` with a linear map `N → P` as a linear map from
`Nₗ →ₗ[R] Pₗ` to `M →ₗ[R] Pₗ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearMap/Variant7c6a368d727a9673d6f498ab5ff50e60636ae8e1486493a8a396345a638226ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant7c6a368d727a9673d6f498ab5ff50e60636ae8e1486493a8a396345a638226ca.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7da8a42fd53e07b074f55ce637e52127a1aa11dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
