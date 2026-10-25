# ord_cof_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:836df439-1fcf-3ba4-9005-dec6a32ca3ff",
  "kind": "theorem",
  "lexical_name": "ord_cof_eq",
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
  "slug": "ord-cof-eq--e75ed4b603ea6dead44f9d53",
  "source": {
    "blob": "91dc1cb0e2e93f5c35363983ae9ddf88f9b5ddf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e75ed4b603ea6dead44f9d53849fa217949f9fb745e76ce9301ff1e2c084fe2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:836df439-1fcf-3ba4-9005-dec6a32ca3ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ord_cof_eq (r : α → α → Prop) [IsWellOrder α r] :
    ∃ S, Unbounded r S ∧ type (Subrel r S) = (cof (type r)).ord := by
  let ⟨S, hS, e⟩ := cof_eq r
  let ⟨s, _, e'⟩ := Cardinal.ord_eq S
  let T : Set α := { a | ∃ aS : a ∈ S, ∀ b : S, s b ⟨_, aS⟩ → r b a }
  suffices : Unbounded r T
  · refine' ⟨T, this, le_antisymm _ (Cardinal.ord_le.2 <| cof_type_le this)⟩
    rw [← e, e']
    refine'
      (RelEmbedding.ofMonotone
          (fun a : T =>
            (⟨a,
                let ⟨aS, _⟩ := a.2
                aS⟩ :
              S))
          fun a b h => _).ordinal_type_le
    rcases a with ⟨a, aS, ha⟩
    rcases b with ⟨b, bS, hb⟩
    change s ⟨a, _⟩ ⟨b, _⟩
    refine' ((trichotomous_of s _ _).resolve_left fun hn => _).resolve_left _
    · exact asymm h (ha _ hn)
    · intro e
      injection e with e
      subst b
      exact irrefl _ h
  · intro a
    have : { b : S | ¬r b a }.Nonempty :=
      let ⟨b, bS, ba⟩ := hS a
      ⟨⟨b, bS⟩, ba⟩
    let b := (IsWellFounded.wf : WellFounded s).min _ this
    have ba : ¬r b a := IsWellFounded.wf.min_mem _ this
    refine' ⟨b, ⟨b.2, fun c => not_imp_not.1 fun h => _⟩, ba⟩
    rw [show ∀ b : S, (⟨b, b.2⟩ : S) = b by intro b; cases b; rfl]
    exact IsWellFounded.wf.not_lt_min _ this (IsOrderConnected.neg_trans h ba)
#align ordinal.ord_cof_eq Ordinal.ord_cof_eq

/-! ### Cofinality of suprema and least strict upper bounds -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91dc1cb0e2e93f5c35363983ae9ddf88f9b5ddf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
