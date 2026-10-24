# mem_range_mapDomain_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2926c7b1-874d-27c9-7aeb-99d6cd3458ab",
  "kind": "lemma",
  "lexical_name": "mem_range_mapDomain_iff",
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
  "slug": "mem-range-mapdomain-iff--96e849ba42918dba813203b4",
  "source": {
    "blob": "fc63bb9f2f6fff6dae45fde191b4f6eac7300595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 642,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96e849ba42918dba813203b4416e104b4b81551353bbe9d4eeef24381feb3990",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2926c7b1-874d-27c9-7aeb-99d6cd3458ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_range_mapDomain_iff (hf : Function.Injective f) (x : β →₀ M) :
    x ∈ Set.range (Finsupp.mapDomain f) ↔ ∀ b ∉ Set.range f, x b = 0 := by
  refine ⟨fun ⟨y, hy⟩ x hx ↦ hy ▸ Finsupp.mapDomain_of_notMem_range y x hx, fun h ↦ ?_⟩
  refine ⟨Finsupp.comapDomain f x hf.injOn, Finsupp.mapDomain_comapDomain f hf _ fun i hi ↦ ?_⟩
  by_contra hc
  simp only [Finset.mem_coe, Finsupp.mem_support_iff, ne_eq] at hi
  exact hi (h _ hc)

end FInjective

end ComapDomain


/-! ### Declarations about `Finsupp.filter` -/


section Filter

section Zero

variable [Zero M] (p : α → Prop) [DecidablePred p] (f : α →₀ M)

/--
`Finsupp.filter p f` is the finitely supported function that is `f a` if `p a` is true and `0`
otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc63bb9f2f6fff6dae45fde191b4f6eac7300595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
