# foldlM_start_stop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e1425d4-42ac-3d4f-3b6c-f1112a143019",
  "kind": "theorem",
  "lexical_name": "foldlM_start_stop",
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
  "slug": "foldlm-start-stop--0701e157edf82974f4015aa0",
  "source": {
    "blob": "1812a095ab5e84d89a8d03a9f40790d49e3e697d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2972,
    "line": 2936,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0701e157edf82974f4015aa00839aea04a1a00c98c01013e7d1a59de4ae52c9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1425d4-42ac-3d4f-3b6c-f1112a143019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2936–2972.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldlM_start_stop {m} [Monad m] {xs : Array α} {f : β → α → m β} {b} {start stop : Nat} :
    xs.foldlM f b start stop = (xs.extract start stop).foldlM f b := by
  unfold foldlM
  simp only [Nat.sub_zero, size_extract, Nat.le_refl, ↓reduceDIte]
  suffices foldlM.loop f xs (min stop xs.size) (by omega) (min stop xs.size - start) start b =
      foldlM.loop f (xs.extract start stop) (min stop xs.size - start) (by simp) (min stop xs.size - start) 0 b by
    split
    · have : min stop xs.size = stop := by omega
      simp_all
    · have : min stop xs.size = xs.size := by omega
      simp_all
  revert b
  suffices ∀ (b : β) (i k) (w : i + k = min stop xs.size - start),
    foldlM.loop f xs (min stop xs.size) (by omega) i (start + k) b =
      foldlM.loop f (xs.extract start stop) (min stop xs.size - start) (by simp) i k b by
    intro b
    simpa using this b (min stop xs.size - start) 0 (by omega)
  intro b i k w
  induction i generalizing b k with
  | zero =>
    simp only [Nat.zero_add] at w
    subst k
    simp [foldlM.loop]
  | succ i ih =>
    unfold foldlM.loop
    rw [dif_pos (by omega), dif_pos (by omega)]
    split <;> rename_i h
    · rfl
    · simp at h
      subst h
      simp only [getElem_extract]
      congr
      funext b
      specialize ih b (k + 1) (by omega)
      simp [← Nat.add_assoc] at ih
      rw [ih]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean#L2936).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1812a095ab5e84d89a8d03a9f40790d49e3e697d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
