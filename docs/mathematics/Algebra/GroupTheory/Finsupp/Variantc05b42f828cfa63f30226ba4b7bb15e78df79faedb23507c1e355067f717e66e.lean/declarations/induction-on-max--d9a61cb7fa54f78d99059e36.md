# induction_on_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e633794f-9352-7e8a-10d5-d51e1a2cb944",
  "kind": "lemma",
  "lexical_name": "induction_on_max",
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
  "slug": "induction-on-max--d9a61cb7fa54f78d99059e36",
  "source": {
    "blob": "e2a50abac2b1b01e109693d19e3a021fcec0fa9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 300,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variantc05b42f828cfa63f30226ba4b7bb15e78df79faedb23507c1e355067f717e66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9a61cb7fa54f78d99059e363ff8fb033793ea91c9e2cf771697563d66a22e02",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variantc05b42f828cfa63f30226ba4b7bb15e78df79faedb23507c1e355067f717e66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e633794f-9352-7e8a-10d5-d51e1a2cb944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction_on_max (f : ι →₀ M) (zero : motive 0)
    (single_add : ∀ a b (f : ι →₀ M), (∀ c ∈ f.support, c < a) → b ≠ 0 →
      motive f → motive (single a b + f)) : motive f := by
  suffices ∀ (s) (f : ι →₀ M), f.support = s → motive f from this _ _ rfl
  refine fun s => s.induction_on_max (fun f h => ?_) (fun a s hm hf f hs => ?_)
  · rwa [support_eq_empty.1 h]
  · have hs' : (erase a f).support = s := by
      rw [support_erase, hs, erase_insert (fun ha => (hm a ha).false)]
    rw [← single_add_erase a f]
    refine single_add _ _ _ (fun c hc => hm _ <| hs'.symm ▸ hc) ?_ (hf _ hs')
    rw [← mem_support_iff, hs]
    exact mem_insert_self a s

/-- A finitely supported function can be built by adding up `single a b` for decreasing `a`.

The lemma `induction_on_min₂` swaps the argument order in the sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variantc05b42f828cfa63f30226ba4b7bb15e78df79faedb23507c1e355067f717e66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variantc05b42f828cfa63f30226ba4b7bb15e78df79faedb23507c1e355067f717e66e.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2a50abac2b1b01e109693d19e3a021fcec0fa9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
