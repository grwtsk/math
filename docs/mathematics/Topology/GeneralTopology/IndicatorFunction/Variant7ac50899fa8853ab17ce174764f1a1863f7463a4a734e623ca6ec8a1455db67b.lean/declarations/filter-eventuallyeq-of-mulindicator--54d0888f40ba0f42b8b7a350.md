# Filter.EventuallyEq.of_mulIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e405dfff62a767a00841649e56cfbe6ecb707b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b803b8ea-0f67-17de-77a2-778857e9a145",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af808655-1f60-965a-38b4-da9b62893280",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.of_mulIndicator",
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
  "slug": "filter-eventuallyeq-of-mulindicator--54d0888f40ba0f42b8b7a350",
  "source": {
    "blob": "5e405dfff62a767a00841649e56cfbe6ecb707b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d0888f40ba0f42b8b7a3506bec6dc222d9a8d3cc38caa19d9d67e98ac2c45b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af808655-1f60-965a-38b4-da9b62893280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.of_mulIndicator [One β] {l : Filter α} {f : α → β}
    (hf : ∀ᶠ x in l, f x ≠ 1) {s t : Set α} (h : s.mulIndicator f =ᶠ[l] t.mulIndicator f) :
    s =ᶠ[l] t := by
  have : ∀ {s : Set α}, Function.mulSupport (s.mulIndicator f) =ᶠ[l] s := fun {s} ↦ by
    rw [mulSupport_mulIndicator]
    exact (hf.mono fun x hx ↦ and_iff_left hx).set_eq
  exact this.symm.trans <| h.mulSupport.trans this

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e405dfff62a767a00841649e56cfbe6ecb707b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
