# full_logarithmic_integer_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c2e1322-e505-6498-13ed-cdb834f28320",
  "kind": "theorem",
  "lexical_name": "full_logarithmic_integer_inventory",
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
  "slug": "full-logarithmic-integer-inventory--4292c3fab6aca2fb1c63a897",
  "source": {
    "blob": "3b5381f60b365e2cbd52ed41d674fa4150fc9af1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 42,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4292c3fab6aca2fb1c63a89789271b4c92b1ad623794a5e338c6686f5dc3837a",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c2e1322-e505-6498-13ed-cdb834f28320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_logarithmic_integer_inventory (F : ℝ → ℝ) (t : ℝ) (N : ℕ) :
    (∑ i ∈ Finset.Ico 1 (N + 1), Real.log (i : ℝ) / Real.sqrt (i : ℝ) *
      F (t + Real.log (i : ℝ))) =
    ∑ i ∈ Finset.Icc 2 N, Real.log (i : ℝ) / Real.sqrt (i : ℝ) *
      F (t + Real.log (i : ℝ)) := by
  have retained : Finset.Icc 2 N ⊆ Finset.Ico 1 (N + 1) := by
    intro i hi
    simp only [Finset.mem_Icc, Finset.mem_Ico] at *
    omega
  symm
  apply Finset.sum_subset retained
  intro i hi missing
  have label : i = 1 := by
    simp only [Finset.mem_Icc, Finset.mem_Ico, not_and] at *
    omega
  subst i
  simp

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b5381f60b365e2cbd52ed41d674fa4150fc9af1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
