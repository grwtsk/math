# CertifiedPrimeExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4ff9a21687120f8e3a07c11c7eba5250f3f9b2115845ffea8016f2548e3ff29",
  "kind": "structure",
  "lexical_name": "CertifiedPrimeExtension",
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
  "slug": "certifiedprimeextension--e770858f0e0b709c55162f28",
  "source": {
    "blob": "ac2970a0ef04c2c0bc7ab8b9ff3422cef3fa3696",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e770858f0e0b709c55162f282079392401fb69ab46efed012ce8fa040e703325",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4ff9a21687120f8e3a07c11c7eba5250f3f9b2115845ffea8016f2548e3ff29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedPrimeExtension
    (source target : FinitePrimeState) where
  newPrime : CertifiedPrime
  newPrime_not_mem :
    newPrime.value ∉ source.primes
  target_primes :
    target.primes = insert newPrime.value source.primes
  oldFibersPreserved :
    ∀ prime (membership : prime ∈ source.primes),
      target.fiberAt prime
          (target_primes ▸ Finset.mem_insert_of_mem membership) =
        source.fiberAt prime membership
  newFiber : CertifiedPrimeLocalFiber newPrime.value
  newFiber_prime_bound :
    newFiber.prime = newPrime
  newFiber_agrees :
    target.fiberAt newPrime.value
        (target_primes ▸ Finset.mem_insert_self
          newPrime.value source.primes) =
      newFiber
  globalObjectPreserved :
    target.globalObject = source.globalObject
  extensionCertificate : ObjectAddress

namespace CertifiedPrimeExtension

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac2970a0ef04c2c0bc7ab8b9ff3422cef3fa3696` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
