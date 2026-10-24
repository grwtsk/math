# foldrM_start_stop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d394abc85a852644392157668b505932dd3f7780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2965,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43cb3114-2752-3e68-4523-65983ad9fbb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca1659cb-639c-591f-45c4-b051680fe95c",
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
  "slug": "foldrm-start-stop--780345083dc3437eac3348f6",
  "source": {
    "blob": "d394abc85a852644392157668b505932dd3f7780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3005,
    "line": 2965,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:780345083dc3437eac3348f66bbc01d1a9ea5721ebc266a2279c26bd7ca7117f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca1659cb-639c-591f-45c4-b051680fe95c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2965–3005.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean#L2965).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d394abc85a852644392157668b505932dd3f7780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
