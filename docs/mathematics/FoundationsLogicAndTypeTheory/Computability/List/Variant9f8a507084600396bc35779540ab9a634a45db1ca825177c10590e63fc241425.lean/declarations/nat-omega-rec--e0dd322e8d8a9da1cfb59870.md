# nat_omega_rec'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af6cd1fe-3e19-9f79-221f-2216604c1345",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcceb0c1-56e6-92d7-179a-5e3df330a2a8",
  "kind": "theorem",
  "lexical_name": "nat_omega_rec'",
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
  "slug": "nat-omega-rec--e0dd322e8d8a9da1cfb59870",
  "source": {
    "blob": "1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 306,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0dd322e8d8a9da1cfb598706f817a7dd5dc7bc699236e837cc3ae87f0366d4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcceb0c1-56e6-92d7-179a-5e3df330a2a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_omega_rec' (f : β → σ) {m : β → ℕ} {l : β → List β} {g : β → List σ → Option σ}
    (hm : Primrec m) (hl : Primrec l) (hg : Primrec₂ g)
    (Ord : ∀ b, ∀ b' ∈ l b, m b' < m b)
    (H : ∀ b, g b ((l b).map f) = some (f b)) : Primrec f := by
  have : DecidableEq β := Encodable.decidableEqOfEncodable β
  let mapGraph (M : List (β × σ)) (bs : List β) : List σ := bs.flatMap (Option.toList <| M.lookup ·)
  let bindList (b : β) : ℕ → List β := fun n ↦ n.rec [b] fun _ bs ↦ bs.flatMap l
  let graph (b : β) : ℕ → List (β × σ) := fun i ↦ i.rec [] fun i ih ↦
    (bindList b (m b - i)).filterMap fun b' ↦ (g b' <| mapGraph ih (l b')).map (b', ·)
  have mapGraph_primrec : Primrec₂ mapGraph :=
    to₂ <| list_flatMap snd <| optionToList.comp₂ <| listLookup.comp₂ .right (fst.comp₂ .left)
  have bindList_primrec : Primrec₂ (bindList) :=
    nat_rec' snd
      (list_cons.comp fst (const []))
      (to₂ <| list_flatMap (snd.comp snd) (hl.comp₂ .right))
  have graph_primrec : Primrec₂ (graph) :=
    to₂ <| nat_rec' snd (const []) <|
      to₂ <| listFilterMap
        (bindList_primrec.comp
          (fst.comp fst)
          (nat_sub.comp (hm.comp <| fst.comp fst) (fst.comp snd))) <|
            to₂ <| option_map
              (hg.comp snd (mapGraph_primrec.comp (snd.comp <| snd.comp fst) (hl.comp snd)))
              (Primrec₂.pair.comp₂ (snd.comp₂ .left) .right)
  have : Primrec (fun b => (graph b (m b + 1))[0]?.map Prod.snd) :=
    option_map (list_getElem?.comp (graph_primrec.comp Primrec.id (succ.comp hm)) (const 0))
      (snd.comp₂ Primrec₂.right)
  exact option_some_iff.mp <| this.of_eq <| fun b ↦ by
    have graph_eq_map_bindList (i : ℕ) (hi : i ≤ m b + 1) :
        graph b i = (bindList b (m b + 1 - i)).map fun x ↦ (x, f x) := by
      have bindList_eq_nil : bindList b (m b + 1) = [] :=
        have bindList_m_lt (k : ℕ) : ∀ b' ∈ bindList b k, m b' < m b + 1 - k := by
          induction k with
          | zero => simp [bindList]
          | succ k ih => grind
        List.eq_nil_iff_forall_not_mem.mpr
          (by intro b' ha'; by_contra; simpa using bindList_m_lt (m b + 1) b' ha')
      have mapGraph_graph {bs bs' : List β} (has : bs' ⊆ bs) :
          mapGraph (bs.map <| fun x => (x, f x)) bs' = bs'.map f := by
        induction bs' with
        | nil => simp [mapGraph]
        | cons b bs' ih =>
          have : b ∈ bs ∧ bs' ⊆ bs := by simpa using has
          rcases this with ⟨ha, has'⟩
          simpa [mapGraph, List.lookup_graph f ha] using ih has'
      have graph_succ : ∀ i, graph b (i + 1) =
        (bindList b (m b - i)).filterMap fun b' =>
          (g b' <| mapGraph (graph b i) (l b')).map (b', ·) := fun _ => rfl
      have bindList_succ : ∀ i, bindList b (i + 1) = (bindList b i).flatMap l := fun _ => rfl
      induction i with
      | zero => symm; simpa [graph] using bindList_eq_nil
      | succ i ih =>
        simp only [graph_succ, ih (Nat.le_of_lt hi), Nat.succ_sub (Nat.le_of_lt_succ hi),
          Nat.succ_eq_add_one, bindList_succ, Nat.reduceSubDiff]
        apply List.filterMap_eq_map_iff_forall_eq_some.mpr
        intro b' ha'; simp only [Option.map_eq_some_iff, Prod.mk.injEq, true_and, exists_eq_right]
        rw [mapGraph_graph]
        · exact H b'
        · exact (List.infix_flatMap_of_mem ha' l).subset
    simp [graph_eq_map_bindList (m b + 1) (Nat.le_refl _), bindList]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
