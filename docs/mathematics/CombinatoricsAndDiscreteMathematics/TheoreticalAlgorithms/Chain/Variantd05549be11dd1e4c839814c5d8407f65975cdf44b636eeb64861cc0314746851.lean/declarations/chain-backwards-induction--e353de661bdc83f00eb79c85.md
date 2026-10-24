# Chain.backwards_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f18961edd15ebda778f2e2063cb61b5324adeebf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b6c0be9-3dab-a00e-2872-bcd7fd19d8be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c705dd3b-2385-95f3-a6aa-53b50ad2233d",
  "kind": "theorem",
  "lexical_name": "Chain.backwards_induction",
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
  "slug": "chain-backwards-induction--e353de661bdc83f00eb79c85",
  "source": {
    "blob": "f18961edd15ebda778f2e2063cb61b5324adeebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 403,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variantd05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e353de661bdc83f00eb79c8500171bba1ebb6cfb225b05c19a7f5b6f04c59437",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variantd05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c705dd3b-2385-95f3-a6aa-53b50ad2233d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Chain.backwards_induction (p : α → Prop) (l : List α) (h : Chain r a l)
    (hb : getLast (a :: l) (cons_ne_nil _ _) = b) (carries : ∀ ⦃x y : α⦄, r x y → p y → p x)
    (final : p b) : ∀ i ∈ a :: l, p i := by
  have : Chain' (flip (flip r)) (a :: l) := by simpa [Chain']
  replace this := chain'_reverse.mpr this
  simp_rw +singlePass [← List.mem_reverse]
  apply this.induction _ _ (fun _ _ h ↦ carries h)
  simpa only [ne_eq, reverse_eq_nil_iff, not_false_eq_true, head_reverse, forall_true_left, hb,
    reduceCtorEq]

/-- Given a chain from `a` to `b`, and a predicate true at `b`, if `r x y → p y → p x` then
the predicate is true at `a`.
That is, we can propagate the predicate all the way up the chain.
-/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variantd05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variantd05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f18961edd15ebda778f2e2063cb61b5324adeebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
