# exists_apply_ne_one_of_hasEnoughRootsOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "333bdc9aaeb5c94814f2e11f01910c1e9f1b7566",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2780913e-bbd5-0933-fab3-81f78a761d37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de300453-e02c-296d-1eec-417e2b4144de",
  "kind": "theorem",
  "lexical_name": "exists_apply_ne_one_of_hasEnoughRootsOfUnity",
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
  "slug": "exists-apply-ne-one-of-hasenoughrootsofunity--81d3a9e7e96bc3c47d96e17c",
  "source": {
    "blob": "333bdc9aaeb5c94814f2e11f01910c1e9f1b7566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81d3a9e7e96bc3c47d96e17cd85d93267d33f9e696dd204d8175e407547078ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de300453-e02c-296d-1eec-417e2b4144de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_apply_ne_one_of_hasEnoughRootsOfUnity [Nontrivial R] ⦃a : ZMod n⦄ (ha : a ≠ 1) :
    ∃ χ : DirichletCharacter R n, χ a ≠ 1 :=
  MulChar.exists_apply_ne_one_of_hasEnoughRootsOfUnity (ZMod n) R ha

variable [IsDomain R]

/-- If `R` is an integral domain that has enough roots of unity and `n ≠ 0`, then
for each `a ≠ 1` in `ZMod n`, the sum of `χ a` over all Dirichlet characters mod `n`
with values in `R` vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `333bdc9aaeb5c94814f2e11f01910c1e9f1b7566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
