# Iter.atIdxSlow?_append_of_productive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a82ac144-173b-6ab7-f357-7ff2376e3dc3",
  "kind": "theorem",
  "lexical_name": "Iter.atIdxSlow?_append_of_productive",
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
  "slug": "iter-atidxslow-append-of-productive--3b848cff8ecba8d51e2b16ec",
  "source": {
    "blob": "c5b37b23ecc7d62c79f01d977985f0e0818351d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b848cff8ecba8d51e2b16ecf508bc7ec8317212b302fd052e497247bd8f4fc9",
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

Occurrence: `result:a82ac144-173b-6ab7-f357-7ff2376e3dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.atIdxSlow?_append_of_productive {α₁ α₂ β : Type w}
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Productive α₁ Id] [Productive α₂ Id]
    {it₁ : Iter (α := α₁) β} {it₂ : Iter (α := α₂) β} {n k : Nat}
    (hk : it₁.atIdxSlow? k = none)
    (hmin : ∀ j, j < k → (it₁.atIdxSlow? j).isSome)
    (hle : k ≤ n) :
    (it₁.append it₂).atIdxSlow? n = it₂.atIdxSlow? (n - k) := by
  induction n, it₁ using Iter.atIdxSlow?.induct_unfolding generalizing k it₂ with
  | yield_zero it it' out hp h' =>
    exfalso
    have : k = 0 := by omega
    subst this
    rw [atIdxSlow?_eq_match (it := it)] at hk
    simp [h'] at hk
  | yield_succ it it' out hp h' n ih =>
    rw [atIdxSlow?_eq_match (it := it.append it₂)]
    simp only [step_append, h']
    match k with
    | 0 =>
      rw [atIdxSlow?_eq_match (it := it)] at hk
      simp [h'] at hk
    | k + 1 =>
      rw [atIdxSlow?_eq_match (it := it)] at hk
      simp [h'] at hk
      have hmin' : ∀ j, j < k → (it'.atIdxSlow? j).isSome := by
        intro j hj
        have h := hmin (j + 1) (by omega)
        rw [atIdxSlow?_eq_match (it := it)] at h
        simpa [h'] using h
      rw [ih hk hmin' (by omega)]
      congr 1
      omega
  | skip_case n it it' hp h' ih =>
    rw [atIdxSlow?_eq_match (it := it.append it₂)]
    simp only [step_append, h']
    rw [atIdxSlow?_eq_match (it := it)] at hk; simp [h'] at hk
    have hmin' : ∀ j, j < k → (it'.atIdxSlow? j).isSome := by
      intro j hj
      have h := hmin j hj
      rw [atIdxSlow?_eq_match (it := it)] at h
      simpa [h'] using h
    exact ih hk hmin' hle
  | done_case n it hp h' =>
    rw [atIdxSlow?_eq_match (it := it.append it₂)]
    simp only [step_append, h', atIdxSlow?_appendSnd]
    have hk0 : k = 0 := by
      false_or_by_contra
      have h := hmin 0 (by omega)
      rw [atIdxSlow?_eq_match (it := it)] at h
      simp [h'] at h
    simp [hk0]

end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b37b23ecc7d62c79f01d977985f0e0818351d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
