# bad_tmf_prime_is_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1e88d5c-f42d-92c0-c90f-62c89ad2cf18",
  "kind": "theorem",
  "lexical_name": "bad_tmf_prime_is_finite",
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
  "slug": "bad-tmf-prime-is-finite--0ea24d914e4e647b8ad43098",
  "source": {
    "blob": "b516b9219358652322e00a81e74224b311868a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTaggedPlacePredicates/Variant7b4cabd75540e55a/PrimeAndTwoOrThreePredicates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ea24d914e4e647b8ad430986ae78df39471b5eab48b6cdd4e5269fad3c12a70",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeTaggedPlacePredicates/Variant7b4cabd75540e55a/PrimeAndTwoOrThreePredicates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e88d5c-f42d-92c0-c90f-62c89ad2cf18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bad_tmf_prime_is_finite
    {v : Place}
    (h : IsBadTMFPrime v) :
    ∃ p, v = Place.finite p := by
  rcases h with h2 | h3
  · exact ⟨2, h2⟩
  · exact ⟨3, h3⟩


end GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeTaggedPlacePredicates.Variant7b4cabd75540e55a
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeTaggedPlacePredicates/Variant7b4cabd75540e55a/PrimeAndTwoOrThreePredicates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTaggedPlacePredicates/Variant7b4cabd75540e55a/PrimeAndTwoOrThreePredicates.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b516b9219358652322e00a81e74224b311868a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
