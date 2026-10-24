# integral_condCdf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 960,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2296ba21-9440-67a3-a00c-d1a54c474bee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e872cf23-41c3-117f-2483-53dd58eef452",
  "kind": "theorem",
  "lexical_name": "integral_condCdf",
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
  "slug": "integral-condcdf--009b99354b5dbae6d40d072c",
  "source": {
    "blob": "d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 966,
    "line": 960,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCdf/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:009b99354b5dbae6d40d072cea82244893dbf5f26816b20e847c5032a42948ca",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e872cf23-41c3-117f-2483-53dd58eef452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 960–966.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_condCdf (ρ : Measure (α × ℝ)) [IsFiniteMeasure ρ] (x : ℝ) :
    ∫ a, condCdf ρ a x ∂ρ.fst = (ρ (univ ×ˢ Iic x)).toReal := by
  rw [← set_integral_condCdf ρ _ MeasurableSet.univ, Measure.restrict_univ]
#align probability_theory.integral_cond_cdf ProbabilityTheory.integral_condCdf

section Measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCdf/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean#L960).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
