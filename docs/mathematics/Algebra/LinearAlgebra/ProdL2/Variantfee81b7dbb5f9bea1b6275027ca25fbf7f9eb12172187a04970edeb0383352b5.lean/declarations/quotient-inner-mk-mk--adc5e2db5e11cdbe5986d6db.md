# Quotient.inner_mk_mk

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
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4964135a-e99f-79a7-870c-fb1d84694df7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f96c67b9-1266-85f5-9063-6be48626012d",
  "kind": "theorem",
  "lexical_name": "Quotient.inner_mk_mk",
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
  "slug": "quotient-inner-mk-mk--adc5e2db5e11cdbe5986d6db",
  "source": {
    "blob": "ecf025481612a64304da7f1a9bddaacd7157f4ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 193,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adc5e2db5e11cdbe5986d6db28538c390589a621cc4fceadb95002bbc6d15376",
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

Occurrence: `result:f96c67b9-1266-85f5-9063-6be48626012d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Quotient.inner_mk_mk (x y : E) (hx : x ∈ Kᗮ) (hy : y ∈ Kᗮ) :
    ⟪Quotient.mk (p := K) x, Quotient.mk y⟫_𝕜 = ⟪x, y⟫_𝕜 := by
  simp [K.quotientEquivOrthogonal_mk x hx, K.quotientEquivOrthogonal_mk y hy]

end Submodule

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf025481612a64304da7f1a9bddaacd7157f4ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
