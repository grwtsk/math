# prod_inner_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecf025481612a64304da7f1a9bddaacd7157f4ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8b93209-f6c3-916f-5b86-d04ee7223177",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14c37d67-bb84-9ffc-9786-0263e4c93cfd",
  "kind": "theorem",
  "lexical_name": "prod_inner_apply",
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
  "slug": "prod-inner-apply--246ef3955f7b743ca579550e",
  "source": {
    "blob": "ecf025481612a64304da7f1a9bddaacd7157f4ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:246ef3955f7b743ca579550e71e3396664e739c3d29935d1c92e44d7afa41439",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14c37d67-bb84-9ffc-9786-0263e4c93cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_inner_apply (x y : WithLp 2 (E × F)) :
    ⟪x, y⟫_𝕜 = ⟪(ofLp x).fst, (ofLp y).fst⟫_𝕜 + ⟪(ofLp x).snd, (ofLp y).snd⟫_𝕜 := rfl

end WithLp

noncomputable section
namespace OrthonormalBasis

variable [Fintype ι₁] [Fintype ι₂]

/-- The product of two orthonormal bases is a basis for the L2-product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf025481612a64304da7f1a9bddaacd7157f4ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
