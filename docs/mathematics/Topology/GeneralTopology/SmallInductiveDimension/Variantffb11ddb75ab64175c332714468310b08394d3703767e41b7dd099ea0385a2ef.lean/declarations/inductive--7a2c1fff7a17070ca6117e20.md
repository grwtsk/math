# inductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa973477bb7bb9ee244d082f770a369b6154b123b49691b5d31dd6b85008876f",
  "kind": "class",
  "lexical_name": "inductive",
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
  "slug": "inductive--7a2c1fff7a17070ca6117e20",
  "source": {
    "blob": "266080d76e16da8d8d3b09ba309f76a53522b584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a2c1fff7a17070ca6117e203738cd1229fb7c416ddbe5ddce482b9f54c614a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa973477bb7bb9ee244d082f770a369b6154b123b49691b5d31dd6b85008876f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class inductive HasSmallInductiveDimensionLT.{u} :
  ∀ (X : Type u) [TopologicalSpace X], ℕ → Prop where
  | zero {X : Type u} [TopologicalSpace X] [IsEmpty X] : HasSmallInductiveDimensionLT X 0
  | succ {X : Type u} [TopologicalSpace X] (n : ℕ) (s : Set (Set X)) (hs : IsTopologicalBasis s)
      (h : ∀ U ∈ s, HasSmallInductiveDimensionLT (frontier U) n) :
      HasSmallInductiveDimensionLT X (n + 1)

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

variable (X) in
/-- A topological space has dimension `≤ n` if it has dimension `< n + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `266080d76e16da8d8d3b09ba309f76a53522b584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
