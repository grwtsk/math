# ContinuousConstVAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3078e99cb3e78e124fbdc01f04726cf80d7c7fddfb2f6b73e1615d4c8501ba6b",
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
  "slug": "continuousconstvadd--3daaa1b8fa8539b4ee36d35f",
  "source": {
    "blob": "9e490c2ce18e7c5bbd0579fff99207ea8b7dee8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantf1aea60d9f7ee6bf034d9025e739f3a6a5e06e2973d9bb0d889058075158e134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3daaa1b8fa8539b4ee36d35f09d77e65e62cf3a0e386cf457257c3e6e30ea65b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variantf1aea60d9f7ee6bf034d9025e739f3a6a5e06e2973d9bb0d889058075158e134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3078e99cb3e78e124fbdc01f04726cf80d7c7fddfb2f6b73e1615d4c8501ba6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variantf1aea60d9f7ee6bf034d9025e739f3a6a5e06e2973d9bb0d889058075158e134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantf1aea60d9f7ee6bf034d9025e739f3a6a5e06e2973d9bb0d889058075158e134.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e490c2ce18e7c5bbd0579fff99207ea8b7dee8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
