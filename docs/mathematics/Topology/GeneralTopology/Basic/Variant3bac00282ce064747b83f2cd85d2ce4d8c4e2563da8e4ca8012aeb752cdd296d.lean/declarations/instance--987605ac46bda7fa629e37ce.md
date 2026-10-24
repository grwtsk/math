# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c80932e4faee0c3fbe5b30f6f6ce0d77a7ab117c47dd2e4673e0042d7ee03f11",
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
  "slug": "instance--987605ac46bda7fa629e37ce",
  "source": {
    "blob": "a5f0b8c15ebf93f4a10d3be880370f6aeedcb95a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:987605ac46bda7fa629e37ce76374f1c493e987184bf6c778ddab1005d4623ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c80932e4faee0c3fbe5b30f6f6ce0d77a7ab117c47dd2e4673e0042d7ee03f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Nonempty α] [Nontrivial β] : Nontrivial C(α, β) :=
  ⟨let ⟨b₁, b₂, hb⟩ := exists_pair_ne β
  ⟨const _ b₁, const _ b₂, fun h => hb <| DFunLike.congr_fun h <| Classical.arbitrary α⟩⟩

section Prod

variable {α₁ α₂ β₁ β₂ : Type*} [TopologicalSpace α₁] [TopologicalSpace α₂] [TopologicalSpace β₁]
  [TopologicalSpace β₂]

/-- `Prod.fst : (x, y) ↦ x` as a bundled continuous map. -/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5f0b8c15ebf93f4a10d3be880370f6aeedcb95a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
