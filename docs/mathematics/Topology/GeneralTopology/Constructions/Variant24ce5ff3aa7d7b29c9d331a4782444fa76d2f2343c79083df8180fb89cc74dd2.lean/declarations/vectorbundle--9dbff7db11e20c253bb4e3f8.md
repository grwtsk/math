# vectorBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bf7faa962440ecd412b412da0d11b95bd6b3bbaf7a06babe683d5070fc51b52",
  "kind": "instance",
  "lexical_name": "vectorBundle",
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
  "slug": "vectorbundle--9dbff7db11e20c253bb4e3f8",
  "source": {
    "blob": "3382c4331db98cbf0d85966e15eb927b95563b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dbff7db11e20c253bb4e3f8052b49472eafd17da3362ca4ef5c9d0fac93089b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bf7faa962440ecd412b412da0d11b95bd6b3bbaf7a06babe683d5070fc51b52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance vectorBundle : VectorBundle 𝕜 F (Bundle.Trivial B F) where
  trivialization_linear' e he := by
    rw [eq_trivialization B F e]
    infer_instance
  continuousOn_coordChange' e e' he he' := by
    obtain rfl := eq_trivialization B F e
    obtain rfl := eq_trivialization B F e'
    simp only [trivialization.coordChangeL]
    exact continuous_const.continuousOn

end Bundle.Trivial

/-! ### Direct sum of two vector bundles -/

section

variable (𝕜 : Type*) {B : Type*} [NontriviallyNormedField 𝕜] [TopologicalSpace B] (F₁ : Type*)
  [NormedAddCommGroup F₁] [NormedSpace 𝕜 F₁] (E₁ : B → Type*) [TopologicalSpace (TotalSpace F₁ E₁)]
  (F₂ : Type*) [NormedAddCommGroup F₂] [NormedSpace 𝕜 F₂] (E₂ : B → Type*)
  [TopologicalSpace (TotalSpace F₂ E₂)]

namespace Trivialization

variable {F₁ E₁ F₂ E₂}
variable [∀ x, AddCommMonoid (E₁ x)] [∀ x, Module 𝕜 (E₁ x)]
  [∀ x, AddCommMonoid (E₂ x)] [∀ x, Module 𝕜 (E₂ x)] (e₁ e₁' : Trivialization F₁ (π F₁ E₁))
  (e₂ e₂' : Trivialization F₂ (π F₂ E₂))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3382c4331db98cbf0d85966e15eb927b95563b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
