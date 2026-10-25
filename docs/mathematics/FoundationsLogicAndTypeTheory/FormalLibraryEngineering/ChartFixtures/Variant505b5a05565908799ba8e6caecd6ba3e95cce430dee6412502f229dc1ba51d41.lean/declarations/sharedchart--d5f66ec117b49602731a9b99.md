# sharedChart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18de7138738e90b419b5d4edb59088af9034ea6796545370b1a6040a52fa91e7",
  "kind": "def",
  "lexical_name": "sharedChart",
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
  "slug": "sharedchart--d5f66ec117b49602731a9b99",
  "source": {
    "blob": "f8f98816a52326a4c24b42c6912a723f004061c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variant505b5a05565908799ba8e6caecd6ba3e95cce430dee6412502f229dc1ba51d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5f66ec117b49602731a9b998e30164f23df6e208291a02f7b2805f89f054424",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variant505b5a05565908799ba8e6caecd6ba3e95cce430dee6412502f229dc1ba51d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18de7138738e90b419b5d4edb59088af9034ea6796545370b1a6040a52fa91e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sharedChart : PaperChart catalog theory where
  source := "finite-product-source"
  occurrences := {⟨"finite-product-source", "product"⟩, ⟨"finite-product-source", "base"⟩}
  source_bound := by
    intro occurrence h
    simp only [Finset.mem_insert, Finset.mem_singleton] at h
    rcases h with rfl | rfl <;> rfl
  selection := carrierSelection
  occurrenceNode := fun occurrence =>
    if occurrence.localId = "product" then some false else some true
  occurrence_node_bound := by intro _ _ node _; exact Finset.mem_univ node
  targets := {0}
  acceptedFacts := {0}
  accepted_sound := by
    intro fact hfact
    have heq : fact = 0 := Finset.mem_singleton.mp hfact
    subst fact
    change bridgeProposition ∧ True
    exact ⟨⟨.equivalence productUnitEquiv⟩, trivial⟩

/-- A second source can declare exact targets while admitting no proof of them yet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variant505b5a05565908799ba8e6caecd6ba3e95cce430dee6412502f229dc1ba51d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variant505b5a05565908799ba8e6caecd6ba3e95cce430dee6412502f229dc1ba51d41.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f98816a52326a4c24b42c6912a723f004061c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
