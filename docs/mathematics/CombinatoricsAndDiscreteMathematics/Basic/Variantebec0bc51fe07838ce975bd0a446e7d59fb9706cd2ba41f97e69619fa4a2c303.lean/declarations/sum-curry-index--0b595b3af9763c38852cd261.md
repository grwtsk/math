# sum_curry_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94e91ef6-72af-410c-e80c-18b106767882",
  "kind": "theorem",
  "lexical_name": "sum_curry_index",
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
  "slug": "sum-curry-index--0b595b3af9763c38852cd261",
  "source": {
    "blob": "37d16fe66eba020b9ab0e8d901dc239d7f342cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1244,
    "line": 1228,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantebec0bc51fe07838ce975bd0a446e7d59fb9706cd2ba41f97e69619fa4a2c303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b595b3af9763c38852cd261df2acb12564c2f1b0c3daa30ed2ee57fc43d5df3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantebec0bc51fe07838ce975bd0a446e7d59fb9706cd2ba41f97e69619fa4a2c303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94e91ef6-72af-410c-e80c-18b106767882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1228–1244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_curry_index (f : α × β →₀ M) (g : α → β → M → N) (hg₀ : ∀ a b, g a b 0 = 0)
    (hg₁ : ∀ a b c₀ c₁, g a b (c₀ + c₁) = g a b c₀ + g a b c₁) :
    (f.curry.sum fun a f => f.sum (g a)) = f.sum fun p c => g p.1 p.2 c := by
  rw [Finsupp.curry]
  trans
  · exact
      sum_sum_index (fun a => sum_zero_index) fun a b₀ b₁ =>
        sum_add_index' (fun a => hg₀ _ _) fun c d₀ d₁ => hg₁ _ _ _ _
  congr; funext p c
  trans
  · exact sum_single_index sum_zero_index
  exact sum_single_index (hg₀ _ _)
#align finsupp.sum_curry_index Finsupp.sum_curry_index

/-- Given a finitely supported function `f` from `α` to the type of
finitely supported functions from `β` to `M`,
`uncurry f` is the "uncurried" finitely supported function from `α × β` to `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantebec0bc51fe07838ce975bd0a446e7d59fb9706cd2ba41f97e69619fa4a2c303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantebec0bc51fe07838ce975bd0a446e7d59fb9706cd2ba41f97e69619fa4a2c303.lean#L1228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37d16fe66eba020b9ab0e8d901dc239d7f342cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
