# finiteZetaEulerProductReal_expands_exponent_vectors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcf2414c-2e58-dd5a-549b-02bfa924a600",
  "kind": "theorem",
  "lexical_name": "finiteZetaEulerProductReal_expands_exponent_vectors",
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
  "slug": "finitezetaeulerproductreal-expands-exponent-vectors--aff69d08676a4b5cc785f20a",
  "source": {
    "blob": "5a6720731a3e5409cd5549da583b90e404e223e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff69d08676a4b5cc785f20a12e998f61dae0d3655765ffd3a93a6532d6756e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf2414c-2e58-dd5a-549b-02bfa924a600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteZetaEulerProductReal_expands_exponent_vectors
    (S : Finset Nat)
    (K : Nat)
    (σ : Real) :
    finiteZetaEulerProductReal S σ K =
      ∑ e : ExponentVector S K,
        exponentVectorWeightReal S K σ e := by
  classical
  calc
    finiteZetaEulerProductReal S σ K
        = ∏ p : {p : Nat // p ∈ S}, finiteZetaEulerFactorReal p.val σ K := by
            rw [finiteZetaEulerProductReal]
            exact
              (Finset.prod_coe_sort S
                (fun p => finiteZetaEulerFactorReal p σ K)).symm
    _ = ∏ p : {p : Nat // p ∈ S},
          ∑ k : Fin (K + 1), (p.val : Real) ^ (-(σ * (k : Nat))) := by
          refine Finset.prod_congr rfl ?_
          intro p _hp
          exact finiteZetaEulerFactorReal_eq_fin_sum p.val K σ
    _ = ∑ e : ExponentVector S K,
          exponentVectorWeightReal S K σ e := by
          simpa [exponentVectorWeightReal] using
            finite_product_sum_expansion_subtype S K
              (fun p k => (p.val : Real) ^ (-(σ * (k : Nat))))

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6720731a3e5409cd5549da583b90e404e223e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
