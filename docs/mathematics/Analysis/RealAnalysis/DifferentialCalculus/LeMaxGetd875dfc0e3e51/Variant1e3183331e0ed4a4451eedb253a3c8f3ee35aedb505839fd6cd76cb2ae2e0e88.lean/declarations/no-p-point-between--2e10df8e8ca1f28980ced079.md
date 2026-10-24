# no_P_point_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 534,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed7ddf31-9271-0cf1-93d0-fc323433d85a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:540f3743-0317-6567-a1c7-0949012e9ca9",
  "kind": "lemma",
  "lexical_name": "no_P_point_between",
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
  "slug": "no-p-point-between--2e10df8e8ca1f28980ced079",
  "source": {
    "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 534,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e10df8e8ca1f28980ced07919ad8116fa86ab4164172922416ce5cd8e5c85a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:540f3743-0317-6567-a1c7-0949012e9ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma no_P_point_between {a b : ℝ} {P R : IPartition a b}
  (h : IsRefinement R P) (j : Fin R.n) (i : Fin (P.n + 1)) :
  ¬ (R.x j.castSucc < P.x i ∧ P.x i < R.x j.succ) := by
    exact Classical.not_not.1 fun H => no_points_between R j ( Classical.choose ( Finset.mem_image.1 ( h ( Finset.mem_image_of_mem _ ( Finset.mem_univ i ) ) ) ) ) |>.elim <| by have := Classical.choose_spec ( Finset.mem_image.1 ( h ( Finset.mem_image_of_mem _ ( Finset.mem_univ i ) ) ) ) ; aesop;

/-
If partition R refines partition P, then every subinterval of R is contained in some subinterval of P.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcbe56fb3e95f5ae54e4a85a366449427e538bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
