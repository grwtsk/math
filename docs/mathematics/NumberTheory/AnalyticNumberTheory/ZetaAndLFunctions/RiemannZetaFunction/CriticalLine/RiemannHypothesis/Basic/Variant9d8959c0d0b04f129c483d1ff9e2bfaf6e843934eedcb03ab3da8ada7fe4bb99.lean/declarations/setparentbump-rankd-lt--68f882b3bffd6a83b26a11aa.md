# setParentBump_rankD_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4e5c591b155873cac058a579c12eab1348d52bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d8959c0d0b04f129c483d1ff9e2bfaf6e843934eedcb03ab3da8ada7fe4bb99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:711a1d13-cb11-ce9c-1941-93132e11d0b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff2074c4-4459-67bd-74aa-8bffac55f1aa",
  "kind": "theorem",
  "lexical_name": "setParentBump_rankD_lt",
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
  "slug": "setparentbump-rankd-lt--68f882b3bffd6a83b26a11aa",
  "source": {
    "blob": "a4e5c591b155873cac058a579c12eab1348d52bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 454,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant9d8959c0d0b04f129c483d1ff9e2bfaf6e843934eedcb03ab3da8ada7fe4bb99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68f882b3bffd6a83b26a11aa21f0a35702827233c34b84d84ddf4a6e4b2c4857",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant9d8959c0d0b04f129c483d1ff9e2bfaf6e843934eedcb03ab3da8ada7fe4bb99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff2074c4-4459-67bd-74aa-8bffac55f1aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setParentBump_rankD_lt {arr : Array UFNode} {x y : Fin arr.size}
    (hroot : arr[x.1].rank < arr[y.1].rank ∨ arr[y.1].parent = y)
    (H : arr[x.1].rank ≤ arr[y.1].rank) {i : Nat}
    (rankD_lt : parentD arr i ≠ i → rankD arr i < rankD arr (parentD arr i))
    (hP : parentD arr' i = if x.1 = i then y.1 else parentD arr i)
    (hR : ∀ {i}, rankD arr' i =
      if y.1 = i ∧ arr[x.1].rank = arr[y.1].rank then
        arr[y.1].rank + 1
      else rankD arr i) :
    ¬parentD arr' i = i → rankD arr' i < rankD arr' (parentD arr' i) := by
  simp only [ne_eq, hP, hR, implies_true] at *; split <;> rename_i h₁ <;> [simp [← h₁]; skip] <;>
    split <;> rename_i h₂ <;> intro h
  · simp [h₂] at h
  · simp only [rankD_eq, x.2, y.2]
    split <;> rename_i h₃
    · rw [← h₃]; apply Nat.lt_succ_self
    · exact Nat.lt_of_le_of_ne H h₃
  · cases h₂.1
    simp only [h₂.2, false_or, Nat.lt_irrefl] at hroot
    simp only [hroot, parentD_eq y.2, not_true_eq_false] at h
  · have := rankD_lt h
    split <;> rename_i h₃
    · rw [← rankD_eq, h₃.1]; exact Nat.lt_succ_of_lt this
    · exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant9d8959c0d0b04f129c483d1ff9e2bfaf6e843934eedcb03ab3da8ada7fe4bb99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant9d8959c0d0b04f129c483d1ff9e2bfaf6e843934eedcb03ab3da8ada7fe4bb99.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4e5c591b155873cac058a579c12eab1348d52bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
