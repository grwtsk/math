# scaledBump_contDiff_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e47f76978795cf64855e75a206f3ccaf948f258",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c6ba6f0-8462-bd6b-7c18-72b3958cbd51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac8102fc-9273-d26f-c2b2-ea563fdd4d97",
  "kind": "theorem",
  "lexical_name": "scaledBump_contDiff_three",
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
  "slug": "scaledbump-contdiff-three--03d1a5f9bf67b99736ce37dd",
  "source": {
    "blob": "0e47f76978795cf64855e75a206f3ccaf948f258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03d1a5f9bf67b99736ce37dd647313a1446024ede0c8173fc2f3a4aca12dd84e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac8102fc-9273-d26f-c2b2-ea563fdd4d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledBump_contDiff_three {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 3 (scaledBump A) := by
  rw [show (3 : WithTop ℕ∞) = 2 + 1 from rfl, contDiff_succ_iff_deriv]
  refine ⟨fun x ↦ (scaledBump_hasDerivAt hA x).differentiableAt, by simp, ?_⟩
  rw [deriv_scaledBump hA, show (2 : WithTop ℕ∞) = 1 + 1 from rfl,
    contDiff_succ_iff_deriv]
  refine ⟨fun x ↦ (firstDerivative_hasDerivAt hA x).differentiableAt, by simp, ?_⟩
  have heq : deriv (firstDerivative A) = explicitSecondDerivative A :=
    funext fun x ↦ (firstDerivative_hasDerivAt hA x).deriv
  rw [heq, contDiff_one_iff_deriv]
  refine ⟨fun x ↦ (explicitSecondDerivative_hasDerivAt hA x).differentiableAt, ?_⟩
  have heq' : deriv (explicitSecondDerivative A) = thirdDerivative A :=
    funext fun x ↦ (explicitSecondDerivative_hasDerivAt hA x).deriv
  rw [heq']
  exact (thirdInterior_continuous A).indicator
    (fun x hx ↦ (secondInterior_frontier hA x hx).2)

/-- The unchanged unit source has ordinary C³ regularity at both support endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e47f76978795cf64855e75a206f3ccaf948f258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
