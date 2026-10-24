# finite_euler_product_expands_as_sum_over_exponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e217739e-d858-a965-4c61-37938307e041",
  "kind": "theorem",
  "lexical_name": "finite_euler_product_expands_as_sum_over_exponents",
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
  "slug": "finite-euler-product-expands-as-sum-over-exponents--e8cc4a6148e3a54bf4ebdeee",
  "source": {
    "blob": "a2f346d6acb9694953f8252cb72946e85cb2e438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8cc4a6148e3a54bf4ebdeee736c4089c3732648e1d496563633a622530746ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e217739e-d858-a965-4c61-37938307e041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_euler_product_expands_as_sum_over_exponents
    [CommSemiring R]
    (S : Finset Nat)
    (hS : ∀ p ∈ S, Nat.Prime p)
    (N : Nat → Nat)
    (x : Nat → R)
    (_hmul : ∀ a b, Nat.Coprime a b → x (a * b) = x a * x b) :
    finiteEulerProduct S N x =
      ∑ e ∈ exponentVectors S N,
        ∏ p ∈ S.attach, x ((p : Nat) ^ e p p.property) := by
  have _hS_checked := hS
  unfold finiteEulerProduct finiteEulerFactor exponentVectors
  simpa using
    (Finset.prod_sum S
      (fun p => Finset.range (N p + 1))
      (fun p k => x (p ^ k)))

end NumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2f346d6acb9694953f8252cb72946e85cb2e438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
