# exists_lt_mem_inter_of_not_pairwiseDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f5400b6-6bb2-d0a1-636f-4a764ab4650d",
  "kind": "lemma",
  "lexical_name": "exists_lt_mem_inter_of_not_pairwiseDisjoint",
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
  "slug": "exists-lt-mem-inter-of-not-pairwisedisjoint--0c15f6fa49e1be29352c80e5",
  "source": {
    "blob": "b1a8b46d5a6a503fdfef8322b16c315431a61387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta533138d8d52769d2ec11af0c3f9efc3414d125d70cedb31581da729825ab7e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c15f6fa49e1be29352c80e50600686df8142ab39ab0cf5cfe7d854d38879398",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta533138d8d52769d2ec11af0c3f9efc3414d125d70cedb31581da729825ab7e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f5400b6-6bb2-d0a1-636f-4a764ab4650d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_lt_mem_inter_of_not_pairwiseDisjoint [LinearOrder ι]
    {f : ι → Set α} (h : ¬ s.PairwiseDisjoint f) :
    ∃ i ∈ s, ∃ j ∈ s, ∃ (_hij : i < j) (x : α), x ∈ f i ∩ f j := by
  obtain ⟨i, hi, j, hj, hne, x, hx₁, hx₂⟩ := exists_ne_mem_inter_of_not_pairwiseDisjoint h
  cases' lt_or_lt_iff_ne.mpr hne with h_lt h_lt
  · exact ⟨i, hi, j, hj, h_lt, x, hx₁, hx₂⟩
  · exact ⟨j, hj, i, hi, h_lt, x, hx₂, hx₁⟩

end Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta533138d8d52769d2ec11af0c3f9efc3414d125d70cedb31581da729825ab7e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta533138d8d52769d2ec11af0c3f9efc3414d125d70cedb31581da729825ab7e2.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a8b46d5a6a503fdfef8322b16c315431a61387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
