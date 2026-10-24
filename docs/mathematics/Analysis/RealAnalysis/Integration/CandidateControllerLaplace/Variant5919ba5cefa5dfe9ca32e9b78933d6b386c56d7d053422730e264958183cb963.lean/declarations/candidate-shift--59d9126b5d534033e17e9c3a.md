# candidate_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ebfe2c9-0499-dd3a-5a72-417dc9544e92",
  "kind": "theorem",
  "lexical_name": "candidate_shift",
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
  "slug": "candidate-shift--59d9126b5d534033e17e9c3a",
  "source": {
    "blob": "9bac26bf20978a861a2d08859f92827ad4f08bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 224,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59d9126b5d534033e17e9c3a731b5a8d36372af6bb136f762a5b5b236626f099",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ebfe2c9-0499-dd3a-5a72-417dc9544e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_shift (X : ℕ) (ε h σ : ℝ) (z : ℂ) :
    candidate X ε h ((σ : ℂ) + z) = candidate X (ε + σ) h z := by
  simp only [candidate, Complex.ofReal_add]
  simp only [add_assoc, add_comm, add_left_comm]

/-- The source candidate's inverse satisfies the exact finite-strip exponential tilt relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bac26bf20978a861a2d08859f92827ad4f08bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
