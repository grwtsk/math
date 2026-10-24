# relrank_mul_relrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7cf73dd860cd8c1ddbdd8d8493b917c8b0e67eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f4a02a4-3791-acc7-0297-d90e856e6335",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3563862-8ac2-7da0-6da1-4e43aeb4bacb",
  "kind": "theorem",
  "lexical_name": "relrank_mul_relrank",
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
  "slug": "relrank-mul-relrank--17c18b631d443c1607066dbe",
  "source": {
    "blob": "d7cf73dd860cd8c1ddbdd8d8493b917c8b0e67eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 219,
    "path": "GRWTSK/Algebra/Relrank/Variantd339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17c18b631d443c1607066dbe88efca3c039ed66ce296e09a58ef77b009904349",
  "verification": {
    "reference": "docs/verification/Algebra/Relrank/Variantd339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3563862-8ac2-7da0-6da1-4e43aeb4bacb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relrank_mul_relrank (h1 : A ≤ B) (h2 : B ≤ C) :
    relrank A B * relrank B C = relrank A C := by
  have h3 := h1.trans h2
  rw [relrank_eq_rank_of_le h1, relrank_eq_rank_of_le h2, relrank_eq_rank_of_le h3]
  letI : Algebra A B := (inclusion h1).toAlgebra
  letI : Algebra B C := (inclusion h2).toAlgebra
  letI : Algebra A C := (inclusion h3).toAlgebra
  haveI : IsScalarTower A B C := IsScalarTower.of_algebraMap_eq' rfl
  exact rank_mul_rank A B C

variable {A B C} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Relrank/Variantd339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Relrank/Variantd339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7cf73dd860cd8c1ddbdd8d8493b917c8b0e67eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
