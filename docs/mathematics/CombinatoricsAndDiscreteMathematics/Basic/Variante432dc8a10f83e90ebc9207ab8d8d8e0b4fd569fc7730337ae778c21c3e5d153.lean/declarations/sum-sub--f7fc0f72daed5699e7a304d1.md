# sum_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15c0485a229ea474752effd892aab6864d2e0860",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9c339e4-ebf5-595b-f2da-f29782c9f0da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76b0584e-27e8-00e3-a5fd-5a8159fcfa61",
  "kind": "theorem",
  "lexical_name": "sum_sub",
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
  "slug": "sum-sub--f7fc0f72daed5699e7a304d1",
  "source": {
    "blob": "15c0485a229ea474752effd892aab6864d2e0860",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 337,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7fc0f72daed5699e7a304d101d7b911d4b223b8ccbde63a8b42424f63f94ab6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b0584e-27e8-00e3-a5fd-5a8159fcfa61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_sub [Zero M] [SubtractionCommMonoid G] {f : α →₀ M} {h₁ h₂ : α → M → G} :
    (f.sum fun a b => h₁ a b - h₂ a b) = f.sum h₁ - f.sum h₂ :=
  Finset.sum_sub_distrib ..

/-- Taking the product under `h` is an additive-to-multiplicative homomorphism of finsupps,
if `h` is an additive-to-multiplicative homomorphism on the support.
This is a more general version of `Finsupp.prod_add_index'`; the latter has simpler hypotheses. -/
@[to_additive
      /-- Taking the product under `h` is an additive homomorphism of finsupps, if `h` is an
      additive homomorphism on the support. This is a more general version of
      `Finsupp.sum_add_index'`; the latter has simpler hypotheses. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15c0485a229ea474752effd892aab6864d2e0860` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
