# foldrM_start_stop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52d44547-1ee5-961e-aab1-cab9a6a3a9fa",
  "kind": "theorem",
  "lexical_name": "foldrM_start_stop",
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
  "slug": "foldrm-start-stop--4d139d2d0cbd91bd17a40690",
  "source": {
    "blob": "1812a095ab5e84d89a8d03a9f40790d49e3e697d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3013,
    "line": 2973,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d139d2d0cbd91bd17a4069099b123438c1b888e06533a9fd1d91fe5f28f2b0d",
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

Occurrence: `result:52d44547-1ee5-961e-aab1-cab9a6a3a9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2973–3013.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldrM_start_stop {m} [Monad m] {xs : Array α} {f : α → β → m β} {b} {start stop : Nat} :
    xs.foldrM f b start stop = (xs.extract stop start).foldrM f b := by
  unfold foldrM
  simp only [size_extract, Nat.le_refl, ↓reduceDIte]
  suffices stop ≤ min start xs.size →
      foldrM.fold f xs stop (min start xs.size) (by omega) b =
        foldrM.fold f (xs.extract stop start) 0 (min start xs.size - stop) (by simp) b by
    split
    · split
      · rw [if_pos (by omega)]
        have h : min start xs.size = start := by omega
        specialize this (by omega)
        simp_all
      · rw [if_neg (by omega)]
    · split
      · rw [if_pos (by omega)]
        have h : min start xs.size = xs.size := by omega
        specialize this (by omega)
        simp_all
      · rw [if_neg (by omega)]
  revert b
  suffices ∀ (b : β) (i) (w : stop + i ≤ min start xs.size),
      foldrM.fold f xs stop (stop + i) (by omega) b =
        foldrM.fold f (xs.extract stop start) 0 i (by simp; omega) b by
    intro b w
    specialize this b (min start xs.size - stop)
    have h : stop + (min start xs.size - stop) = min start xs.size := by omega
    simp_all
  intro b i w
  induction i generalizing b with
  | zero =>
    unfold foldrM.fold
    simp
  | succ i ih =>
    unfold foldrM.fold
    simp only [beq_iff_eq, Nat.add_eq_left, Nat.add_one_ne_zero, ↓reduceIte, Nat.add_eq,
      getElem_extract]
    congr
    funext b
    simp [ih b (by omega)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean#L2973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1812a095ab5e84d89a8d03a9f40790d49e3e697d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
