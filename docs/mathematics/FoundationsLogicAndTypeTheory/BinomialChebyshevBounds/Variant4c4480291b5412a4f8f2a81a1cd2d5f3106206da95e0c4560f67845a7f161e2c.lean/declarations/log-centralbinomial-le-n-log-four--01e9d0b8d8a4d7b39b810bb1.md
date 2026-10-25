# log_centralBinomial_le_n_log_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "533cbf45713f409b40133f5b92029b92719b37a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:710331e2-1875-20c0-1f94-8df35aefc4a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b87f962a-72d6-e820-9a2e-05b65de18693",
  "kind": "theorem",
  "lexical_name": "log_centralBinomial_le_n_log_four",
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
  "slug": "log-centralbinomial-le-n-log-four--01e9d0b8d8a4d7b39b810bb1",
  "source": {
    "blob": "533cbf45713f409b40133f5b92029b92719b37a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01e9d0b8d8a4d7b39b810bb14c3b81a983a3710b4c93903bd9fd0099c76b0137",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b87f962a-72d6-e820-9a2e-05b65de18693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_centralBinomial_le_n_log_four
    (n : Nat) :
    Real.log (centralBinomial n) ≤ (n : Real) * Real.log 4 := by
  have hpos : 0 < (centralBinomial n : Real) := by
    exact_mod_cast centralBinomial_pos n
  have hle : (centralBinomial n : Real) ≤ ((4 ^ n : Nat) : Real) := by
    exact_mod_cast centralBinomial_le_four_pow n
  calc
    Real.log (centralBinomial n)
        ≤ Real.log ((4 ^ n : Nat) : Real) :=
          Real.log_le_log hpos hle
    _ = (n : Real) * Real.log 4 := by
          rw [show ((4 ^ n : Nat) : Real) = (4 : Real) ^ n by norm_num]
          rw [Real.log_pow]

/-- Theorem target: the classical central-binomial Chebyshev theta step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533cbf45713f409b40133f5b92029b92719b37a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
