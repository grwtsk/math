# integral_sub_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19747a22de61254525bf1a65bbd96596666286a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c223ab1-b56d-c27c-3f80-7b4846771f41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13850945-7b5a-028b-46c7-a81354901c52",
  "kind": "theorem",
  "lexical_name": "integral_sub_right",
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
  "slug": "integral-sub-right--f58cacdf7e87f9ab56bf41a2",
  "source": {
    "blob": "19747a22de61254525bf1a65bbd96596666286a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58cacdf7e87f9ab56bf41a2463f88944cacbd1da060337fc82ab5b3ab931bc7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13850945-7b5a-028b-46c7-a81354901c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_sub_right (ε : ℝ) (_hε : 0 < ε) (_hε1 : ε < 1) :
    ∫ t in (1 + ε)..(2 : ℝ), 1 / log t = ∫ u in ε..1, 1 / log (1 + u) := by
  have h := intervalIntegral.integral_comp_add_right (fun x => 1 / log x) 1
    (a := ε) (b := 1)
  simp only [show ε + (1 : ℝ) = 1 + ε from by ring, show (1 : ℝ) + 1 = 2 from by ring]
    at h
  simpa [show ∀ u : ℝ, 1 / log (u + 1) = 1 / log (1 + u) from fun u ↦ by ring_nf]
    using h.symm

/-- The principal value integral for li(2) equals ∫_ε^1 g(u) du. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19747a22de61254525bf1a65bbd96596666286a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
