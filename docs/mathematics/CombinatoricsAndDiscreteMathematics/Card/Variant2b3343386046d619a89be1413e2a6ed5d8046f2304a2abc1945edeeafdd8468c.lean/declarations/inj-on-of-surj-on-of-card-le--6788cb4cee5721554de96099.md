# inj_on_of_surj_on_of_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "569c6f8297515ce337ad9ae4c9ebb94bd2554386",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07468f6b-e767-c168-ac40-0c1a9650fe21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5796faa1-68b1-982a-0a94-f903a8519dc0",
  "kind": "theorem",
  "lexical_name": "inj_on_of_surj_on_of_card_le",
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
  "slug": "inj-on-of-surj-on-of-card-le--6788cb4cee5721554de96099",
  "source": {
    "blob": "569c6f8297515ce337ad9ae4c9ebb94bd2554386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 372,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6788cb4cee5721554de96099f86dc6f40ea55895c504c031f772dfc3f03f9566",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5796faa1-68b1-982a-0a94-f903a8519dc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inj_on_of_surj_on_of_card_le {t : Finset β} (f : ∀ a ∈ s, β) (hf : ∀ a ha, f a ha ∈ t)
    (hsurj : ∀ b ∈ t, ∃ a ha, b = f a ha) (hst : s.card ≤ t.card) ⦃a₁ a₂⦄ (ha₁ : a₁ ∈ s)
    (ha₂ : a₂ ∈ s) (ha₁a₂ : f a₁ ha₁ = f a₂ ha₂) : a₁ = a₂ :=
  haveI : Inhabited { x // x ∈ s } := ⟨⟨a₁, ha₁⟩⟩
  let f' : { x // x ∈ s } → { x // x ∈ t } := fun x => ⟨f x.1 x.2, hf x.1 x.2⟩
  let g : { x // x ∈ t } → { x // x ∈ s } :=
    @surjInv _ _ f' fun x =>
      let ⟨y, hy₁, hy₂⟩ := hsurj x.1 x.2
      ⟨⟨y, hy₁⟩, Subtype.eq hy₂.symm⟩
  have hg : Injective g := injective_surjInv _
  have hsg : Surjective g := fun x =>
    let ⟨y, hy⟩ :=
      surj_on_of_inj_on_of_card_le (fun (x : { x // x ∈ t }) (_ : x ∈ t.attach) => g x)
        (fun x _ => show g x ∈ s.attach from mem_attach _ _) (fun x y _ _ hxy => hg hxy) (by simpa)
        x (mem_attach _ _)
    ⟨y, hy.snd.symm⟩
  have hif : Injective f' :=
    (leftInverse_of_surjective_of_rightInverse hsg (rightInverse_surjInv _)).injective
  Subtype.ext_iff_val.1 (@hif ⟨a₁, ha₁⟩ ⟨a₂, ha₂⟩ (Subtype.eq ha₁a₂))
#align finset.inj_on_of_surj_on_of_card_le Finset.inj_on_of_surj_on_of_card_le

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569c6f8297515ce337ad9ae4c9ebb94bd2554386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
