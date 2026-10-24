# mulIndicator_eventuallyEq

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
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d21d3406-7256-16fd-454f-97946ee6cbb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a3ca387-dbcb-b22b-6480-906609cdc6bc",
  "kind": "theorem",
  "lexical_name": "mulIndicator_eventuallyEq",
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
  "slug": "mulindicator-eventuallyeq--dd524ca6b8bb6047d25f2a7e",
  "source": {
    "blob": "5e405dfff62a767a00841649e56cfbe6ecb707b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd524ca6b8bb6047d25f2a7eb6c21bf48c4531019afaa8938d4a88fccf558f81",
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

Occurrence: `result:0a3ca387-dbcb-b22b-6480-906609cdc6bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulIndicator_eventuallyEq (hf : f =ᶠ[l ⊓ 𝓟 s] g) (hs : s =ᶠ[l] t) :
    mulIndicator s f =ᶠ[l] mulIndicator t g :=
  (eventually_inf_principal.1 hf).mp <| hs.mem_iff.mono fun x hst hfg =>
    by_cases
      (fun hxs : x ∈ s => by simp only [*, hst.1 hxs, mulIndicator_of_mem])
      (fun hxs => by simp only [mulIndicator_of_not_mem, hxs, mt hst.2 hxs])
#align indicator_eventually_eq indicator_eventuallyEq

end One

section Monoid

variable [Monoid M] {s t : Set α} {f g : α → M} {a : α} {l : Filter α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e405dfff62a767a00841649e56cfbe6ecb707b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
