# cof_eq_one_iff_is_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c02ebbb6-1ca6-1cf8-7a19-7dcf65cc3fc6",
  "kind": "theorem",
  "lexical_name": "cof_eq_one_iff_is_succ",
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
  "slug": "cof-eq-one-iff-is-succ--96560a9ecf576a08888667cf",
  "source": {
    "blob": "71ca5b32cb36542d19ecc36089cd53f434e5baee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 407,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantf594d9e6699b8aa89cc472841e925cba43686667ef3b45b4a168f07b475c9cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96560a9ecf576a08888667cf978e9dc8505b987879dbd771b8f34095dfd70d18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantf594d9e6699b8aa89cc472841e925cba43686667ef3b45b4a168f07b475c9cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c02ebbb6-1ca6-1cf8-7a19-7dcf65cc3fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cof_eq_one_iff_is_succ {o} : cof.{u} o = 1 ↔ ∃ a, o = succ a :=
  ⟨inductionOn o fun α r _ z => by
      rcases cof_eq r with ⟨S, hl, e⟩; rw [z] at e
      obtain ⟨a⟩ := mk_ne_zero_iff.1 (by rw [e]; exact one_ne_zero)
      refine
        ⟨typein r a,
          Eq.symm <|
            Quotient.sound
              ⟨RelIso.ofSurjective (RelEmbedding.ofMonotone ?_ fun x y => ?_) fun x => ?_⟩⟩
      · apply Sum.rec <;> [exact Subtype.val; exact fun _ => a]
      · rcases x with (x | ⟨⟨⟨⟩⟩⟩) <;> rcases y with (y | ⟨⟨⟨⟩⟩⟩) <;>
          simp [Subrel, Order.Preimage, EmptyRelation]
        exact x.2
      · suffices r x a ∨ ∃ _ : PUnit.{u}, ↑a = x by
          convert this
          dsimp [RelEmbedding.ofMonotone]; simp
        rcases trichotomous_of r x a with (h | h | h)
        · exact Or.inl h
        · exact Or.inr ⟨PUnit.unit, h.symm⟩
        · rcases hl x with ⟨a', aS, hn⟩
          refine absurd h ?_
          convert hn
          change (a : α) = ↑(⟨a', aS⟩ : S)
          have := le_one_iff_subsingleton.1 (le_of_eq e)
          congr!,
    fun ⟨a, e⟩ => by simp [e]⟩

/-! ### Fundamental sequences -/

-- TODO: move stuff about fundamental sequences to their own file.

/-- A fundamental sequence for `a` is an increasing sequence of length `o = cof a` that converges at
    `a`. We provide `o` explicitly in order to avoid type rewrites. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantf594d9e6699b8aa89cc472841e925cba43686667ef3b45b4a168f07b475c9cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantf594d9e6699b8aa89cc472841e925cba43686667ef3b45b4a168f07b475c9cb2.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71ca5b32cb36542d19ecc36089cd53f434e5baee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
