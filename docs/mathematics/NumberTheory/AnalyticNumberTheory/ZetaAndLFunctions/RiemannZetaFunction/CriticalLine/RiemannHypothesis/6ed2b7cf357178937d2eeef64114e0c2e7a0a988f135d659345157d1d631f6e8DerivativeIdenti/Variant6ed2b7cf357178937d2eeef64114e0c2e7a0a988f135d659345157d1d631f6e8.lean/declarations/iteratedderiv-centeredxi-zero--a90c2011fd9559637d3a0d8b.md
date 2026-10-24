# iteratedDeriv_centeredXi_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44eb84e5d2b3e14791aac6334d9c4613bd362229",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c045931-8912-6989-87f1-a22a526b3cef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07afa6ad-6eac-031b-66e1-f25f82eeac85",
  "kind": "theorem",
  "lexical_name": "iteratedDeriv_centeredXi_zero",
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
  "slug": "iteratedderiv-centeredxi-zero--a90c2011fd9559637d3a0d8b",
  "source": {
    "blob": "44eb84e5d2b3e14791aac6334d9c4613bd362229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 13,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variant6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a90c2011fd9559637d3a0d8b2d1cbd4bf89a1fd9dd966297a301b99e878b56d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variant6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07afa6ad-6eac-031b-66e1-f25f82eeac85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDeriv_centeredXi_zero (m : ℕ) :
    iteratedDeriv m centeredXi 0 = iteratedDeriv m XiToeplitz.xi (1 / 2) := by
  change iteratedDeriv m (fun u : ℂ => XiToeplitz.xi (1 / 2 + u)) 0 = _
  rw [iteratedDeriv_comp_const_add]
  simp

/-- The even complex derivative of the literal cosh kernel at its center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variant6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variant6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44eb84e5d2b3e14791aac6334d9c4613bd362229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
