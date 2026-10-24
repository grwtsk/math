# mapFinIdx_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6faa56d9-aace-b2a0-e7b4-989977cf5b5b",
  "kind": "theorem",
  "lexical_name": "mapFinIdx_induction",
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
  "slug": "mapfinidx-induction--4fb6acb32478e4e588e85c30",
  "source": {
    "blob": "b46f573f6e801e8bb72f6e9bb694c4bef87dadd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variante2c37d47f29dfd05ca9efd8c48710fa2e3e4ceb0d6ef59b8c3642d208ecf33ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fb6acb32478e4e588e85c30c904cb4da7b8c207bfbc3188cc7112ae2271929b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variante2c37d47f29dfd05ca9efd8c48710fa2e3e4ceb0d6ef59b8c3642d208ecf33ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6faa56d9-aace-b2a0-e7b4-989977cf5b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapFinIdx_induction (xs : Array α) (f : (i : Nat) → α → (h : i < xs.size) → β)
    (motive : Nat → Prop) (h0 : motive 0)
    (p : (i : Nat) → β → (h : i < xs.size) → Prop)
    (hs : ∀ i h, motive i → p i (f i xs[i] h) h ∧ motive (i + 1)) :
    motive xs.size ∧ ∃ eq : (Array.mapFinIdx xs f).size = xs.size,
      ∀ i h, p i ((Array.mapFinIdx xs f)[i]) h := by
  let rec go {bs i j h} (h₁ : j = bs.size) (h₂ : ∀ i h h', p i bs[i] h) (hm : motive j) :
    let as : Array β := Id.run <| Array.mapFinIdxM.map xs (pure <| f · · ·) i j h bs
    motive xs.size ∧ ∃ eq : as.size = xs.size, ∀ i h, p i as[i] h := by
    induction i generalizing j bs with simp [mapFinIdxM.map]
    | zero =>
      have := (Nat.zero_add _).symm.trans h
      exact ⟨this ▸ hm, h₁ ▸ this, fun _ _ => h₂ ..⟩
    | succ i ih =>
      apply @ih (bs.push (f j xs[j] (by omega))) (j + 1) (by omega) (by simp; omega)
      · intro i i_lt h'
        rw [getElem_push]
        split
        · apply h₂
        · simp only [size_push] at h'
          obtain rfl : i = j := by omega
          apply (hs i (by omega) hm).1
      · exact (hs j (by omega) hm).2
  simp [mapFinIdx, mapFinIdxM]; exact go rfl nofun h0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variante2c37d47f29dfd05ca9efd8c48710fa2e3e4ceb0d6ef59b8c3642d208ecf33ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variante2c37d47f29dfd05ca9efd8c48710fa2e3e4ceb0d6ef59b8c3642d208ecf33ea.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b46f573f6e801e8bb72f6e9bb694c4bef87dadd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
