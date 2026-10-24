# foldl_add_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c0d39a7-37f7-4231-4db8-1b81bb3318c2",
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
  "slug": "foldl-add-mem--2b31fc6d9cdd09a3287f4885",
  "source": {
    "blob": "823024257f25d2ab06d8e4b433ae52ba395d781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b31fc6d9cdd09a3287f48855499c9cb8c780cd28a6e0eca43a886043a78bfcd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c0d39a7-37f7-4231-4db8-1b81bb3318c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–305.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823024257f25d2ab06d8e4b433ae52ba395d781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
