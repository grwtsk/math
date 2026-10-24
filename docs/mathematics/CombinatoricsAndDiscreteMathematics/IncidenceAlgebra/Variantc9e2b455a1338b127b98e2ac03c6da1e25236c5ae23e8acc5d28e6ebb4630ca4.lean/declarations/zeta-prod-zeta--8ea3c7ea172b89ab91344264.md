# zeta_prod_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4bdff0d9a680ecb74791d8385109e7bf4facfd1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 635,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b215acd-8be3-c5a1-bde1-b7942af4f48d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5b031a4-fe84-016e-5532-e19bb810baa9",
  "kind": "lemma",
  "lexical_name": "zeta_prod_zeta",
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
  "slug": "zeta-prod-zeta--8ea3c7ea172b89ab91344264",
  "source": {
    "blob": "b4bdff0d9a680ecb74791d8385109e7bf4facfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 635,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea3c7ea172b89ab91344264a8062568a0e09784ef2732002719c97f2affc235",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5b031a4-fe84-016e-5532-e19bb810baa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zeta_prod_zeta [DecidableLE α] [DecidableLE β] :
    (zeta 𝕜).prod (zeta 𝕜) = (zeta 𝕜 : IncidenceAlgebra 𝕜 (α × β)) := by
  ext x y hxy; simp [hxy, hxy.1, hxy.2]

end Ring

section CommRing
variable [CommRing 𝕜] [Preorder α] [Preorder β] [LocallyFiniteOrder α] [LocallyFiniteOrder β]
  [DecidableLE (α × β)] (f₁ f₂ : IncidenceAlgebra 𝕜 α) (g₁ g₂ : IncidenceAlgebra 𝕜 β)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bdff0d9a680ecb74791d8385109e7bf4facfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
