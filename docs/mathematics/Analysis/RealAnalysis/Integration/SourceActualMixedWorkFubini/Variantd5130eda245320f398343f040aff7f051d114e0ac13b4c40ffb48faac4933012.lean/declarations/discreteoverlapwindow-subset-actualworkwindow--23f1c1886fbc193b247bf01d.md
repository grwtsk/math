# discreteOverlapWindow_subset_actualWorkWindow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "941b4bb03e78b9c3edfe56fc4d1e4131f019b1fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 820,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5130eda245320f398343f040aff7f051d114e0ac13b4c40ffb48faac4933012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fadab11f-7153-cc05-90d6-9cc090741ccc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a9e1c56-ade8-b765-9a96-1166e7173895",
  "kind": "theorem",
  "lexical_name": "discreteOverlapWindow_subset_actualWorkWindow",
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
  "slug": "discreteoverlapwindow-subset-actualworkwindow--23f1c1886fbc193b247bf01d",
  "source": {
    "blob": "941b4bb03e78b9c3edfe56fc4d1e4131f019b1fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 820,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd5130eda245320f398343f040aff7f051d114e0ac13b4c40ffb48faac4933012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23f1c1886fbc193b247bf01d984169844e1a78574c5e8e9f5d61b86de1e7df36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd5130eda245320f398343f040aff7f051d114e0ac13b4c40ffb48faac4933012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a9e1c56-ade8-b765-9a96-1166e7173895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 820–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteOverlapWindow_subset_actualWorkWindow (A : ℝ) (hA : 1 ≤ A) :
    discreteOverlapWindow A ⊆ actualWorkWindow A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast (by have := vaughanCutoff_pos A hA; omega : 0 < vaughanCutoff A)
  have hlog : Real.log (vaughanCutoff A : ℝ) ≤
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU (by exact_mod_cast Nat.le_succ (vaughanCutoff A))
  intro v hv
  exact ⟨by linarith [hv.1], hv.2⟩

/-- The strip keeps its left endpoint and excludes the discrete lower endpoint exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd5130eda245320f398343f040aff7f051d114e0ac13b4c40ffb48faac4933012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd5130eda245320f398343f040aff7f051d114e0ac13b4c40ffb48faac4933012.lean#L820).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `941b4bb03e78b9c3edfe56fc4d1e4131f019b1fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
