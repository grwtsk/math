# GoodProducts.span_iff_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fcf3ff7bff2f653dd0897a8bd98d764d6fca5be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49cc1622-7d90-0415-55ad-7bef3a06d82c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8dda568-42a2-de1b-338b-173621c7acbf",
  "kind": "theorem",
  "lexical_name": "GoodProducts.span_iff_products",
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
  "slug": "goodproducts-span-iff-products--fd21c98ea6e68d3bccfbf9cf",
  "source": {
    "blob": "4fcf3ff7bff2f653dd0897a8bd98d764d6fca5be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 421,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd21c98ea6e68d3bccfbf9cf7c0d844ab2996939c3a948158cf150b069c02f15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8dda568-42a2-de1b-338b-173621c7acbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GoodProducts.span_iff_products [WellFoundedLT I] :
    ⊤ ≤ Submodule.span ℤ (Set.range (eval C)) ↔
      ⊤ ≤ Submodule.span ℤ (Set.range (Products.eval C)) := by
  refine ⟨fun h ↦ le_trans h (span_mono (fun a ⟨b, hb⟩ ↦ ⟨b.val, hb⟩)), fun h ↦ le_trans h ?_⟩
  rw [span_le]
  rintro f ⟨l, rfl⟩
  let L : Products I → Prop := fun m ↦ m.eval C ∈ span ℤ (Set.range (GoodProducts.eval C))
  suffices L l by assumption
  apply IsWellFounded.induction (· < · : Products I → Products I → Prop)
  intro l h
  dsimp
  by_cases hl : l.isGood C
  · apply subset_span
    exact ⟨⟨l, hl⟩, rfl⟩
  · simp only [Products.isGood, not_not] at hl
    suffices Products.eval C '' {m | m < l} ⊆ span ℤ (Set.range (GoodProducts.eval C)) by
      rw [← span_le] at this
      exact this hl
    rintro a ⟨m, hm, rfl⟩
    exact h m hm

end Products

variable [LinearOrder I] [WellFoundedLT I]

section Ordinal
/-!
## Relating elements of the well-order `I` with ordinals

We choose a well-ordering on `I`. This amounts to regarding `I` as an ordinal, and as such it
can be regarded as the set of all strictly smaller ordinals, allowing to apply ordinal induction.

### Main definitions

* `ord I i` is the term `i` of `I` regarded as an ordinal.

* `term I ho` is a sufficiently small ordinal regarded as a term of `I`.

* `contained C o` is a predicate saying that `C` is "small" enough in relation to the ordinal `o`
  to satisfy the inductive hypothesis.

* `P I` is the predicate on ordinals about linear independence of good products, which the rest of
  this file is spent on proving by induction.
-/

variable (I)

/-- A term of `I` regarded as an ordinal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fcf3ff7bff2f653dd0897a8bd98d764d6fca5be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
