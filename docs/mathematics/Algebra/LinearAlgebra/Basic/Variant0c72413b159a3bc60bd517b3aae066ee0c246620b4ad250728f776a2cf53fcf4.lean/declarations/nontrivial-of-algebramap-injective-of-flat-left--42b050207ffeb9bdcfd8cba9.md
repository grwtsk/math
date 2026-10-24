# nontrivial_of_algebraMap_injective_of_flat_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a596ea3cb58f0c246a49e1f4b46a8ef282703014",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 565,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e08e7f9f-1bb5-67cb-0d0b-c36f7913642f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2eddf14c-70c4-442c-bbb9-9e1820a7bdd1",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_algebraMap_injective_of_flat_left",
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
  "slug": "nontrivial-of-algebramap-injective-of-flat-left--42b050207ffeb9bdcfd8cba9",
  "source": {
    "blob": "a596ea3cb58f0c246a49e1f4b46a8ef282703014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 565,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42b050207ffeb9bdcfd8cba9ef217c5541418b0ead7c4c4d5a054f47422be68b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2eddf14c-70c4-442c-bbb9-9e1820a7bdd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_algebraMap_injective_of_flat_left (h : Function.Injective (algebraMap R B))
    [Module.Flat R A] [Nontrivial A] : Nontrivial (A ⊗[R] B) :=
  TensorProduct.nontrivial_of_linearMap_injective_of_flat_left R A B (Algebra.linearMap R B) h

/-- If `A`, `B` are `R`-algebras, `R` injects into `A`,
and `B` is a nontrivial flat `R`-algebra, then `A ⊗[R] B` is nontrivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a596ea3cb58f0c246a49e1f4b46a8ef282703014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
