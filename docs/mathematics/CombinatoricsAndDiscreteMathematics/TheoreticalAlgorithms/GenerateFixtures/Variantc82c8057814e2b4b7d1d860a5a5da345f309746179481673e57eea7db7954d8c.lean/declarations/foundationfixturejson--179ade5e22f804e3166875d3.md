# foundationFixtureJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f84be4878899d8e140a78db0b69d8504921668eecafd3fe4bd15321f3b47f4e",
  "kind": "def",
  "lexical_name": "foundationFixtureJson",
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
  "slug": "foundationfixturejson--179ade5e22f804e3166875d3",
  "source": {
    "blob": "b84d57bef917b742fc1eab24aa543cd9d3567f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 508,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:179ade5e22f804e3166875d36fc1cff8f2f3b38998788a0b5cec99308cb66c17",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f84be4878899d8e140a78db0b69d8504921668eecafd3fe4bd15321f3b47f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foundationFixtureJson
    (fileStem object foundation evolution bij theoremName boundary : String) : String :=
  "{\n" ++
  "  \"schema\": \"surface.foundation.coverage.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson (foundationArtifactHash fileStem) ++ ",\n" ++
  "  \"paperReferences\": " ++ defaultPaperReferencesJson ++ ",\n" ++
  "  \"object\": " ++ stringJson object ++ ",\n" ++
  "  \"logicalFoundation\": " ++ stringJson foundation ++ ",\n" ++
  "  \"foundation\": " ++ stringJson foundation ++ ",\n" ++
  "  \"evolutionMode\": " ++ stringJson evolution ++ ",\n" ++
  "  \"bijectivityStatus\": " ++ stringJson bij ++ ",\n" ++
  "  \"requiredAssumptions\": " ++ stringArrayJson [
    "explicit_foundation",
    "certificate_required_for_nonconstructive_claims"
  ] ++ ",\n" ++
  "  \"coverageTheorem\": " ++ stringJson theoremName ++ ",\n" ++
  "  \"theorem\": " ++ stringJson theoremName ++ ",\n" ++
  "  \"proofStatus\": \"checked_by_lean_or_not_claimed\",\n" ++
  "  \"constructiveStatus\": \"foundation_tracked\",\n" ++
  "  \"computabilityStatus\": \"not_executable_unless_runtime_descriptor\",\n" ++
  "  \"oracleStatus\": \"relative_only_when_oracle_foundation\",\n" ++
  "  \"choiceStatus\": \"explicit_when_choice_foundation\",\n" ++
  "  \"heatFlowStatus\": \"certificate_required\",\n" ++
  "  \"heatAveragingStatus\": \"not_bijective_unless_certified\",\n" ++
  "  \"frameCommutationStatus\": \"certificate_required\",\n" ++
  "  \"chainMapStatus\": \"certificate_required\",\n" ++
  "  \"homologyStabilityStatus\": \"quasi_isomorphism_certificate_required\",\n" ++
  "  \"quasiIsomorphismStatus\": \"certificate_required\",\n" ++
  "  \"curvatureHypothesisStatus\": \"required_for_ricci_claims\",\n" ++
  "  \"surgeryHypothesisStatus\": \"required_for_surgery_claims\",\n" ++
  "  \"extinctionHypothesisStatus\": \"required_for_extinction_claims\",\n" ++
  "  \"topologyHypothesisStatus\": \"required_for_classification_claims\",\n" ++
  "  \"ricciFlowStatus\": \"hypothesis_tracked\",\n" ++
  "  \"infiniteTimeStatus\": \"formal_model_only\",\n" ++
  "  \"stabilityStatus\": \"certificate_required\",\n" ++
  "  \"claimBoundary\": " ++ stringArrayJson [
    boundary,
    "not_claimed: representability implies executability",
    "not_claimed: fixture metadata is a proof beyond the named Lean theorem"
  ] ++ "\n" ++
  "}\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84d57bef917b742fc1eab24aa543cd9d3567f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
