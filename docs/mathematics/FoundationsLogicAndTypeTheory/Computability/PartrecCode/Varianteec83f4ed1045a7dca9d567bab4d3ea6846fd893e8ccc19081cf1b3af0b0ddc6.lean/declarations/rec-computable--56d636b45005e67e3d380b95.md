# rec_computable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95d5c55f26b17c9c406904ac60a0b4aa61f8ee85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da107d53-2adb-aaa9-cb12-79eb64f48e52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3de1a9b6-d939-4a06-474b-de1ffa630cc6",
  "kind": "theorem",
  "lexical_name": "rec_computable",
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
  "slug": "rec-computable--56d636b45005e67e3d380b95",
  "source": {
    "blob": "95d5c55f26b17c9c406904ac60a0b4aa61f8ee85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 499,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d636b45005e67e3d380b95a82e080b84942752fc62c9b3965356270404baaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3de1a9b6-d939-4a06-474b-de1ffa630cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rec_computable {α σ} [Primcodable α] [Primcodable σ] {c : α → Code} (hc : Computable c)
    {z : α → σ} (hz : Computable z) {s : α → σ} (hs : Computable s) {l : α → σ} (hl : Computable l)
    {r : α → σ} (hr : Computable r) {pr : α → Code × Code × σ × σ → σ} (hpr : Computable₂ pr)
    {co : α → Code × Code × σ × σ → σ} (hco : Computable₂ co) {pc : α → Code × Code × σ × σ → σ}
    (hpc : Computable₂ pc) {rf : α → Code × σ → σ} (hrf : Computable₂ rf) :
    let PR (a) cf cg hf hg := pr a (cf, cg, hf, hg)
    let CO (a) cf cg hf hg := co a (cf, cg, hf, hg)
    let PC (a) cf cg hf hg := pc a (cf, cg, hf, hg)
    let RF (a) cf hf := rf a (cf, hf)
    let F (a : α) (c : Code) : σ :=
      Nat.Partrec.Code.recOn c (z a) (s a) (l a) (r a) (PR a) (CO a) (PC a) (RF a)
    Computable fun a => F a (c a) := by
  -- TODO(Mario): less copy-paste from previous proof
  intros _ _ _ _ F
  let G₁ : (α × List σ) × ℕ × ℕ → Option σ := fun p =>
    let a := p.1.1
    let IH := p.1.2
    let n := p.2.1
    let m := p.2.2
    (IH.get? m).bind fun s =>
      (IH.get? m.unpair.1).bind fun s₁ =>
        (IH.get? m.unpair.2).map fun s₂ =>
          cond n.bodd
            (cond n.div2.bodd (rf a (ofNat Code m, s))
              (pc a (ofNat Code m.unpair.1, ofNat Code m.unpair.2, s₁, s₂)))
            (cond n.div2.bodd (co a (ofNat Code m.unpair.1, ofNat Code m.unpair.2, s₁, s₂))
              (pr a (ofNat Code m.unpair.1, ofNat Code m.unpair.2, s₁, s₂)))
  have : Computable G₁ := by
    refine' option_bind (list_get?.comp (snd.comp fst) (snd.comp snd)) _
    unfold Computable₂
    refine'
      option_bind
        ((list_get?.comp (snd.comp fst)
          (fst.comp <| Computable.unpair.comp (snd.comp snd))).comp fst) _
    unfold Computable₂
    refine'
      option_map
        ((list_get?.comp (snd.comp fst)
          (snd.comp <| Computable.unpair.comp (snd.comp snd))).comp <| fst.comp fst) _
    have a : Computable (fun p : ((((α × List σ) × ℕ × ℕ) × σ) × σ) × σ => p.1.1.1.1.1) :=
      fst.comp (fst.comp <| fst.comp <| fst.comp fst)
    have n : Computable (fun p : ((((α × List σ) × ℕ × ℕ) × σ) × σ) × σ => p.1.1.1.2.1) :=
      fst.comp (snd.comp <| fst.comp <| fst.comp fst)
    have m : Computable (fun p : ((((α × List σ) × ℕ × ℕ) × σ) × σ) × σ => p.1.1.1.2.2) :=
      snd.comp (snd.comp <| fst.comp <| fst.comp fst)
    have m₁ := fst.comp (Computable.unpair.comp m)
    have m₂ := snd.comp (Computable.unpair.comp m)
    have s : Computable (fun p : ((((α × List σ) × ℕ × ℕ) × σ) × σ) × σ => p.1.1.2) :=
      snd.comp (fst.comp fst)
    have s₁ : Computable (fun p : ((((α × List σ) × ℕ × ℕ) × σ) × σ) × σ => p.1.2) :=
      snd.comp fst
    have s₂ : Computable (fun p : ((((α × List σ) × ℕ × ℕ) × σ) × σ) × σ => p.2) :=
      snd
    exact
      (nat_bodd.comp n).cond
        ((nat_bodd.comp <| nat_div2.comp n).cond
          (hrf.comp a (((Computable.ofNat Code).comp m).pair s))
          (hpc.comp a
            (((Computable.ofNat Code).comp m₁).pair <|
              ((Computable.ofNat Code).comp m₂).pair <| s₁.pair s₂)))
        (Computable.cond (nat_bodd.comp <| nat_div2.comp n)
          (hco.comp a
            (((Computable.ofNat Code).comp m₁).pair <|
              ((Computable.ofNat Code).comp m₂).pair <| s₁.pair s₂))
          (hpr.comp a
            (((Computable.ofNat Code).comp m₁).pair <|
              ((Computable.ofNat Code).comp m₂).pair <| s₁.pair s₂)))
  let G : α → List σ → Option σ := fun a IH =>
    IH.length.casesOn (some (z a)) fun n =>
      n.casesOn (some (s a)) fun n =>
        n.casesOn (some (l a)) fun n =>
          n.casesOn (some (r a)) fun n => G₁ ((a, IH), n, n.div2.div2)
  have : Computable₂ G :=
    Computable.nat_casesOn (list_length.comp snd) (option_some_iff.2 (hz.comp fst)) <|
      Computable.nat_casesOn snd (option_some_iff.2 (hs.comp (fst.comp fst))) <|
        Computable.nat_casesOn snd (option_some_iff.2 (hl.comp (fst.comp <| fst.comp fst))) <|
          Computable.nat_casesOn snd
            (option_some_iff.2 (hr.comp (fst.comp <| fst.comp <| fst.comp fst)))
            (this.comp <|
              ((Computable.fst.pair snd).comp <| fst.comp <| fst.comp <| fst.comp <| fst).pair <|
                snd.pair <| nat_div2.comp <| nat_div2.comp snd)
  refine'
    ((nat_strong_rec (fun a n => F a (ofNat Code n)) this.to₂ fun a n => _).comp Computable.id <|
      encode_iff.2 hc).of_eq fun a => by simp
  simp (config := { zeta := false })
  iterate 4 cases' n with n; · simp (config := { zeta := false }) [ofNatCode_eq, ofNatCode]; rfl
  simp only []
  rw [List.length_map, List.length_range]
  let m := n.div2.div2
  show
    G₁ ((a, (List.range (n + 4)).map fun n => F a (ofNat Code n)), n, m) =
      some (F a (ofNat Code (n + 4)))
  have hm : m < n + 4 := by
    simp [Nat.div2_val]
    exact
      lt_of_le_of_lt (le_trans (Nat.div_le_self _ _) (Nat.div_le_self _ _))
        (Nat.succ_le_succ (Nat.le_add_right _ _))
  have m1 : m.unpair.1 < n + 4 := lt_of_le_of_lt m.unpair_left_le hm
  have m2 : m.unpair.2 < n + 4 := lt_of_le_of_lt m.unpair_right_le hm
  simp [List.get?_map, List.get?_range, hm, m1, m2]
  rw [show ofNat Code (n + 4) = ofNatCode (n + 4) from rfl]
  simp [ofNatCode]
  cases n.bodd <;> cases n.div2.bodd <;> rfl
#align nat.partrec.code.rec_computable Nat.Partrec.Code.rec_computable

end

/-- The interpretation of a `Nat.Partrec.Code` as a partial function.
* `Nat.Partrec.Code.zero`: The constant zero function.
* `Nat.Partrec.Code.succ`: The successor function.
* `Nat.Partrec.Code.left`: Left unpairing of a pair of ℕ (encoded by `Nat.pair`)
* `Nat.Partrec.Code.right`: Right unpairing of a pair of ℕ (encoded by `Nat.pair`)
* `Nat.Partrec.Code.pair`: Pairs the outputs of argument codes using `Nat.pair`.
* `Nat.Partrec.Code.comp`: Composition of two argument codes.
* `Nat.Partrec.Code.prec`: Primitive recursion. Given an argument of the form `Nat.pair a n`:
  * If `n = 0`, returns `eval cf a`.
  * If `n = succ k`, returns `eval cg (pair a (pair k (eval (prec cf cg) (pair a k))))`
* `Nat.Partrec.Code.rfind'`: Minimization. For `f` an argument of the form `Nat.pair a m`,
  `rfind' f m` returns the least `a` such that `f a m = 0`, if one exists and `f b m` terminates
  for `b < a`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95d5c55f26b17c9c406904ac60a0b4aa61f8ee85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
