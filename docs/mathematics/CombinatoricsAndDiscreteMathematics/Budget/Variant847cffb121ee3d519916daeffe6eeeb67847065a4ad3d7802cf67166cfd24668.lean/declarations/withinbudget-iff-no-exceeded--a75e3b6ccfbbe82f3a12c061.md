# withinBudget_iff_no_exceeded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21ce43ce58291e94407c5f83ddb2f6b25711fc35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:485c772a-25a5-05c9-26a8-a72f0bcfdf3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ad1eeb1-597f-e601-7996-371ebd390e8e",
  "kind": "theorem",
  "lexical_name": "withinBudget_iff_no_exceeded",
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
  "slug": "withinbudget-iff-no-exceeded--a75e3b6ccfbbe82f3a12c061",
  "source": {
    "blob": "21ce43ce58291e94407c5f83ddb2f6b25711fc35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a75e3b6ccfbbe82f3a12c0619d8cc41b9af716af0b48c6a9ba510c2d9c2baade",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ad1eeb1-597f-e601-7996-371ebd390e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withinBudget_iff_no_exceeded
    (usage : TraversalUsage)
    (budget : TraversalBudget) :
    WithinBudget usage budget ↔
      exceededDimensions usage budget = ∅ := by
  constructor
  · rintro ⟨steps, visited, frontier, path, bytes,
      submissions, proposals⟩
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro dimension
    cases dimension <;>
      simp_all [exceededDimensions,
        BudgetDimension.exceeded]
  · intro clear
    have absent :=
      Finset.eq_empty_iff_forall_notMem.mp clear
    have steps : usage.steps ≤ budget.maxSteps := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .steps
    have visited :
        usage.visitedNodes ≤ budget.maxVisitedNodes := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .visitedNodes
    have frontier :
        usage.peakFrontierSize ≤
          budget.maxFrontierSize := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .frontierSize
    have path :
        usage.peakPathLength ≤ budget.maxPathLength := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .pathLength
    have bytes :
        usage.persistedBytes ≤
          budget.maxPersistedBytes := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .persistedBytes
    have submissions :
        usage.verifierSubmissions ≤
          budget.maxVerifierSubmissions := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .verifierSubmissions
    have proposals :
        usage.proposals ≤ budget.maxProposals := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .proposals
    exact ⟨steps, visited, frontier, path, bytes,
      submissions, proposals⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ce43ce58291e94407c5f83ddb2f6b25711fc35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
