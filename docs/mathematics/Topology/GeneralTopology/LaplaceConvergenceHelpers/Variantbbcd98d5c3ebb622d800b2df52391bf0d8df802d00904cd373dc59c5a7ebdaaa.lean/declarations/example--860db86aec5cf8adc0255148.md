# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13e23d11d127c4092a741c23d70ceabeededa3377f5e521de2b9e9ab9a03630b",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--860db86aec5cf8adc0255148",
  "source": {
    "blob": "abf133fe66c5b06cf5f07d13868484f029f91cf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/LaplaceConvergenceHelpers/Variantbbcd98d5c3ebb622d800b2df52391bf0d8df802d00904cd373dc59c5a7ebdaaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:860db86aec5cf8adc0255148fce38e58a4763c9b824256ada06ffb76f56fdc65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaplaceConvergenceHelpers/Variantbbcd98d5c3ebb622d800b2df52391bf0d8df802d00904cd373dc59c5a7ebdaaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13e23d11d127c4092a741c23d70ceabeededa3377f5e521de2b9e9ab9a03630b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {ι : Type*} (f : ι → ℂ → ℂ) (K : Set ℂ) (hK : IsCompact K)
    (hf : ∀ i, ContinuousOn (f i) K) (hKne : K.Nonempty) :
    ∀ i, 0 ≤ sSup ((fun s ↦ ‖f i s‖) '' K) := by
  intro i
  obtain ⟨s, hs⟩ := hKne
  exact (norm_nonneg _).trans (le_csSup (hK.bddAbove_image (hf i).norm)
    (mem_image_of_mem _ hs))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaplaceConvergenceHelpers/Variantbbcd98d5c3ebb622d800b2df52391bf0d8df802d00904cd373dc59c5a7ebdaaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaplaceConvergenceHelpers/Variantbbcd98d5c3ebb622d800b2df52391bf0d8df802d00904cd373dc59c5a7ebdaaa.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abf133fe66c5b06cf5f07d13868484f029f91cf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
