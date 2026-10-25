# log_centralBinomial_le_n_log_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:387c6ebc-7b08-9766-d991-51ef8587d31a",
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
  "slug": "log-centralbinomial-le-n-log-four--5ec25bca93a72d28414d6a9e",
  "source": {
    "blob": "ca75aedcd681a91e9e65b032c89d25d5bc9b68e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ec25bca93a72d28414d6a9e1d36df5135ceb5cb91538a6d954204bdee9bcb2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:387c6ebc-7b08-9766-d991-51ef8587d31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

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

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca75aedcd681a91e9e65b032c89d25d5bc9b68e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
