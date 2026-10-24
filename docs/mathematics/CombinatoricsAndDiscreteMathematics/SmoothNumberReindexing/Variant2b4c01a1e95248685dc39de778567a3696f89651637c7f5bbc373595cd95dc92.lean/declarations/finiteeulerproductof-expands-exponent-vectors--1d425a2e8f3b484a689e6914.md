# finiteEulerProductOf_expands_exponent_vectors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fc4fe772cf350b921139575e4553f55be892a34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d6e46c3-b9da-5836-c242-55225a62b6d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa1820e8-0e30-d330-d19e-fbcd933daf0c",
  "kind": "theorem",
  "lexical_name": "finiteEulerProductOf_expands_exponent_vectors",
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
  "slug": "finiteeulerproductof-expands-exponent-vectors--1d425a2e8f3b484a689e6914",
  "source": {
    "blob": "5fc4fe772cf350b921139575e4553f55be892a34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d425a2e8f3b484a689e6914a71cf48730973c33a3d95f507a1911e5a2997f84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa1820e8-0e30-d330-d19e-fbcd933daf0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteEulerProductOf_expands_exponent_vectors
    [CommSemiring R]
    (w : ArithFn R)
    (S : Finset Nat)
    (K : Nat) :
    finiteEulerProductOf w S K =
      ∑ e : ExponentVector S K,
        ∏ p : {p : Nat // p ∈ S}, w (p.val ^ (e p).val) := by
  classical
  calc
    finiteEulerProductOf w S K
        = ∏ p : {p : Nat // p ∈ S}, finiteEulerFactorOf w p.val K := by
            rw [finiteEulerProductOf]
            exact (Finset.prod_coe_sort S (fun p => finiteEulerFactorOf w p K)).symm
    _ = ∏ p : {p : Nat // p ∈ S},
          ∑ k : Fin (K + 1), w (p.val ^ (k : Nat)) := by
          refine Finset.prod_congr rfl ?_
          intro p _hp
          exact finiteEulerFactorOf_eq_fin_sum w p.val K
    _ = ∑ e : ExponentVector S K,
          ∏ p : {p : Nat // p ∈ S}, w (p.val ^ (e p).val) := by
          simpa using
            finite_product_sum_expansion_subtype S K
              (fun p k => w (p.val ^ (k : Nat)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc4fe772cf350b921139575e4553f55be892a34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
