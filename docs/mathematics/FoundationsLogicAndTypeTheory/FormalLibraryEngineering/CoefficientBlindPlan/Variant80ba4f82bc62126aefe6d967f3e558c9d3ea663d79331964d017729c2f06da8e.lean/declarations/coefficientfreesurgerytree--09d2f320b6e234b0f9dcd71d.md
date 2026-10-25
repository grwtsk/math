# CoefficientFreeSurgeryTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5f47621729dc47deb79e247d2926e177c5ff4ce725e858e3b384c7293a3ccf7",
  "kind": "structure",
  "lexical_name": "CoefficientFreeSurgeryTree",
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
  "slug": "coefficientfreesurgerytree--09d2f320b6e234b0f9dcd71d",
  "source": {
    "blob": "a9ebfaec99361e4f471d0b7cfe0d9c26336c5a96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientBlindPlan/Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09d2f320b6e234b0f9dcd71d0c0e9c71b826e69ecc327d03f9511b14c31c5b20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientBlindPlan/Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5f47621729dc47deb79e247d2926e177c5ff4ce725e858e3b384c7293a3ccf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoefficientFreeSurgeryTree
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) where
  Node : Type
  nodeFintype : Fintype Node
  nodeDecidableEq : DecidableEq Node
  root : Node
  parent : Node → Option Node
  depth : Node → ℕ
  root_parent : parent root = none
  root_depth : depth root = 0
  parent_depth : ∀ {node ancestor}, parent node = some ancestor →
    depth node = depth ancestor + 1
  leftSupport : Node → Finset B.Left
  rightSupport : Node → Finset B.Right
  root_leftSupport : leftSupport root = Finset.univ
  root_rightSupport : rightSupport root = Finset.univ
  child_leftSupport : ∀ {node ancestor}, parent node = some ancestor →
    leftSupport node ⊆ leftSupport ancestor
  child_rightSupport : ∀ {node ancestor}, parent node = some ancestor →
    rightSupport node ⊆ rightSupport ancestor

attribute [instance]
  CoefficientFreeSurgeryTree.nodeFintype
  CoefficientFreeSurgeryTree.nodeDecidableEq

/-- Complete finite plan for one shell factor block, chosen before any
coefficient vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientBlindPlan/Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientBlindPlan/Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ebfaec99361e4f471d0b7cfe0d9c26336c5a96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
