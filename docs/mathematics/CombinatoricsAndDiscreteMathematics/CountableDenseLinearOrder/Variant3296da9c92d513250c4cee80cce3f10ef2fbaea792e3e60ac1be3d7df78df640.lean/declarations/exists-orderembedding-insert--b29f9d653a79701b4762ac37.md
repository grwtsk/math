# exists_orderEmbedding_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8b8fb8a-94fd-d8e5-2893-4bc945f2a850",
  "kind": "lemma",
  "lexical_name": "exists_orderEmbedding_insert",
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
  "slug": "exists-orderembedding-insert--b29f9d653a79701b4762ac37",
  "source": {
    "blob": "cb52d90e84f78bad37640d2e1d15616a5d3c6030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29f9d653a79701b4762ac37c25937dd1647025e3861333115dc2f7923963428",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8b8fb8a-94fd-d8e5-2893-4bc945f2a850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_orderEmbedding_insert [DenselyOrdered β] [NoMinOrder β] [NoMaxOrder β]
    [nonem : Nonempty β]  (S : Finset α) (f : S ↪o β) (a : α) :
    ∃ (g : (insert a S : Finset α) ↪o β),
      g ∘ (Set.inclusion ((S.subset_insert a) : ↑S ⊆ ↑(insert a S))) = f := by
  let Slt := {x ∈ S.attach | x.val < a}.image f
  let Sgt := {x ∈ S.attach | a < x.val}.image f
  obtain ⟨b, hb, hb'⟩ := Order.exists_between_finsets Slt Sgt (fun x hx y hy => by
    simp only [Finset.mem_image, Finset.mem_filter, Finset.mem_attach, true_and, Subtype.exists,
      exists_and_left, Slt, Sgt] at hx hy
    obtain ⟨_, hx, _, rfl⟩ := hx
    obtain ⟨_, hy, _, rfl⟩ := hy
    exact f.strictMono (hx.trans hy))
  refine ⟨OrderEmbedding.ofStrictMono
    (fun (x : (insert a S : Finset α)) => if hx : x.1 ∈ S then f ⟨x.1, hx⟩ else b) ?_, ?_⟩
  · rintro ⟨x, hx⟩ ⟨y, hy⟩ hxy
    if hxS : x ∈ S
    then if hyS : y ∈ S
      then simpa only [hxS, hyS, ↓reduceDIte, OrderEmbedding.lt_iff_lt, Subtype.mk_lt_mk]
      else
        obtain rfl := Finset.eq_of_mem_insert_of_notMem hy hyS
        simp only [hxS, hyS, ↓reduceDIte]
        exact hb _ (Finset.mem_image_of_mem _ (Finset.mem_filter.2 ⟨Finset.mem_attach _ _, hxy⟩))
    else
      obtain rfl := Finset.eq_of_mem_insert_of_notMem hx hxS
      if hyS : y ∈ S
      then
        simp only [hxS, hyS, ↓reduceDIte]
        exact hb' _ (Finset.mem_image_of_mem _ (Finset.mem_filter.2 ⟨Finset.mem_attach _ _, hxy⟩))
      else simp only [Finset.eq_of_mem_insert_of_notMem hy hyS, lt_self_iff_false] at hxy
  · ext x
    simp only [Finset.coe_sort_coe, OrderEmbedding.coe_ofStrictMono, Finset.insert_val,
      Function.comp_apply, Finset.coe_mem, ↓reduceDIte, Subtype.coe_eta]

variable (α β)

-- Porting note: Mathport warning: expanding binder collection (p q «expr ∈ » f)
/-- The type of partial order isomorphisms between `α` and `β` defined on finite subsets.
    A partial order isomorphism is encoded as a finite subset of `α × β`, consisting
    of pairs which should be identified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb52d90e84f78bad37640d2e1d15616a5d3c6030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
