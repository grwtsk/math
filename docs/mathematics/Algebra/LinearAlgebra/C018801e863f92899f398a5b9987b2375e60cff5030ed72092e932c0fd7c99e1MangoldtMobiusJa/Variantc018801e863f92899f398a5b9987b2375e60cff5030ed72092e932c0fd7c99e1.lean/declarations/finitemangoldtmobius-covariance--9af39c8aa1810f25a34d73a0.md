# finiteMangoldtMobius_covariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f01a4b55d6db58d88e5439912839c3a06070537",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ae8e524-efc6-f75e-921d-5a147a71b253",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d773bc4-01df-8d1e-61f4-719b5adc008d",
  "kind": "theorem",
  "lexical_name": "finiteMangoldtMobius_covariance",
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
  "slug": "finitemangoldtmobius-covariance--9af39c8aa1810f25a34d73a0",
  "source": {
    "blob": "6f01a4b55d6db58d88e5439912839c3a06070537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9af39c8aa1810f25a34d73a010b92577c22aa2eaf5e1c528617a5db896941995",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d773bc4-01df-8d1e-61f4-719b5adc008d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteMangoldtMobius_covariance (P : Finset (ℕ × ℕ))
    (beta : ℕ → ℝ) (w : ℕ × ℕ → ℝ) :
    jointVector (fun q : P => ArithmeticFunction.vonMangoldt q.val.1)
        (fun q : P => beta q.val.2) ⬝ᵥ
      signedDilation (pairKernel (fun q : P => w q.val)) *ᵥ
        jointVector (fun q : P => ArithmeticFunction.vonMangoldt q.val.1)
          (fun q : P => beta q.val.2) =
      2 * ∑ q ∈ P, ArithmeticFunction.vonMangoldt q.1 * beta q.2 * w q := by
  rw [pairKernel_covariance]
  congr 1
  exact Finset.sum_coe_sort P
    (fun q => ArithmeticFunction.vonMangoldt q.1 * beta q.2 * w q)

/-- Each source divisor atom occurs once, with the original finite cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f01a4b55d6db58d88e5439912839c3a06070537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
