# mem_intervalInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 509,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6909551e-6a9a-e3d2-7225-a9c6bc2faf85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:616e5bf2-9f10-385c-1425-d1277e4edf94",
  "kind": "theorem",
  "lexical_name": "mem_intervalInter",
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
  "slug": "mem-intervalinter--f3c5d14e72896a82a99d5654",
  "source": {
    "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 509,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c5d14e72896a82a99d5654cf8ece2b7455594f0384e9f995e718231e5761dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:616e5bf2-9f10-385c-1425-d1277e4edf94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_intervalInter {x : ℝ} {I J : IntervalRat}
    (hI : x ∈ I) (hJ : x ∈ J) : x ∈ intervalInter I J := by
  simp only [intervalInter]
  simp only [IntervalRat.mem_def] at hI hJ ⊢
  have hlo : (I.lo : ℝ) ⊔ J.lo ≤ x := sup_le hI.1 hJ.1
  have hhi : x ≤ (I.hi : ℝ) ⊓ J.hi := le_inf hI.2 hJ.2
  by_cases h : max I.lo J.lo ≤ min I.hi J.hi
  · simp only [h, ↓reduceDIte]
    constructor
    · simp only [Rat.cast_max]
      exact hlo
    · simp only [Rat.cast_min]
      exact hhi
  · simp only [h, ↓reduceDIte]
    split_ifs with hw
    · exact hI
    · exact hJ

/-- Union of intervals (convex hull) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d8275605f9330d9f6c605d3575ae249178b6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
