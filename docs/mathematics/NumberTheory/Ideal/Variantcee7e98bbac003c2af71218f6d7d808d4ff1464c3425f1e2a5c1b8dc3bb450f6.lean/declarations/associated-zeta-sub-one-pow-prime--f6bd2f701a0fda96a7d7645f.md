# associated_zeta_sub_one_pow_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01105ad8-2012-a14e-6268-34bd741f2207",
  "kind": "theorem",
  "lexical_name": "associated_zeta_sub_one_pow_prime",
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
  "slug": "associated-zeta-sub-one-pow-prime--f6bd2f701a0fda96a7d7645f",
  "source": {
    "blob": "1a7f19b849fdbfd6c34175328163d2742bd6a5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 217,
    "path": "GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6bd2f701a0fda96a7d7645f1084035ec0efe9e96f1d213e217bb3dc712e9d53",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01105ad8-2012-a14e-6268-34bd741f2207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_zeta_sub_one_pow_prime :
    Associated ((hζ.toInteger - 1) ^ (p - 1)) (p : 𝓞 K) := by
  rw [← eval_one_cyclotomic_prime (R := 𝓞 K) (p := p),
    cyclotomic_eq_prod_X_sub_primitiveRoots hζ.toInteger_isPrimitiveRoot, eval_prod]
  simp only [eval_sub, eval_X, eval_C]
  rw [← Nat.totient_prime hp.out, ← hζ.toInteger_isPrimitiveRoot.card_primitiveRoots,
    ← Finset.prod_const]
  refine Associated.prod _ _ _ fun η hη ↦ ?_
  have hη' : IsPrimitiveRoot (η : K) p :=
    (isPrimitiveRoot_of_mem_primitiveRoots hη).map_of_injective RingOfIntegers.coe_injective
  simpa using (associated_sub_one_of_isPrimitiveRoot p hζ hη').neg_right

/-- If `ζ - 1` does not divide `x`, then `p` and `x` are coprime, where `ζ` is a primitive `p`-th
root of unity and `p` is prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a7f19b849fdbfd6c34175328163d2742bd6a5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
