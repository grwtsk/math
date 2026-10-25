# source_dependent_alternate_returns_exact_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53e10de4-dd9a-24fb-87bd-ee242b59268d",
  "kind": "theorem",
  "lexical_name": "source_dependent_alternate_returns_exact_target",
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
  "slug": "source-dependent-alternate-returns-exact-target--45e85d463f8d96ab5a65c728",
  "source": {
    "blob": "32e1ca278b5e3701c267c65bc4b51db53717039c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45e85d463f8d96ab5a65c728bb9ba54b1277dd03d717d6c10f8d5fbcf0051ded",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53e10de4-dd9a-24fb-87bd-ee242b59268d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_dependent_alternate_returns_exact_target :
    let current : SourceSnapshot Bool ℕ := fun artifact ↦ if artifact then 9 else 7
    () ∈ supportedClaims (fun provider ↦ (sourceDependentAlternates provider).route)
      (eligibleProviders sourceDependentAlternates Finset.univ ∅ ∅ current) ∧
        current false = 7 := by
  dsimp only
  have admitted : false ∈ eligibleProviders sourceDependentAlternates Finset.univ ∅ ∅
      (fun artifact ↦ if artifact then 9 else 7) := by
    simp [eligibleProviders, sourceDependentAlternates, RevisionCertificate.Fresh,
      SnapshotAgreesOn]
  have supported : () ∈ supportedClaims
      (fun provider ↦ (sourceDependentAlternates provider).route)
      (eligibleProviders sourceDependentAlternates Finset.univ ∅ ∅
        (fun artifact ↦ if artifact then 9 else 7)) := by
    apply (mem_supportedClaims_iff _ _ ()).mpr
    apply GroundedSupport.via false admitted
    intro prerequisite member
    exact False.elim (Finset.notMem_empty prerequisite member)
  exact ⟨supported, certified_supported_target sourceDependentAlternates Finset.univ ∅ ∅
    (fun artifact ↦ if artifact then 9 else 7) () supported⟩

/-- A third claim requires both independent prerequisites. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e1ca278b5e3701c267c65bc4b51db53717039c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
