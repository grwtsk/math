# bertrandWaveCapacity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac05a91fb0a3262aaaa1a1f818d01ff7c83b47e509c54bd81192999efa7f367c",
  "kind": "def",
  "lexical_name": "bertrandWaveCapacity",
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
  "slug": "bertrandwavecapacity--5faf2e3b15bfdf1fb979da3b",
  "source": {
    "blob": "fc30e53c42cc042bfba2a9c2f8e19cda7ca7ca31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5faf2e3b15bfdf1fb979da3b3c7c51d35459d11668545f4c4892a7346bf3e49e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac05a91fb0a3262aaaa1a1f818d01ff7c83b47e509c54bd81192999efa7f367c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def bertrandWaveCapacity
    (waveSize previousPrime : Nat) : BertrandWaveCapacity := by
  let threshold := max 2 (max waveSize previousPrime)
  have thresholdLarge : 1 < threshold := by
    simp [threshold]
  let selectedPrime := leastBertrandPrime threshold thresholdLarge
  have specification := leastBertrandPrime_spec threshold thresholdLarge
  exact {
    waveSize := waveSize
    previousPrime := previousPrime
    threshold := threshold
    thresholdExact := rfl
    selectedPrime := selectedPrime
    selectionMethod := .leastCertifiedPrimeWave
    prime := specification.1
    lower := specification.2.1
    upper := specification.2.2
    rootCapacity := by
      have waveBelow : waveSize ≤ threshold := by
        simp [threshold]
      omega
  }

/-- A wave selection contains readiness as evidence; a root cannot manufacture it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc30e53c42cc042bfba2a9c2f8e19cda7ca7ca31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
