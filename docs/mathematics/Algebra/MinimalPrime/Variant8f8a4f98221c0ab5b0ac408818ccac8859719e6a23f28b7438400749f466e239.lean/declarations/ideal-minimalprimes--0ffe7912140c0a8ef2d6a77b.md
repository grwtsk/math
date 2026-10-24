# Ideal.minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f576c033a3364ecf7dcf70d878de417b1462cf35a849ed752cb3ed0af96cdb4e",
  "kind": "def",
  "lexical_name": "Ideal.minimalPrimes",
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
  "slug": "ideal-minimalprimes--0ffe7912140c0a8ef2d6a77b",
  "source": {
    "blob": "abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 38,
    "path": "GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ffe7912140c0a8ef2d6a77b024e49df274481c37537ab2e00a99fd49713aa17",
  "verification": {
    "reference": "docs/verification/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f576c033a3364ecf7dcf70d878de417b1462cf35a849ed752cb3ed0af96cdb4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Ideal.minimalPrimes : Set (Ideal R) :=
  minimals (· ≤ ·) { p | p.IsPrime ∧ I ≤ p }
#align ideal.minimal_primes Ideal.minimalPrimes

/-- `minimalPrimes R` is the set of minimal primes of `R`.
This is defined as `Ideal.minimalPrimes ⊥`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
