# bertrandWaveCapacity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee4fc640cae6354d7ed1d0eac30ccb85b253a308b94399973b0cb60a99388f94",
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
  "slug": "bertrandwavecapacity--29086e250e2d6fe3c6c8d3a0",
  "source": {
    "blob": "91177893dd34f76df0d29dad6fa7c684760e2ab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 241,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29086e250e2d6fe3c6c8d3a0309fd52b60771229d3370be5141911ca5988d6e4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee4fc640cae6354d7ed1d0eac30ccb85b253a308b94399973b0cb60a99388f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–264.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91177893dd34f76df0d29dad6fa7c684760e2ab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
