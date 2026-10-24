# sizeUpTo_sizeUpTo_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:748f09e0-37d2-3b78-dbfe-a73ec1ab37f8",
  "kind": "theorem",
  "lexical_name": "sizeUpTo_sizeUpTo_add",
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
  "slug": "sizeupto-sizeupto-add--b12475751178a049795270b6",
  "source": {
    "blob": "3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1123,
    "line": 1071,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b12475751178a049795270b60ed9df9cb848a4b6027b9a7008cb9c9181a56a24",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:748f09e0-37d2-3b78-dbfe-a73ec1ab37f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1071–1123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sizeUpTo_sizeUpTo_add (a : Composition n) (b : Composition a.length) {i j : ℕ}
    (hi : i < b.length) (hj : j < blocksFun b ⟨i, hi⟩) :
    sizeUpTo a (sizeUpTo b i + j) =
      sizeUpTo (a.gather b) i +
        sizeUpTo (sigmaCompositionAux a b ⟨i, (length_gather a b).symm ▸ hi⟩) j := by
  induction j with
  | zero =>
    show
      sum (take (b.blocks.take i).sum a.blocks) =
        sum (take i (map sum (splitWrtComposition a.blocks b)))
    induction' i with i IH
    · rfl
    · have A : i < b.length := Nat.lt_of_succ_lt hi
      have B : i < List.length (map List.sum (splitWrtComposition a.blocks b)) := by simp [A]
      have C : 0 < blocksFun b ⟨i, A⟩ := Composition.blocks_pos' _ _ _
      rw [sum_take_succ _ _ B, ← IH A C]
      have :
        take (sum (take i b.blocks)) a.blocks =
          take (sum (take i b.blocks)) (take (sum (take (i + 1) b.blocks)) a.blocks) := by
        rw [take_take, min_eq_left]
        apply monotone_sum_take _ (Nat.le_succ _)
      rw [this, getElem_map, getElem_splitWrtComposition, ←
        take_append_drop (sum (take i b.blocks)) (take (sum (take (Nat.succ i) b.blocks)) a.blocks),
        sum_append]
      congr
      rw [take_append_drop]
  | succ j IHj =>
    have A : j < blocksFun b ⟨i, hi⟩ := lt_trans (lt_add_one j) hj
    have B : j < length (sigmaCompositionAux a b ⟨i, (length_gather a b).symm ▸ hi⟩) := by
      convert A; rw [← length_sigmaCompositionAux]
    have C : sizeUpTo b i + j < sizeUpTo b (i + 1) := by
      simp only [sizeUpTo_succ b hi, add_lt_add_iff_left]
      exact A
    have D : sizeUpTo b i + j < length a := lt_of_lt_of_le C (b.sizeUpTo_le _)
    have : sizeUpTo b i + Nat.succ j = (sizeUpTo b i + j).succ := rfl
    rw [this, sizeUpTo_succ _ D, IHj A, sizeUpTo_succ _ B]
    simp only [sigmaCompositionAux, add_assoc, add_left_inj, Fin.val_mk]
    rw [getElem_of_eq (getElem_splitWrtComposition _ _ _ _), getElem_drop, getElem_take]

/-- Natural equivalence between `(Σ (a : Composition n), Composition a.length)` and
`(Σ (c : Composition n), Π (i : Fin c.length), Composition (c.blocksFun i))`, that shows up as a
change of variables in the proof that composition of formal multilinear series is associative.

Consider a composition `a` of `n` and a composition `b` of `a.length`. Then `b` indicates how to
group together some blocks of `a`, giving altogether `b.length` blocks of blocks. These blocks of
blocks can be called `d₀, ..., d_{a.length - 1}`, and one obtains a composition `c` of `n` by
saying that each `dᵢ` is one single block. The map `⟨a, b⟩ → ⟨c, (d₀, ..., d_{a.length - 1})⟩` is
the direct map in the equiv.

Conversely, if one starts from `c` and the `dᵢ`s, one can join the `dᵢ`s to obtain a composition
`a` of `n`, and register the lengths of the `dᵢ`s in a composition `b` of `a.length`. This is the
inverse map of the equiv.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean#L1071).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
