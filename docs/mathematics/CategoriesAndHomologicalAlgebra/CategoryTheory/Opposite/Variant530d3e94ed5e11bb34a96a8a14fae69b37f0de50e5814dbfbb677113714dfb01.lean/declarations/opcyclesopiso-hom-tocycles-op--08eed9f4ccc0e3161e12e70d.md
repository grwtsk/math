# opcyclesOpIso_hom_toCycles_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0161c09459b84a37b4b6ef3c186d955519033f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12c5bdbd-1e51-edc9-89ec-af9914378726",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e015583-414f-4889-a6f9-f076416ed2f5",
  "kind": "lemma",
  "lexical_name": "opcyclesOpIso_hom_toCycles_op",
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
  "slug": "opcyclesopiso-hom-tocycles-op--08eed9f4ccc0e3161e12e70d",
  "source": {
    "blob": "d0161c09459b84a37b4b6ef3c186d955519033f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08eed9f4ccc0e3161e12e70d71d7d65a872b3df8ae0e94da0ac92621e45dc077",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e015583-414f-4889-a6f9-f076416ed2f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opcyclesOpIso_hom_toCycles_op :
    (K.opcyclesOpIso i).hom ≫ (K.toCycles j i).op = K.op.fromOpcycles i j := by
  by_cases hij : c.Rel j i
  · obtain rfl := c.prev_eq' hij
    exact (K.sc i).opcyclesOpIso_hom_toCycles_op
  · rw [K.toCycles_eq_zero hij, K.op.fromOpcycles_eq_zero hij, op_zero, comp_zero]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0161c09459b84a37b4b6ef3c186d955519033f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
