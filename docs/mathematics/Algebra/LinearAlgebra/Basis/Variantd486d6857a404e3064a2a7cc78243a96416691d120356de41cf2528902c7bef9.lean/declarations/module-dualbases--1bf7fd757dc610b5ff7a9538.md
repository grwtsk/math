# Module.DualBases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d34e47408aad021584773b5e5e416c5e20a6a2b3348b3619e9a4cebffcc04711",
  "kind": "structure",
  "lexical_name": "Module.DualBases",
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
  "slug": "module-dualbases--1bf7fd757dc610b5ff7a9538",
  "source": {
    "blob": "cd383774236b31295642dd3ba43f30b3ac4d2850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantd486d6857a404e3064a2a7cc78243a96416691d120356de41cf2528902c7bef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bf7fd757dc610b5ff7a9538b292cc63f67a36f01188d75bb4dd5ff0a96c0073",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variantd486d6857a404e3064a2a7cc78243a96416691d120356de41cf2528902c7bef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d34e47408aad021584773b5e5e416c5e20a6a2b3348b3619e9a4cebffcc04711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Module.DualBases (e : ι → M) (ε : ι → Dual R M) : Prop where
  eval_same : ∀ i, ε i (e i) = 1
  eval_of_ne : Pairwise fun i j ↦ ε i (e j) = 0
  protected total : ∀ {m₁ m₂ : M}, (∀ i, ε i m₁ = ε i m₂) → m₁ = m₂
  protected finite : ∀ m : M, {i | ε i m ≠ 0}.Finite := by use_finite_instance

end DualBases

namespace Module.DualBases

open LinearMap

variable {R M ι : Type*}
variable [CommSemiring R] [AddCommMonoid M] [Module R M]
variable {e : ι → M} {ε : ι → Dual R M}

/-- The coefficients of `v` on the basis `e` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variantd486d6857a404e3064a2a7cc78243a96416691d120356de41cf2528902c7bef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variantd486d6857a404e3064a2a7cc78243a96416691d120356de41cf2528902c7bef9.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd383774236b31295642dd3ba43f30b3ac4d2850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
