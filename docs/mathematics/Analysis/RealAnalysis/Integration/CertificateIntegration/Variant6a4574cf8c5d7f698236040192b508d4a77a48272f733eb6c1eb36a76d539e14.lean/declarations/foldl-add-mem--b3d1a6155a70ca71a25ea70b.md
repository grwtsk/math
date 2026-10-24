# foldl_add_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8862351-7d0c-fb6d-d74f-38b8d6c9517d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f4e9f91-ec46-5e77-8b60-81a443f5c6ea",
  "kind": "theorem",
  "lexical_name": "foldl_add_mem",
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
  "slug": "foldl-add-mem--b3d1a6155a70ca71a25ea70b",
  "source": {
    "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 265,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d1a6155a70ca71a25ea70ba7408ae2a5c3a71247bbcb2a6dafb818b3d905e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f4e9f91-ec46-5e77-8b60-81a443f5c6ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem foldl_add_mem (acc : IntervalRat) (accVal : ℝ) (hacc : accVal ∈ acc)
    (vals : List ℝ) (intervals : List IntervalRat)
    (hlen : vals.length = intervals.length)
    (hmem : ∀ i (hi : i < vals.length),
      (vals[i] : ℝ) ∈ (intervals[i]'(hlen ▸ hi) : IntervalRat)) :
    accVal + vals.sum ∈ (intervals.foldl (fun a I => IntervalRat.add a I) acc) := by
  induction vals generalizing acc accVal intervals with
  | nil =>
    simp only [List.length_nil] at hlen
    cases intervals with
    | nil => simp [hacc]
    | cons h t => simp at hlen
  | cons v vs ih =>
    cases intervals with
    | nil => simp at hlen
    | cons I Is =>
      simp only [List.length_cons, add_left_inj] at hlen
      simp only [List.foldl_cons, List.sum_cons]
      -- accVal + (v + vs.sum) = (accVal + v) + vs.sum
      rw [← add_assoc]
      -- Show accVal + v ∈ IntervalRat.add acc I
      have hacc' : accVal + v ∈ IntervalRat.add acc I := by
        apply IntervalRat.mem_add hacc
        exact hmem 0 (by simp)
      -- Show remaining membership
      have hmem' : ∀ (i : ℕ) (hi : i < vs.length), vs[i] ∈ Is[i] := by
        intro i hi
        have h := hmem (i + 1) (by simp; omega)
        simp only [List.getElem_cons_succ] at h
        convert h using 1
      exact ih (IntervalRat.add acc I) (accVal + v) hacc' Is hlen hmem'

/-- Sum of values in intervals is in the sum interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335e39587dbaa85521f4e8fc941808c68eeeb679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
