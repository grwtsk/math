# inf_comap_le_comap_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cf6c38a-e65e-1163-b3a3-ff0870510b1e",
  "kind": "theorem",
  "lexical_name": "inf_comap_le_comap_add",
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
  "slug": "inf-comap-le-comap-add--db7fdfc71bc26f24c06bf33c",
  "source": {
    "blob": "7cbf366197edb60d9b998a83dbeae6173559a27a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 598,
    "path": "GRWTSK/Algebra/LinearAlgebra/Map/Variantec79674a87e33f0b8760e51ea319c122dd27a97be332746cbde16d8e28f62288.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db7fdfc71bc26f24c06bf33c25f446f7fb3c199c6f0390cc5f9ce0880d3273f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Map/Variantec79674a87e33f0b8760e51ea319c122dd27a97be332746cbde16d8e28f62288.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cf6c38a-e65e-1163-b3a3-ff0870510b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_comap_le_comap_add (f₁ f₂ : M →ₛₗ[τ₁₂] M₂) :
    comap f₁ q ⊓ comap f₂ q ≤ comap (f₁ + f₂) q := by
  rw [SetLike.le_def]
  intro m h
  change f₁ m + f₂ m ∈ q
  change f₁ m ∈ q ∧ f₂ m ∈ q at h
  apply q.add_mem h.1 h.2

end Submodule

namespace Submodule

variable {N N₂ : Type*}
variable [CommSemiring R] [CommSemiring R₂]
variable [AddCommMonoid M] [AddCommMonoid M₂] [Module R M] [Module R₂ M₂]
variable [AddCommMonoid N] [AddCommMonoid N₂] [Module R N] [Module R N₂]
variable {τ₁₂ : R →+* R₂} {τ₂₁ : R₂ →+* R}
variable [RingHomInvPair τ₁₂ τ₂₁] [RingHomInvPair τ₂₁ τ₁₂]
variable (p : Submodule R M) (q : Submodule R₂ M₂)
variable (pₗ : Submodule R N) (qₗ : Submodule R N₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Map/Variantec79674a87e33f0b8760e51ea319c122dd27a97be332746cbde16d8e28f62288.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Map/Variantec79674a87e33f0b8760e51ea319c122dd27a97be332746cbde16d8e28f62288.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cbf366197edb60d9b998a83dbeae6173559a27a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
