# mulIndicator_compl_mul_self_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffcdb2466bfb2d38a7ab7fa36509b0d6ad153b20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 408,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96e2cc80-a536-4f02-129a-8c07ac87ebec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0676adf4-53d5-81ab-bdb0-0ab6897a8c9d",
  "kind": "theorem",
  "lexical_name": "mulIndicator_compl_mul_self_apply",
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
  "slug": "mulindicator-compl-mul-self-apply--120890603bec585b602dd3c4",
  "source": {
    "blob": "ffcdb2466bfb2d38a7ab7fa36509b0d6ad153b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 408,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:120890603bec585b602dd3c4986a7e1753146c8a3853476da5215d03502bf333",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0676adf4-53d5-81ab-bdb0-0ab6897a8c9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulIndicator_compl_mul_self_apply (s : Set α) (f : α → M) (a : α) :
    mulIndicator sᶜ f a * mulIndicator s f a = f a :=
  by_cases (fun ha : a ∈ s => by simp [ha]) fun ha => by simp [ha]
#align set.mul_indicator_compl_mul_self_apply Set.mulIndicator_compl_mul_self_apply
#align set.indicator_compl_add_self_apply Set.indicator_compl_add_self_apply

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffcdb2466bfb2d38a7ab7fa36509b0d6ad153b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
