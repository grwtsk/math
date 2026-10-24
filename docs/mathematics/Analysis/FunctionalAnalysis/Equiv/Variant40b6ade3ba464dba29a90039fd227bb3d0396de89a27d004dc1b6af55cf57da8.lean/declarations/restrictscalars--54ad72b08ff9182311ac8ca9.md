# restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35e27f10f5710e072415d9f0dd516752be0cc908ee50909b49c38ce90966c344",
  "kind": "def",
  "lexical_name": "restrictScalars",
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
  "slug": "restrictscalars--54ad72b08ff9182311ac8ca9",
  "source": {
    "blob": "150a7877b2778ed601932e4dbb3294380b7e2b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1075,
    "line": 1055,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54ad72b08ff9182311ac8ca9155fd39f2a7b87eda33c1885f646ac5a4097b021",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35e27f10f5710e072415d9f0dd516752be0cc908ee50909b49c38ce90966c344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1055–1075.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictScalars (R : Type*) {S : Type*} {M : Type*}
    [Semiring R] [Semiring S] [AddCommMonoid M] [Module R M] [Module S M] [TopologicalSpace M]
    [LinearMap.CompatibleSMul M M R S] (f : M ≃L[S] M) : M ≃L[R] M where
  toLinearEquiv := f.toLinearEquiv.restrictScalars R

end RestrictScalars

end ContinuousLinearEquiv

-- Restricting a continuous linear equivalence to a map between submodules.
section map

namespace ContinuousLinearEquiv

variable {R R₂ M M₂ : Type*} [Semiring R] [Semiring R₂] [AddCommMonoid M] [TopologicalSpace M]
  [AddCommMonoid M₂] [TopologicalSpace M₂]
  {module_M : Module R M} {module_M₂ : Module R₂ M₂} {σ₁₂ : R →+* R₂} {σ₂₁ : R₂ →+* R}
  {re₁₂ : RingHomInvPair σ₁₂ σ₂₁} {re₂₁ : RingHomInvPair σ₂₁ σ₁₂}

/-- Continuous linear equivalence between two equal submodules:
this is `LinearEquiv.ofEq` as a continuous linear equivalence -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean#L1055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150a7877b2778ed601932e4dbb3294380b7e2b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
