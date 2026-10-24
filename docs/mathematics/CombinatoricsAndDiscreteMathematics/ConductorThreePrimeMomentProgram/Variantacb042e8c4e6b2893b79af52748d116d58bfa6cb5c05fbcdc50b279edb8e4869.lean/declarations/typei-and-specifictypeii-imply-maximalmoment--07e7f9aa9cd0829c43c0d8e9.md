# typeI_and_specificTypeII_imply_maximalMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b56d7c81335e747cd405145f65c46e734248fca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f76b260-c289-ce9d-5ddd-ef92f6bf42de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f74b20dc-285e-ed5f-95a9-4f5286a1f6fa",
  "kind": "theorem",
  "lexical_name": "typeI_and_specificTypeII_imply_maximalMoment",
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
  "slug": "typei-and-specifictypeii-imply-maximalmoment--07e7f9aa9cd0829c43c0d8e9",
  "source": {
    "blob": "9b56d7c81335e747cd405145f65c46e734248fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07e7f9aa9cd0829c43c0d8e9cdd873a0e1673275f80d93862e70ff66525e8656",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f74b20dc-285e-ed5f-95a9-4f5286a1f6fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeI_and_specificTypeII_imply_maximalMoment
    (hI : UniformConductorThreeTypeIMaximal)
    (route : ConductorThreeVaughanPacketRoute)
    (hII : UniformConductorThreeTypeIIMaximal route) :
    ConductorThreeMaximalMomentEstimate := by
  intro epsilon hepsilon
  obtain ⟨CI, hCI, hIbound⟩ := hI epsilon hepsilon
  obtain ⟨CII, hCII, hIIbound⟩ :=
    uniformTypeIIMaximal_implies_arithmetic route hII epsilon hepsilon
  refine ⟨CI + CII, add_nonneg hCI hCII, ?_⟩
  intro N hN
  unfold maxPrefixNorm
  apply Finset.sup'_le
  intro x hx
  have hxle : x ≤ 2 * N := by
    simp only [Finset.mem_range] at hx
    omega
  have hleft := hIbound N hN x hxle
  have hright := hIIbound N hN x hxle
  rw [conductorThreePsi_eq_typeIPrefix_add_typeIIPrefix N x]
  calc
    |conductorThreeVaughanTypeIPrefix N x +
        conductorThreeVaughanTypeIIPrefix N x| ≤
        |conductorThreeVaughanTypeIPrefix N x| +
          |conductorThreeVaughanTypeIIPrefix N x| := abs_add_le _ _
    _ ≤ CI * (N : ℝ) ^ (1 / 2 + epsilon) +
          CII * (N : ℝ) ^ (1 / 2 + epsilon) :=
      add_le_add hleft hright
    _ = (CI + CII) * (N : ℝ) ^ (1 / 2 + epsilon) := by ring

/-- The corrected program reaches the BV endpoint through the exact Vaughan
prefix identity, never through a generic full-Gram norm. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b56d7c81335e747cd405145f65c46e734248fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
