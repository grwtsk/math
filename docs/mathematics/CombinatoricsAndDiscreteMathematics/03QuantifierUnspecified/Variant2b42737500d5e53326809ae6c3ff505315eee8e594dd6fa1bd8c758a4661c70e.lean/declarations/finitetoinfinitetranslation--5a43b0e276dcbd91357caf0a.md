# finiteToInfiniteTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bca5700a87a0c461e30ac78129b53fa13bdf3b5b52b8da709ff6ec4b5acac905",
  "kind": "def",
  "lexical_name": "finiteToInfiniteTranslation",
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
  "slug": "finitetoinfinitetranslation--5a43b0e276dcbd91357caf0a",
  "source": {
    "blob": "f7d02113c73489df9688ad8de682af822d5d3e55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a43b0e276dcbd91357caf0ac2e6fa502cbbee63265e41c619d6a83150364d32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bca5700a87a0c461e30ac78129b53fa13bdf3b5b52b8da709ff6ec4b5acac905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteToInfiniteTranslation : Translation boolTheory natTheory
    boolVersion natVersion boolAssumptions natAssumptions boolScope natScope where
  artifact := version "finite-to-infinite"
  lineage := .atomic (version "finite-to-infinite")
  lineageArtifactExact := rfl
  foundationInterpretation := .identity foundation (version "foundation-identity")
  mapObject := by
    change Bool → Nat
    exact fun b => if b then 1 else 0
  mapProposition := id
  assumptionTranslation := {
    artifact := version "assumption-translation"
    mapIndex := fun i => nomatch i.down
    propositionExact := fun i => nomatch i.down
  }
  targetAssumptionPartition := { classify := fun i => nomatch i.down }
  scopeTranslation := ⟨by intros; trivial⟩
  propositionScopeTranslation := by intros; trivial
  quantifierTransform := ⟨version "quantifier-transform", neutral, neutral, rfl⟩
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [{
    artifact := version "loss"
    classification := .Partial
    declaredScope := "all"
    forgottenInformation := ["cardinality regime omitted"]
    assessmentArtifact := version "loss-assessment"
  }]
  informationLossNonempty := by simp
  canonicality := []

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d02113c73489df9688ad8de682af822d5d3e55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
