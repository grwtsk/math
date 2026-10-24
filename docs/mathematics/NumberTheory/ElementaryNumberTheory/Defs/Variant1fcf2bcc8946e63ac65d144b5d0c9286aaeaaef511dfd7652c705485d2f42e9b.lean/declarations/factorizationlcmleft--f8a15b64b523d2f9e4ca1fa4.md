# factorizationLCMLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:325947e82536fa925f3aaff322aee26aa81858a760f70ebf8f107d2f5796eec9",
  "kind": "def",
  "lexical_name": "factorizationLCMLeft",
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
  "slug": "factorizationlcmleft--f8a15b64b523d2f9e4ca1fa4",
  "source": {
    "blob": "8c3ef2c6f5e41de1f6e7c1dc5d3b07785ac496c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 273,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8a15b64b523d2f9e4ca1fa41b1acc125142ee5776bdab8d930b5ada7a3f1626",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:325947e82536fa925f3aaff322aee26aa81858a760f70ebf8f107d2f5796eec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def factorizationLCMLeft (a b : ℕ) : ℕ :=
  (Nat.lcm a b).factorization.prod fun p n ↦
    if b.factorization p ≤ a.factorization p then p ^ n else 1

/-- If `a = ∏ pᵢ ^ nᵢ` and `b = ∏ pᵢ ^ mᵢ`, then `factorizationLCMRight = ∏ pᵢ ^ kᵢ`, where
`kᵢ = mᵢ` if `nᵢ < mᵢ` and `0` otherwise. Note that the product is over the divisors of `lcm a b`,
so if one of `a` or `b` is `0` then the result is `1`.

Note that `factorizationLCMRight a b` is *not* `factorizationLCMLeft b a`: the difference is
that in `factorizationLCMLeft a b` there are the primes whose exponent in `a` is bigger or equal
than the exponent in `b`, while in `factorizationLCMRight a b` there are the primes whose
exponent in `b` is strictly bigger than in `a`. For example `factorizationLCMLeft 2 2 = 2`, but
`factorizationLCMRight 2 2 = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c3ef2c6f5e41de1f6e7c1dc5d3b07785ac496c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
