# ContinuousConstVAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24bb0a90bb1ada48fa5859a8a0c25e84bf7a2f95a0fe3bea65d98d83f9dfce4d",
  "kind": "class",
  "lexical_name": "ContinuousConstVAdd",
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
  "slug": "continuousconstvadd--69f0ae000349c45c33275f68",
  "source": {
    "blob": "8b197e82fcb1919341311054eda0d1dcdbf9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69f0ae000349c45c33275f687174f95bf09e133f6cd9d0fa54b657a29523b2dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24bb0a90bb1ada48fa5859a8a0c25e84bf7a2f95a0fe3bea65d98d83f9dfce4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousConstVAdd (Γ : Type*) (T : Type*) [TopologicalSpace T] [VAdd Γ T] : Prop where
  /-- The additive action `(+ᵥ) : Γ → T → T` is continuous in the second argument. -/
  continuous_const_vadd : ∀ γ : Γ, Continuous fun x : T => γ +ᵥ x

attribute [to_additive] ContinuousConstSMul

export ContinuousConstSMul (continuous_const_smul)
export ContinuousConstVAdd (continuous_const_vadd)

variable {M α β : Type*}

section SMul

variable [TopologicalSpace α] [SMul M α] [ContinuousConstSMul M α]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b197e82fcb1919341311054eda0d1dcdbf9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
