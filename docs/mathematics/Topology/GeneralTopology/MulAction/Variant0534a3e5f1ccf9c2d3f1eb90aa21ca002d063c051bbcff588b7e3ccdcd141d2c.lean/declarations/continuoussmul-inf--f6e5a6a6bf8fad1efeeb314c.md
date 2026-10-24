# continuousSMul_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85e2b72049f1eae080a9a5fe857ee15e22b60241",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8be22f5-1522-2124-06d5-c16c9e7d5879",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7472126b-b6fc-1f8c-2432-efcc39dda60b",
  "kind": "theorem",
  "lexical_name": "continuousSMul_inf",
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
  "slug": "continuoussmul-inf--f6e5a6a6bf8fad1efeeb314c",
  "source": {
    "blob": "85e2b72049f1eae080a9a5fe857ee15e22b60241",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6e5a6a6bf8fad1efeeb314cb5588e4368808842a8a267e84dc7ad41bbc3b1af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7472126b-b6fc-1f8c-2432-efcc39dda60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousSMul_inf {t₁ t₂ : TopologicalSpace X} [@ContinuousSMul M X _ _ t₁]
    [@ContinuousSMul M X _ _ t₂] : @ContinuousSMul M X _ _ (t₁ ⊓ t₂) := by
  rw [inf_eq_iInf]
  refine' continuousSMul_iInf fun b => _
  cases b <;> assumption
#align has_continuous_smul_inf continuousSMul_inf
#align has_continuous_vadd_inf continuousVAdd_inf

end LatticeOps

section AddTorsor

variable (G : Type*) (P : Type*) [AddGroup G] [AddTorsor G P] [TopologicalSpace G]

variable [PreconnectedSpace G] [TopologicalSpace P] [ContinuousVAdd G P]

/-- An `AddTorsor` for a connected space is a connected space. This is not an instance because
it loops for a group as a torsor over itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e2b72049f1eae080a9a5fe857ee15e22b60241` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
