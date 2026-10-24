# induction_on_pi_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84a7ab7d-952c-6484-d0b2-d1b661d23904",
  "kind": "theorem",
  "lexical_name": "induction_on_pi_max",
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
  "slug": "induction-on-pi-max--29b0207c0725cec010ca3fb0",
  "source": {
    "blob": "711a770fac7cc750c8d66ef8e4e098418c958d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b0207c0725cec010ca3fb0adbd55c287d71a33ab645db7f3b3296b7d1e965a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a7ab7d-952c-6484-d0b2-d1b661d23904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_pi_max [∀ i, LinearOrder (α i)] {p : (∀ i, Finset (α i)) → Prop}
    (f : ∀ i, Finset (α i)) (h0 : p fun _ ↦ ∅)
    (step :
      ∀ (g : ∀ i, Finset (α i)) (i : ι) (x : α i),
        (∀ y ∈ g i, y < x) → p g → p (update g i (insert x (g i)))) :
    p f :=
  induction_on_pi_of_choice (fun _ x s ↦ ∀ y ∈ s, y < x)
    (fun _ s hs ↦ ⟨s.max' hs, s.max'_mem hs, fun _ ↦ s.lt_max'_of_mem_erase_max' _⟩) f h0 step

/-- Given a predicate on functions `∀ i, Finset (α i)` defined on a finite type, it is true on all
maps provided that it is true on `fun _ ↦ ∅` and for any function `g : ∀ i, Finset (α i)`, an index
`i : ι`, and an element`x : α i` that is strictly less than all elements of `g i`, `p g` implies
`p (update g i (insert x (g i)))`.

This lemma requires `LinearOrder` instances on all `α i`. See also `Finset.induction_on_pi` for a
version that needs `x ∉ g i` and does not need `∀ i, LinearOrder (α i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `711a770fac7cc750c8d66ef8e4e098418c958d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
