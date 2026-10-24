# exists_range_eq_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5923923-0f4a-caab-42b8-72427d6a318c",
  "kind": "lemma",
  "lexical_name": "exists_range_eq_graph",
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
  "slug": "exists-range-eq-graph--cfa4dfcfc0e21ad52e465db1",
  "source": {
    "blob": "dff422b488ef27c138c8fb65736e7dab4e25a8b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 195,
    "path": "GRWTSK/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfa4dfcfc0e21ad52e465db1e36a1e2b2bc3ee09f08fcabedc2c77dee5edf08e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5923923-0f4a-caab-42b8-72427d6a318c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_range_eq_graph {f : G →* H × I} (hf₁ : Surjective (Prod.fst ∘ f))
    (hf : ∀ g₁ g₂, (f g₁).1 = (f g₂).1 → (f g₁).2 = (f g₂).2) :
    ∃ f' : H →* I, range f = f'.graph := by
  simpa [SetLike.ext_iff] using exists_mrange_eq_mgraph hf₁ hf

/-- **Line test** for group isomorphisms.

Let `f : G → H × I` be a homomorphism to a product of groups. Assume that `f` is surjective on both
factors and that the image of `f` intersects every "vertical line" `{(h, i) | i : I}` and every
"horizontal line" `{(h, i) | h : H}` at most once. Then the image of `f` is the graph of some group
isomorphism `f' : H ≃ I`. -/
@[to_additive "**Line test** for monoid isomorphisms.

Let `f : G → H × I` be a homomorphism to a product of groups. Assume that `f` is surjective on both
factors and that the image of `f` intersects every \"vertical line\" `{(h, i) | i : I}` and every
\"horizontal line\" `{(h, i) | h : H}` at most once. Then the image of `f` is the graph of some
group isomorphism `f' : H ≃ I`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff422b488ef27c138c8fb65736e7dab4e25a8b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
