# projective_limit_invariant_law_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4672308b1f02f502f7aaf93823c9b10bfd7f786",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9092b97-aa21-7fe7-8bc5-6d075758d39f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95695408-8387-d9d5-bc63-fc9ee20824e4",
  "kind": "theorem",
  "lexical_name": "projective_limit_invariant_law_unique",
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
  "slug": "projective-limit-invariant-law-unique--10baa8839e43e3ae56d2e6bc",
  "source": {
    "blob": "d4672308b1f02f502f7aaf93823c9b10bfd7f786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10baa8839e43e3ae56d2e6bc403b517c14bb23a7d4764fb1d693ede3651faee9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95695408-8387-d9d5-bc63-fc9ee20824e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projective_limit_invariant_law_unique
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system)
    (candidate : kernel.Law)
    (candidateFixed :
      ∀ schedule,
        kernel.push schedule candidate =
          candidate) :
    candidate = kernel.invariantLaw := by
  apply kernel.separated
  let schedule :=
    system.defaultLimitSchedule
  have contractionBound :=
    kernel.uniformlyContractive
      schedule candidate kernel.invariantLaw
  rw [candidateFixed, kernel.commonInvariant] at
    contractionBound
  have contractionReal :
      (system.uniformContraction : ℝ) < 1 := by
    exact_mod_cast system.uniformContraction_lt_one
  have distanceReal :
      (kernel.wasserstein
        candidate kernel.invariantLaw : ℝ) ≤
        (system.uniformContraction : ℝ) *
          (kernel.wasserstein
            candidate kernel.invariantLaw : ℝ) := by
    exact_mod_cast contractionBound
  have distanceNonnegative :
      0 ≤
        (kernel.wasserstein
          candidate kernel.invariantLaw : ℝ) :=
    NNReal.coe_nonneg _
  have distanceZero :
      (kernel.wasserstein
        candidate kernel.invariantLaw : ℝ) = 0 := by
    nlinarith
  exact_mod_cast distanceZero

end Mathematics.StratifiedBoundary.Boundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4672308b1f02f502f7aaf93823c9b10bfd7f786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
