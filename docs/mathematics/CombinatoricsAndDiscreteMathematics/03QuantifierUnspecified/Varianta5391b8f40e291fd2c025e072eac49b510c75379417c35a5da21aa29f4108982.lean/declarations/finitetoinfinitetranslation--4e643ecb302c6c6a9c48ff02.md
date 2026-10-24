# finiteToInfiniteTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fc02ebcc9e12f900cc34252ab5e4b5b48cd22d226ab5d5c61e492d1aa7874cd",
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
  "slug": "finitetoinfinitetranslation--4e643ecb302c6c6a9c48ff02",
  "source": {
    "blob": "95db3fe17a67ef3f4be0e364ce6b65f27b2dc945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Varianta5391b8f40e291fd2c025e072eac49b510c75379417c35a5da21aa29f4108982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e643ecb302c6c6a9c48ff02bf7310fa1dfba4aef383b574e4e0cae6f0c4127b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Varianta5391b8f40e291fd2c025e072eac49b510c75379417c35a5da21aa29f4108982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fc02ebcc9e12f900cc34252ab5e4b5b48cd22d226ab5d5c61e492d1aa7874cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–101.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Varianta5391b8f40e291fd2c025e072eac49b510c75379417c35a5da21aa29f4108982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Varianta5391b8f40e291fd2c025e072eac49b510c75379417c35a5da21aa29f4108982.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95db3fe17a67ef3f4be0e364ce6b65f27b2dc945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
