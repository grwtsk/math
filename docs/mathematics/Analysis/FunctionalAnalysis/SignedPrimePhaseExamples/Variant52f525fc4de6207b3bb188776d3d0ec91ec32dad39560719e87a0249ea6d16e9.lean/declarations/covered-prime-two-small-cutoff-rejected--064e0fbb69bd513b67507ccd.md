# covered_prime_two_small_cutoff_rejected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e84231e22c0e7205914efac694eeaa6028002f0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/Analysis/Fourier/SignedPrimePhaseExamples.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb0fe397-e125-2192-1b2d-9fbdbb65db93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e84231e22c0e7205914efac694eeaa6028002f0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/Fourier/SignedPrimePhaseExamples.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15ebe718-220f-d53b-577e-de67a046e2e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f450d26a-b7b1-bb88-58ed-e16a2f43a915",
  "kind": "theorem",
  "lexical_name": "covered_prime_two_small_cutoff_rejected",
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
  "slug": "covered-prime-two-small-cutoff-rejected--064e0fbb69bd513b67507ccd",
  "source": {
    "blob": "e84231e22c0e7205914efac694eeaa6028002f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:064e0fbb69bd513b67507ccd130bb90b17f54d1eb55dd691f28153b0104ddf4c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f450d26a-b7b1-bb88-58ed-e16a2f43a915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covered_prime_two_small_cutoff_rejected
    {J : ℕ} {blocks : Fin J → Finset ℕ} {η : ℝ}
    (hcover : ∃ j, 2 ∈ blocks j) (hη : η < 1 / 2) :
    ¬ (∀ j, PPNCP04.Obstruction.harmonicMass (blocks j) ≤ η) := by
  rintro hall
  obtain ⟨j, hj⟩ := hcover
  exact prime_two_small_cutoff_rejected hj hη (hall j)

/-- Complete ordered finite Gram expansion.  The fixture below keeps
every signed coefficient and every ordered pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e84231e22c0e7205914efac694eeaa6028002f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
