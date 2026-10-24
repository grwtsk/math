# integrated_balance_accuracy_bounds_and_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de06990a4fddc0346e87d209143095f0c1cdcfe8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3003,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a291539-a54b-2f50-54b5-3e97320069b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af3ecfdf-13f5-66e0-49c7-17200eedf2a0",
  "kind": "theorem",
  "lexical_name": "integrated_balance_accuracy_bounds_and_authority",
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
  "slug": "integrated-balance-accuracy-bounds-and-authority--e461e2e5f65742673e7bafa5",
  "source": {
    "blob": "de06990a4fddc0346e87d209143095f0c1cdcfe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3040,
    "line": 3003,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e461e2e5f65742673e7bafa5a1c162367d8f697ced1d568b873105fde5f6837b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af3ecfdf-13f5-66e0-49c7-17200eedf2a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3003–3040.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrated_balance_accuracy_bounds_and_authority
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.realized.architecture.hardware.balance =
        system.realized.architecture.symbolic.balance ∧
      AccuracyPreferred system.realized.correction.reducer.accuracy.target
        (system.realized.correction.reducer.accuracy.candidate.transform
          system.realized.correction.reducer.accuracy.before)
        system.realized.correction.reducer.accuracy.before ∧
      system.reflection.supervision.executedRounds ≤
        system.reflection.supervision.hostPlan.host.maximumReflectionRounds ∧
      system.reflection.supervision.mutationAuthority = false ∧
      system.reflection.correction.mutationAuthority = false ∧
      (∀ authority,
        system.reflection.supervision.outputAuthority = some authority →
        system.reflection.supervision.entryAuthority = some authority) := by
  rcases system.reflection.integrated_bundle_not_authority with
    ⟨supervisionNotAuthority, _ontologyNotAuthority, _rustNotAuthority,
      _computeNotAuthority, correctionNotAuthority⟩
  exact ⟨system.realized.architecture_balance,
    system.realized.correction_prefers_accuracy,
    system.reflection.reflection_rounds_are_host_bounded,
    supervisionNotAuthority,
    correctionNotAuthority,
    fun _authority output =>
      system.reflection.supervision.no_authority_escalation output⟩

/--
The complete proposition certified for a proposed host-reflected correction.
It intentionally combines the data path, typed graph discharge, quality
interpretation, exhaustive diffuser realization, host bounds, and authority
boundary so no one projection can be mistaken for end-to-end conformance.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean#L3003).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06990a4fddc0346e87d209143095f0c1cdcfe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
