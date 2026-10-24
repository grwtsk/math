# ContinuousMultilinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4c9b82e7acd00e782157683f7af723dd8609f6e4f91cd88e4aafd5142d51f3d",
  "kind": "structure",
  "lexical_name": "ContinuousMultilinearMap",
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
  "slug": "continuousmultilinearmap--d37322ff931394a51a545ea1",
  "source": {
    "blob": "b038188d0183e5de5ad07dfd4b68465f01995df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 59,
    "path": "GRWTSK/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d37322ff931394a51a545ea1e5f12696b4a768d9d8d702490b35937f3371e6d3",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4c9b82e7acd00e782157683f7af723dd8609f6e4f91cd88e4aafd5142d51f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousMultilinearMap (R : Type u) {ι : Type v} (M₁ : ι → Type w₁) (M₂ : Type w₂)
  [Semiring R] [∀ i, AddCommMonoid (M₁ i)] [AddCommMonoid M₂] [∀ i, Module R (M₁ i)] [Module R M₂]
  [∀ i, TopologicalSpace (M₁ i)] [TopologicalSpace M₂] extends MultilinearMap R M₁ M₂ where
  cont : Continuous toFun

attribute [inherit_doc ContinuousMultilinearMap] ContinuousMultilinearMap.cont

@[inherit_doc ContinuousMultilinearMap]
notation3:25 M " [×" n "]→L[" R "] " M' => ContinuousMultilinearMap R (fun _i : Fin n => M) M'

namespace ContinuousMultilinearMap

section Semiring

variable [Semiring R] [∀ i, AddCommMonoid (M i)] [∀ i, AddCommMonoid (M₁ i)]
  [∀ i, AddCommMonoid (M₁' i)] [AddCommMonoid M₂] [AddCommMonoid M₃] [AddCommMonoid M₄]
  [∀ i, Module R (M i)] [∀ i, Module R (M₁ i)] [∀ i, Module R (M₁' i)] [Module R M₂] [Module R M₃]
  [Module R M₄] [∀ i, TopologicalSpace (M i)] [∀ i, TopologicalSpace (M₁ i)]
  [∀ i, TopologicalSpace (M₁' i)] [TopologicalSpace M₂] [TopologicalSpace M₃] [TopologicalSpace M₄]
  (f f' : ContinuousMultilinearMap R M₁ M₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b038188d0183e5de5ad07dfd4b68465f01995df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
