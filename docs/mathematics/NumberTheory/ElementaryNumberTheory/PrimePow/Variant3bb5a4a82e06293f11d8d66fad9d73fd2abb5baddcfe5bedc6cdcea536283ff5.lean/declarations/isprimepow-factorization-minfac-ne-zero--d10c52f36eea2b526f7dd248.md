# IsPrimePow.factorization_minFac_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0852f559-5389-e03e-6e38-1a235f490559",
  "kind": "lemma",
  "lexical_name": "IsPrimePow.factorization_minFac_ne_zero",
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
  "slug": "isprimepow-factorization-minfac-ne-zero--d10c52f36eea2b526f7dd248",
  "source": {
    "blob": "cba15267ae805b5efee25b2e26e50ef96b99106b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 158,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d10c52f36eea2b526f7dd2480a8b40819edbe6e0b10c03b3ae7f6ed372f10a5b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0852f559-5389-e03e-6e38-1a235f490559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPrimePow.factorization_minFac_ne_zero {n : ℕ} (hn : IsPrimePow n) :
    n.factorization n.minFac ≠ 0 := by
  refine mt (Nat.factorization_eq_zero_iff _ _).mp ?_
  push_neg
  exact ⟨n.minFac_prime hn.ne_one, n.minFac_dvd, hn.ne_zero⟩

/-- The canonical equivalence between pairs `(p, k)` with `p` a prime and `k : ℕ`
and the set of prime powers given by `(p, k) ↦ p^(k+1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cba15267ae805b5efee25b2e26e50ef96b99106b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
