# ContinuousLinearMap.closedComplemented_ker_of_rightInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eafe53fa-9466-4d81-c783-9162e357a367",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.closedComplemented_ker_of_rightInverse",
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
  "slug": "continuouslinearmap-closedcomplemented-ker-of-rightinverse--ed9d53d38f11aedaec53711c",
  "source": {
    "blob": "16c6e793ab180ef3c6e77c75e350a7456fd58b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2672,
    "line": 2658,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant95eded680c5b6940ebea9f3a1074a96d30cb32c83e489a95c59df9b30d23c3de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed9d53d38f11aedaec53711cf7d857a4eef48d2d46ba5f57d0d3e5491665cb3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant95eded680c5b6940ebea9f3a1074a96d30cb32c83e489a95c59df9b30d23c3de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eafe53fa-9466-4d81-c783-9162e357a367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2658–2672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.closedComplemented_ker_of_rightInverse {R : Type*} [Ring R]
    {M : Type*} [TopologicalSpace M] [AddCommGroup M] {M₂ : Type*} [TopologicalSpace M₂]
    [AddCommGroup M₂] [Module R M] [Module R M₂] [TopologicalAddGroup M] (f₁ : M →L[R] M₂)
    (f₂ : M₂ →L[R] M) (h : Function.RightInverse f₂ f₁) : (ker f₁).ClosedComplemented :=
  ⟨f₁.projKerOfRightInverse f₂ h, f₁.projKerOfRightInverse_apply_idem f₂ h⟩
#align continuous_linear_map.closed_complemented_ker_of_right_inverse ContinuousLinearMap.closedComplemented_ker_of_rightInverse

section Quotient

namespace Submodule

variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M] [TopologicalSpace M]
  (S : Submodule R M)

-- Porting note: This is required in Lean4.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant95eded680c5b6940ebea9f3a1074a96d30cb32c83e489a95c59df9b30d23c3de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant95eded680c5b6940ebea9f3a1074a96d30cb32c83e489a95c59df9b30d23c3de.lean#L2658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c6e793ab180ef3c6e77c75e350a7456fd58b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
