# green_branch_jets_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "005e8e7bfbd5f458ac2177350e9e8de76c1de9fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09b0e6d6-5291-4d60-b047-5a1ac461e8f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb2c4e04-bf72-d8bd-a1b8-9cef0875653e",
  "kind": "theorem",
  "lexical_name": "green_branch_jets_at_zero",
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
  "slug": "green-branch-jets-at-zero--407d14816864b52dadd5d3a6",
  "source": {
    "blob": "005e8e7bfbd5f458ac2177350e9e8de76c1de9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:407d14816864b52dadd5d3a6722274afb03ff8c64fdae456fd88bb2004613c9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb2c4e04-bf72-d8bd-a1b8-9cef0875653e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem green_branch_jets_at_zero :
    positiveGreenBranch 0 = 2 ∧ negativeGreenBranch 0 = 2 ∧
    deriv positiveGreenBranch 0 = 0 ∧ deriv negativeGreenBranch 0 = 0 ∧
    iteratedDeriv 2 positiveGreenBranch 0 = -(1 / 2) ∧
    iteratedDeriv 2 negativeGreenBranch 0 = -(1 / 2) ∧
    iteratedDeriv 3 positiveGreenBranch 0 = 1 / 2 ∧
    iteratedDeriv 3 negativeGreenBranch 0 = -(1 / 2) := by
  simp [positiveGreenBranch, negativeGreenBranch, pole_mode_deriv,
    iteratedDeriv_succ', iteratedDeriv_zero, poleMode]
  norm_num

/-- The fourth-order Lagrange boundary flux with its second-order correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `005e8e7bfbd5f458ac2177350e9e8de76c1de9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
