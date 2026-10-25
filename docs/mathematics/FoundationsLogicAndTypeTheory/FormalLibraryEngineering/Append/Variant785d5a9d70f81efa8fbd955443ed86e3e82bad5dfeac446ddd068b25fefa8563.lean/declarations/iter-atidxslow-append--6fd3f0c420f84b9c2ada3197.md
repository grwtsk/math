# Iter.atIdxSlow?_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:035c0ed4-d709-8eac-fd14-d399e6fe3f6d",
  "kind": "theorem",
  "lexical_name": "Iter.atIdxSlow?_append",
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
  "slug": "iter-atidxslow-append--6fd3f0c420f84b9c2ada3197",
  "source": {
    "blob": "c5b37b23ecc7d62c79f01d977985f0e0818351d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fd3f0c420f84b9c2ada31974dc330cc770dc0277f1897617c5fcd494bd0910e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:035c0ed4-d709-8eac-fd14-d399e6fe3f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.atIdxSlow?_append {α₁ α₂ β : Type w}
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Productive α₂ Id]
    {it₁ : Iter (α := α₁) β} {it₂ : Iter (α := α₂) β} {n : Nat} :
    (it₁.append it₂).atIdxSlow? n =
      if n < it₁.toList.length then it₁.atIdxSlow? n
      else it₂.atIdxSlow? (n - it₁.toList.length) := by
  induction n, it₁ using Iter.atIdxSlow?.induct_unfolding generalizing it₂ with
  | yield_zero it it' out h h' =>
    simp only [atIdxSlow?_eq_match (it := it.append it₂), step_append, h']
    rw [toList_eq_match_step (it := it)]
    simp [h']
  | yield_succ it it' out h h' n ih =>
    simp only [atIdxSlow?_eq_match (it := it.append it₂), step_append, h', ih]
    rw [toList_eq_match_step (it := it)]
    simp [h', Nat.succ_lt_succ_iff, Nat.succ_sub_succ]
  | skip_case n it it' h h' ih =>
    simp only [atIdxSlow?_eq_match (it := it.append it₂), step_append, h', ih]
    rw [toList_eq_match_step (it := it)]
    simp [h']
  | done_case n it h h' =>
    simp [atIdxSlow?_eq_match (it := it.append it₂), step_append, h',
      atIdxSlow?_appendSnd, toList_eq_match_step]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b37b23ecc7d62c79f01d977985f0e0818351d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
