# factorMultiset_ofPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a1934f1-e33c-1f86-eaeb-b03643fb216f",
  "kind": "theorem",
  "lexical_name": "factorMultiset_ofPrime",
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
  "slug": "factormultiset-ofprime--18d8f5c19a36370c9074256b",
  "source": {
    "blob": "65f041697c9c6bbcc7c8a8a4c241f7040be6d11b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 322,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18d8f5c19a36370c9074256b37f88fce48e11304eb651a73a624448edca66766",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a1934f1-e33c-1f86-eaeb-b03643fb216f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorMultiset_ofPrime (p : Nat.Primes) :
    (p : ℕ+).factorMultiset = PrimeMultiset.ofPrime p := by
  apply factorMultisetEquiv.symm.injective
  change (p : ℕ+).factorMultiset.prod = (PrimeMultiset.ofPrime p).prod
  rw [(p : ℕ+).prod_factorMultiset, PrimeMultiset.prod_ofPrime]
#align pnat.factor_multiset_of_prime PNat.factorMultiset_ofPrime

/-- We now have four different results that all encode the
 idea that inequality of multisets corresponds to divisibility
 of positive integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f041697c9c6bbcc7c8a8a4c241f7040be6d11b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
